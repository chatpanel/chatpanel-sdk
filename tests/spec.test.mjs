// The contract's invariants, as a test — so `npm test` fails on a bad spec even where the
// lint script is not wired in.
import { test } from 'node:test';
import assert from 'node:assert/strict';
import { spawnSync } from 'node:child_process';
import { join } from 'node:path';
import { loadSpec, listOperations, compareVersions } from '../tools/spec.mjs';

const ROOT = new URL('..', import.meta.url).pathname;

test('the spec lints', () => {
  const r = spawnSync(process.execPath, [join(ROOT, 'tools', 'lint-spec.mjs')], { encoding: 'utf8' });
  assert.equal(r.status, 0, r.stderr);
});

test('every operation the SDKs are built on is present and well-formed', () => {
  const ops = listOperations(loadSpec());
  const ids = ops.map((o) => o.operationId);
  for (const must of ['gateway.health', 'gateway.whoami', 'gateway.pair', 'models.list', 'chat.completions', 'redaction.preview', 'history.search', 'history.smartSearch', 'history.get', 'history.records', 'history.stream', 'memory.recall', 'memory.remember', 'prefs.get', 'teams.listRuns', 'teams.runEvents', 'projects.list', 'skills.list']) {
    assert.ok(ids.includes(must), `${must} missing`);
  }
  // Writes that change what every client sees are token-gated; reads are open.
  for (const id of ['memory.remember', 'memory.forget', 'memory.sync', 'history.ingest', 'history.putRecords', 'gateway.pairCode', 'gateway.audit']) {
    assert.equal(ops.find((o) => o.operationId === id).auth, 'token', `${id} must be token-gated`);
  }
  for (const id of ['history.search', 'memory.recall', 'chat.completions', 'gateway.pair']) {
    assert.equal(ops.find((o) => o.operationId === id).auth, 'open', `${id} must be open`);
  }
  // Timestamps are 64-bit everywhere — the Go client overflowed int32 on a real record date.
  const text = JSON.stringify(loadSpec());
  for (const m of text.matchAll(/"(date|newest|since|before|at|createdAt|updatedAt|expiresAt|startedAt|bytes)":\{"type":"integer"(,"format":"(\w+)")?/g)) {
    assert.equal(m[3], 'int64', `${m[1]} must be format: int64`);
  }
});

test('the generated cores are current', () => {
  const r = spawnSync(process.execPath, [join(ROOT, 'tools', 'gen-core.mjs'), '--check'], { encoding: 'utf8' });
  assert.equal(r.status, 0, r.stderr);
});

test('compareVersions', () => {
  assert.ok(compareVersions('0.10.0', '0.9.4') > 0);
  assert.ok(compareVersions('0.6.62', '0.11.0') < 0);
  assert.equal(compareVersions('1.0.0', '1.0.0'), 0);
});
