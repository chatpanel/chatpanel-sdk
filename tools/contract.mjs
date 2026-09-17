#!/usr/bin/env node
// The drift guard between this contract and the code that serves it.
//
// The gateway ships continuously and the SDKs are generated from THIS file, so the failure
// mode to design against is a route added to server.js that never reaches the spec — every
// SDK is then quietly one feature behind. Run with the sibling repos checked out (the hub's
// layout: ../chatpanel-gateway, ../chatpanel-cli); skipped, not failed, when they are absent.
//
//   gateway → spec   every `pathname === '/…'` and regex route in server.js is either in the
//                    spec or on the ALLOWLIST below (admin/destructive routes kept out on purpose)
//   cli → spec       every route the CLI's gateway-client calls is in the spec (the CLI is the
//                    reference client; if it needs a route, an SDK user will)
//   spec → gateway   every spec path is served by server.js (a spec ahead of the gateway is a
//                    typo, or a route that was renamed)
import { existsSync, readFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { loadSpec, listOperations } from './spec.mjs';

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..');
const GATEWAY = process.env.CHATPANEL_GATEWAY_REPO || join(ROOT, '..', 'chatpanel-gateway');
const CLI = process.env.CHATPANEL_CLI_REPO || join(ROOT, '..', 'chatpanel-cli');

// Served by the gateway, deliberately NOT in the SDK contract. Each line says why.
const NOT_IN_SDK = {
  '/admin/token': 'the extension\'s Origin→token handshake; an SDK holds the token already',
  '/config': 'rewrites the gateway\'s routing/redaction config — admin UI, not an app',
  '/logs': 'in-memory request traces — admin UI',
  '/update': 'installs software',
  '/status': 'the extension\'s Gateway tab; /health carries what an app needs',
  '/v1/history/clear': 'destructive — wipes the user\'s index',
  '/v1/history/key': 'the backup passphrase handoff',
  '/v1/history/ingest-backup': 'admin: re-ingest the encrypted archives',
  '/v1/memory/clear': 'destructive — wipes every memory',
  '/v1/observability': 'the MCP process reports here; admin-gated',
  '/v1/observability/access': 'same',
  '/ner': 'the detector\'s own health/POST — internal to redaction',
  '/ner/models': 'model manager — the extension\'s settings',
  '/stt/models': 'model manager',
  '/stt/sessions': 'dictation: audio in, SSE out — a later, dedicated SDK surface',
  '/diarize/model': 'model manager',
  '/tts': 'read-aloud — a later surface with /v1/audio/speech',
  '/tts/models': 'model manager',
  '/tts/voices': 'voice cloning — a later surface',
  '/v1/audio/speech': 'read-aloud — a later surface',
  '/v1/engines/{engineKey}/card|entries': 'covered as two spec paths',
};

const spec = loadSpec();
const specPaths = new Set(listOperations(spec).map((o) => o.path));
// A spec path with `{x}` → a matcher for the concrete paths the gateway's comments/regexes name.
const specMatches = (p) => [...specPaths].some((sp) => new RegExp(`^${sp.replace(/\{[^}]+\}/g, '[^/]+')}$`).test(p));

let problems = 0;
const bad = (m) => { problems++; console.error(`  ✗ ${m}`); };

if (!existsSync(join(GATEWAY, 'src', 'server.js'))) {
  console.log(`contract: gateway repo not found at ${GATEWAY} — skipping gateway checks`);
} else {
  const src = readFileSync(join(GATEWAY, 'src', 'server.js'), 'utf8');
  // The model endpoints are served by the proxy's adapters (src/adapters), not by a literal
  // route in server.js: `route()` picks the adapter whose `matches(pathname)` says yes.
  const adapters = ['openai.js', 'anthropic.js', 'responses.js'].map((f) => join(GATEWAY, 'src', 'adapters', f)).filter(existsSync).map((f) => readFileSync(f, 'utf8')).join('\n');
  const PROXIED = ['/v1/chat/completions'].filter((p) => adapters.includes(p.replace('/v1', '')) || src.includes(p));
  // Literal routes.
  const literal = new Set([...src.matchAll(/pathname === '(\/[^']*)'/g)].map((m) => m[1]));
  // Regex routes, normalised to the spec's template form.
  const regexRoutes = [
    ['/v1/teams/runs/{runId}', /\/v1\\\/teams\\\/runs\\\/\(\[a-zA-Z0-9_-\]/.test(src)],
    ['/v1/projects/{projectId}', /\/v1\\\/projects\\\/\(\[a-zA-Z0-9_-\]/.test(src)],
    ['/v1/agents/{agentId}/scorecard', /\/v1\\\/agents\\\/\(.*\)\\\/scorecard/.test(src)],
    ['/v1/engines/{engineKey}/card', /\/v1\\\/engines\\\/\(\.\+\)\\\/\(card\|entries\)/.test(src)],
    ['/v1/engines/{engineKey}/entries', /\/v1\\\/engines\\\/\(\.\+\)\\\/\(card\|entries\)/.test(src)],
    ['/skills/{skillId}', /\^\\\/skills\\\/\[\^\/\]\+\$/.test(src)],
    ['/stt/sessions/{id}', /stt\\\/sessions\\\//.test(src)],
  ];
  console.log(`contract: gateway ${GATEWAY} — ${literal.size} literal routes, ${regexRoutes.filter(([, on]) => on).length} regex families`);
  for (const p of literal) {
    if (specPaths.has(p)) continue;
    if (p in NOT_IN_SDK) continue;
    bad(`gateway serves ${p} but the spec does not have it (add it, or list it in NOT_IN_SDK with a reason)`);
  }
  for (const [tpl, on] of regexRoutes) {
    if (!on) bad(`expected the gateway to still serve the ${tpl} family — the regex in server.js changed; update contract.mjs`);
    else if (!specPaths.has(tpl) && !tpl.startsWith('/stt/')) bad(`gateway serves ${tpl} but the spec does not`);
  }
  for (const sp of specPaths) {
    const concrete = sp.replace(/\{[^}]+\}.*/, '');
    const served = literal.has(sp) || PROXIED.includes(sp) || regexRoutes.some(([tpl]) => sp.startsWith(tpl)) || (sp === '/v1/models' && /\\\/models\$\//.test(src)) || literal.has(concrete);
    if (!served) bad(`spec has ${sp} but server.js does not serve it`);
  }
  // The version the spec claims must not be ahead of the gateway's own.
  const v = /VERSION = '([^']+)'/.exec(src)?.[1];
  if (v && cmp(spec.info.version, v) > 0) bad(`spec info.version ${spec.info.version} is ahead of the gateway's VERSION ${v}`);
}

if (!existsSync(join(CLI, 'src', 'core', 'gateway-client.js'))) {
  console.log(`contract: cli repo not found at ${CLI} — skipping cli checks`);
} else {
  const src = readFileSync(join(CLI, 'src', 'core', 'gateway-client.js'), 'utf8');
  // `call('/v1/prefs')`, `call(\`/skills/${seg}\`)`, `call(\`/v1/history/get?id=…\`)` → the path template.
  const calls = new Set([...src.matchAll(/call\(\s*(?:'([^']+)'|`([^`]+)`)/g)].map((m) => (m[1] || m[2]).split('?')[0].replace(/\$\{[^}]+\}/g, '{x}')));
  console.log(`contract: cli ${CLI} — ${calls.size} gateway routes called`);
  for (const p of calls) {
    const concrete = p.replace(/\{x\}/g, 'abcd');
    if (specMatches(concrete) || p in NOT_IN_SDK || concrete in NOT_IN_SDK) continue;
    bad(`the CLI calls ${p} but the spec does not have it`);
  }
}

function cmp(a, b) {
  const pa = a.split('.').map(Number); const pb = b.split('.').map(Number);
  for (let i = 0; i < 3; i++) if ((pa[i] || 0) !== (pb[i] || 0)) return (pa[i] || 0) - (pb[i] || 0);
  return 0;
}

if (problems) { console.error(`contract: ${problems} problem(s)`); process.exit(1); }
console.log('contract: ok — the spec, the gateway and the CLI agree');
