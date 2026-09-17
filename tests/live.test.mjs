// Read-only checks against a REAL gateway on 127.0.0.1:4320 — the scripted tests prove the
// SDK does what the spec says; this proves the spec says what the gateway does. Skipped when
// no gateway answers (CI), never writes anything, and asks a bridge agent for one word.
import { test } from 'node:test';
import assert from 'node:assert/strict';
import { ChatPanel } from '../sdk/typescript/dist/index.js';

const up = await fetch('http://127.0.0.1:4320/health', { signal: AbortSignal.timeout(1500) }).then((r) => r.ok).catch(() => false);
const skip = !up && 'no gateway on 127.0.0.1:4320';

test('health, whoami, models, history, memory, redaction, prefs, teams, projects, skills, engines', { skip }, async () => {
  const cp = await ChatPanel.fromEnvironment();
  const h = await cp.health(); assert.match(h.version, /^\d+\.\d+\.\d+/);
  const who = await cp.whoami(); assert.ok(['token', 'pinned', 'local', 'unpaired', 'web'].includes(who.trust));
  const models = await cp.models.list(); assert.equal(models.object, 'list'); assert.ok(models.data.length > 0);
  const st = await cp.history.status(); assert.equal(typeof st.size, 'number');
  const page = await cp.history.list({ limit: 1 }); assert.ok(Array.isArray(page.items));
  if (page.items.length) {
    const rec = await cp.history.get({ id: page.items[0].id, maxChars: 10 }); assert.equal(rec.record.id, page.items[0].id);
    const rel = await cp.history.related({ id: page.items[0].id, limit: 1 }); assert.ok(Array.isArray(rel.results));
  }
  const s = await cp.history.smartSearch({ question: 'anything at all', limit: 1 }); assert.ok(Array.isArray(s.queries));
  const mem = await cp.memory.list(); assert.ok(Array.isArray(mem.memories));
  const rc = await cp.memory.recall({ text: 'preferences' }); assert.ok(Array.isArray(rc.memories));
  const red = await cp.redaction.preview({ text: 'write to alex.rivera@example.com' }); assert.doesNotMatch(red.text, /example\.com/); assert.ok(red.count >= 1);
  const prefs = await cp.prefs.get({ stamps: true }); assert.equal(typeof prefs.revision, 'number');
  const runs = await cp.teams.listRuns({ limit: 1 }); assert.ok(Array.isArray(runs.runs));
  const projects = await cp.projects.list({ limit: 1 }); assert.ok(Array.isArray(projects.projects));
  const sk = await cp.skills.list(); assert.ok(Array.isArray(sk.skills));
  const eng = await cp.engines.list(); assert.ok(Array.isArray(eng.engines));
  const sc = await cp.agents.scorecards(); assert.ok(Array.isArray(sc.agents));
  if (st.lossless) {
    const recs = await cp.history.records({ limit: 1 }); assert.ok(Array.isArray(recs.records));
    const ctl = new AbortController();
    for await (const f of cp.history.stream({ signal: ctl.signal })) { assert.equal(f.event, 'hello'); ctl.abort(); }
  }
});

test('a streamed chat turn through a bridge agent', { skip }, async () => {
  const cp = await ChatPanel.fromEnvironment();
  const models = await cp.models.list();
  const agent = models.data.find((m) => m.provider_type === 'agent' && m.available);
  if (!agent) return;
  let text = '';
  for await (const t of cp.chat.text({ model: agent.id, messages: [{ role: 'user', content: 'Reply with the single word: pong' }], max_tokens: 20 }, { timeoutMs: 90_000 })) text += t;
  assert.match(text.toLowerCase(), /pong/);
});
