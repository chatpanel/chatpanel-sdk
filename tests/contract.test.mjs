// The drift guard must FAIL when the gateway grows a route the spec lacks — a guard that
// only ever passes is decoration. Runs against a copy of the real server.js with one route
// planted; skipped when the gateway repo is not checked out beside this one.
import { test } from 'node:test';
import assert from 'node:assert/strict';
import { spawnSync } from 'node:child_process';
import { existsSync, mkdirSync, readFileSync, writeFileSync, mkdtempSync } from 'node:fs';
import { join } from 'node:path';
import { tmpdir } from 'node:os';

const ROOT = new URL('..', import.meta.url).pathname;
const GATEWAY = process.env.CHATPANEL_GATEWAY_REPO || join(ROOT, '..', 'chatpanel-gateway');
const guard = (env) => spawnSync(process.execPath, [join(ROOT, 'tools', 'contract.mjs')], { env: { ...process.env, ...env }, encoding: 'utf8' });

test('contract guard passes against the real gateway and CLI', { skip: !existsSync(join(GATEWAY, 'src', 'server.js')) && 'gateway repo not beside this one' }, () => {
  const r = guard({});
  assert.equal(r.status, 0, r.stdout + r.stderr);
  assert.match(r.stdout, /contract: ok/);
});

test('contract guard fails on a gateway route the spec does not have', { skip: !existsSync(join(GATEWAY, 'src', 'server.js')) && 'gateway repo not beside this one' }, () => {
  const fake = mkdtempSync(join(tmpdir(), 'cp-gw-'));
  mkdirSync(join(fake, 'src', 'adapters'), { recursive: true });
  const src = readFileSync(join(GATEWAY, 'src', 'server.js'), 'utf8').replace("pathname === '/health'", "pathname === '/v1/brand-new-thing' && false) {} if (pathname === '/health'");
  writeFileSync(join(fake, 'src', 'server.js'), src);
  for (const f of ['openai.js', 'anthropic.js', 'responses.js']) if (existsSync(join(GATEWAY, 'src', 'adapters', f))) writeFileSync(join(fake, 'src', 'adapters', f), readFileSync(join(GATEWAY, 'src', 'adapters', f)));
  const r = guard({ CHATPANEL_GATEWAY_REPO: fake, CHATPANEL_CLI_REPO: '/nonexistent' });
  assert.equal(r.status, 1);
  assert.match(r.stderr, /gateway serves \/v1\/brand-new-thing but the spec does not have it/);
});

test('contract guard skips cleanly when the sibling repos are absent', () => {
  const r = guard({ CHATPANEL_GATEWAY_REPO: '/nonexistent', CHATPANEL_CLI_REPO: '/nonexistent' });
  assert.equal(r.status, 0);
  assert.match(r.stdout, /skipping gateway checks/);
});
