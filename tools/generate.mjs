#!/usr/bin/env node
// The long-tail languages: one openapi-generator run per entry in generators.json.
//
// Offline and reproducible: the generator is a JAR fetched once by
// @openapitools/openapi-generator-cli (Java 17+ on PATH, or Docker as a fallback); the spec
// never leaves the machine. `--only go,rust` limits the run; `--list` prints the matrix.
import { spawnSync } from 'node:child_process';
import { existsSync, mkdirSync, readFileSync, rmSync, writeFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { relative } from 'node:path';
import { SPEC_PATH } from './spec.mjs';

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..');
const matrix = JSON.parse(readFileSync(join(ROOT, 'generators.json'), 'utf8'));
const args = process.argv.slice(2);
const only = (args[args.indexOf('--only') + 1] || '').split(',').filter(Boolean);
const langs = Object.entries(matrix.languages).filter(([k]) => !only.length || only.includes(k));

if (args.includes('--list')) {
  for (const [k, v] of langs) console.log(`${k.padEnd(8)} ${v.generator.padEnd(10)} generated/${k}`);
  process.exit(0);
}

const cli = join(ROOT, 'node_modules', '@openapitools', 'openapi-generator-cli', 'main.js');
if (!existsSync(cli)) { console.error('run `npm install` first (the generator CLI is a devDependency)'); process.exit(1); }
// Pin the generator version in the CLI's own config so every machine produces the same bytes.
writeFileSync(join(ROOT, 'openapitools.json'), JSON.stringify({ $schema: './node_modules/@openapitools/openapi-generator-cli/config.schema.json', spaces: 2, 'generator-cli': { version: matrix.generatorVersion } }, null, 2));

const props = (o) => Object.entries(o).map(([k, v]) => `${k}=${v}`).join(',');
let failed = 0;
for (const [lang, cfg] of langs) {
  const out = join(ROOT, 'generated', lang);
  console.log(`\n=== ${lang} (${cfg.generator}) → generated/${lang}`);
  rmSync(out, { recursive: true, force: true });
  mkdirSync(out, { recursive: true });
  const r = spawnSync(process.execPath, [
    cli, 'generate',
    // Relative, from the repo root: some generators print the input path into their README,
    // and an absolute path is machine-specific (and names the developer's home directory).
    '-i', relative(ROOT, SPEC_PATH), '-g', cfg.generator, '-o', out,
    '--additional-properties', props(cfg.properties || {}),
    '--git-user-id', 'chatpanel', '--git-repo-id', 'chatpanel-sdk',
    '--skip-validate-spec',
  ], { cwd: ROOT, stdio: ['ignore', 'pipe', 'pipe'], env: { ...process.env, JAVA_OPTS: process.env.JAVA_OPTS || '-Dlog.level=warn' } });
  const stderr = r.stderr.toString();
  const stdout = r.stdout.toString();
  if (r.status !== 0) {
    failed++;
    console.error(`${lang}: generator failed (exit ${r.status})\n${stdout.slice(-1500)}\n${stderr.slice(-1500)}`);
    continue;
  }
  // The generator's own bookkeeping is not part of the deliverable.
  for (const junk of ['.openapi-generator', '.openapi-generator-ignore', '.travis.yml', 'git_push.sh', '.gitlab-ci.yml']) rmSync(join(out, junk), { recursive: true, force: true });
  // Go: the module lives in a subdirectory of the repo, so `go get` must be told the full path.
  if (lang === 'go' && existsSync(join(out, 'go.mod'))) {
    const mod = readFileSync(join(out, 'go.mod'), 'utf8').replace(/^module .*$/m, 'module github.com/chatpanel/chatpanel-sdk/generated/go');
    writeFileSync(join(out, 'go.mod'), mod);
  }
  console.log(`${lang}: ok`);
}
if (failed) { console.error(`\n${failed} generator(s) failed`); process.exit(1); }
console.log('\nall generators ok');
