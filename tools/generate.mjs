#!/usr/bin/env node
// The long-tail languages: one openapi-generator run per entry in generators.json.
//
// Offline and reproducible: the generator is a JAR fetched once by
// @openapitools/openapi-generator-cli (Java 17+ on PATH, or Docker as a fallback); the spec
// never leaves the machine. `--only go,rust` limits the run; `--list` prints the matrix.
import { spawnSync } from 'node:child_process';
import { existsSync, mkdirSync, readFileSync, renameSync, rmSync, writeFileSync } from 'node:fs';
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

/**
 * A JDK, found rather than required.
 *
 * The generator is a JAR, so it needs Java 17+ — and macOS ships a `/usr/bin/java` STUB that
 * exists, answers `which`, and then says "Unable to locate a Java Runtime". So "java is on
 * PATH" is not a usable test, and on a machine with Homebrew's keg-only openjdk the real one
 * is installed and invisible. Nine of nine generators failed here for exactly that reason,
 * for months, on a machine that had a JDK available the whole time.
 *
 * Looked for in the order a person would: JAVA_HOME, then a working PATH java, then the usual
 * install roots. Returns the bin directory to prepend, or '' when there is genuinely none.
 */
function findJdkBin() {
  const works = (bin) => {
    const r = spawnSync(join(bin, 'java'), ['-version'], { stdio: 'ignore' });
    return r.status === 0;
  };
  if (process.env.JAVA_HOME && works(join(process.env.JAVA_HOME, 'bin'))) return join(process.env.JAVA_HOME, 'bin');
  const onPath = spawnSync('java', ['-version'], { stdio: 'ignore' });
  if (onPath.status === 0) return ''; // already usable; do not shadow the person's choice
  for (const root of [
    '/opt/homebrew/opt/openjdk/bin',            // Homebrew arm64, keg-only
    '/usr/local/opt/openjdk/bin',               // Homebrew x86_64, keg-only
    '/Library/Java/JavaVirtualMachines/temurin.jdk/Contents/Home/bin',
    '/usr/lib/jvm/default-java/bin',            // Debian/Ubuntu
  ]) if (existsSync(join(root, 'java')) && works(root)) return root;
  return '';
}

const jdkBin = findJdkBin();
const RUN_ENV = { ...process.env, JAVA_OPTS: process.env.JAVA_OPTS || '-Dlog.level=warn', ...(jdkBin ? { PATH: `${jdkBin}:${process.env.PATH}` } : {}) };
if (jdkBin) console.log(`java: using ${jdkBin} (not on PATH — macOS ships a stub that pretends otherwise)`);

const cli = join(ROOT, 'node_modules', '@openapitools', 'openapi-generator-cli', 'main.js');
if (!existsSync(cli)) { console.error('run `npm install` first (the generator CLI is a devDependency)'); process.exit(1); }
// Pin the generator version in the CLI's own config so every machine produces the same bytes.
writeFileSync(join(ROOT, 'openapitools.json'), JSON.stringify({ $schema: './node_modules/@openapitools/openapi-generator-cli/config.schema.json', spaces: 2, 'generator-cli': { version: matrix.generatorVersion } }, null, 2));

const props = (o) => Object.entries(o).map(([k, v]) => `${k}=${v}`).join(',');
let failed = 0;
for (const [lang, cfg] of langs) {
  const out = join(ROOT, 'generated', lang);
  console.log(`\n=== ${lang} (${cfg.generator}) → generated/${lang}`);
  // Generated INTO A TEMPORARY directory, and the committed one is replaced only once the
  // generator has succeeded. It used to clear `generated/<lang>` first: when the nine
  // generators then failed for want of a JDK, that deleted 3,903 committed files in one
  // command, and the only sign was a very large `git status`.
  const tmp = `${out}.gen-tmp`;
  rmSync(tmp, { recursive: true, force: true });
  mkdirSync(tmp, { recursive: true });
  const r = spawnSync(process.execPath, [
    cli, 'generate',
    // Relative, from the repo root: some generators print the input path into their README,
    // and an absolute path is machine-specific (and names the developer's home directory).
    '-i', relative(ROOT, SPEC_PATH), '-g', cfg.generator, '-o', tmp,
    '--additional-properties', props(cfg.properties || {}),
    '--git-user-id', 'chatpanel', '--git-repo-id', 'chatpanel-sdk',
    '--skip-validate-spec',
  ], { cwd: ROOT, stdio: ['ignore', 'pipe', 'pipe'], env: RUN_ENV });
  const stderr = r.stderr.toString();
  const stdout = r.stdout.toString();
  if (r.status !== 0) {
    failed++;
    rmSync(tmp, { recursive: true, force: true }); // the committed output is untouched
    console.error(`${lang}: generator failed (exit ${r.status})\n${stdout.slice(-1500)}\n${stderr.slice(-1500)}`);
    continue;
  }
  // The generator's own bookkeeping is not part of the deliverable.
  for (const junk of ['.openapi-generator', '.openapi-generator-ignore', '.travis.yml', 'git_push.sh', '.gitlab-ci.yml']) rmSync(join(tmp, junk), { recursive: true, force: true });
  // Go: the module lives in a subdirectory of the repo, so `go get` must be told the full path.
  if (lang === 'go' && existsSync(join(tmp, 'go.mod'))) {
    const mod = readFileSync(join(tmp, 'go.mod'), 'utf8').replace(/^module .*$/m, 'module github.com/chatpanel/chatpanel-sdk/generated/go');
    writeFileSync(join(tmp, 'go.mod'), mod);
  }
  // Swap: the committed tree goes only when there is a complete one to put in its place.
  rmSync(out, { recursive: true, force: true });
  renameSync(tmp, out);
  console.log(`${lang}: ok`);
}
if (failed) { console.error(`\n${failed} generator(s) failed`); process.exit(1); }
console.log('\nall generators ok');
