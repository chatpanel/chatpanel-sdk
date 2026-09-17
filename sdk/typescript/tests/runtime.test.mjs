import { test } from 'node:test';
import assert from 'node:assert/strict';
import { inspect } from 'node:util';
import { ChatPanel, ForbiddenError, GatewayTooOldError, GatewayUnreachableError, InvalidRequestError, NotFoundError, ChatPanelError, OPERATIONS } from '../dist/index.js';
import { scripted, json, sse } from './scripted-gateway.mjs';

test('refuses a non-loopback base URL unless allowRemote + https', () => {
  assert.throws(() => new ChatPanel({ baseUrl: 'http://gateway.example.com:4320' }), InvalidRequestError);
  assert.throws(() => new ChatPanel({ baseUrl: 'http://gateway.example.com:4320', allowRemote: true }), /must be https/);
  assert.throws(() => new ChatPanel({ baseUrl: 'http://user:pw@127.0.0.1:4320' }), /credentials/);
  assert.throws(() => new ChatPanel({ baseUrl: 'ftp://127.0.0.1' }), /http or https/);
  assert.equal(new ChatPanel({ baseUrl: 'https://tunnel.example.com', allowRemote: true }).runtime.baseUrl, 'https://tunnel.example.com');
  assert.equal(new ChatPanel({ baseUrl: 'http://localhost:4320/' }).runtime.baseUrl, 'http://localhost:4320');
  assert.equal(new ChatPanel().runtime.baseUrl, 'http://127.0.0.1:4320');
});

test('a token-gated call with no token fails locally, before any request', async () => {
  const gw = await scripted();
  try {
    const cp = new ChatPanel({ baseUrl: gw.url });
    await assert.rejects(cp.memory.remember({ text: 'x' }), (e) => e instanceof ForbiddenError && /chatpanel-gateway pair/.test(e.message));
    assert.equal(gw.calls.filter((c) => c.path !== '/health').length, 0, 'nothing was sent');
  } finally { await gw.close(); }
});

test('the token travels as a bearer header and is never printed', async () => {
  const gw = await scripted({ 'POST /v1/memory/remember': json(200, { ok: true, action: 'added', record: { id: 'm1', text: 'x' } }) });
  try {
    const cp = new ChatPanel({ baseUrl: gw.url, token: () => 'sekrit-token-value' });
    const out = await cp.memory.remember({ text: 'x', source: { via: 'sdk' } });
    assert.equal(out.action, 'added');
    const call = gw.calls.find((c) => c.path === '/v1/memory/remember');
    assert.equal(call.headers.authorization, 'Bearer sekrit-token-value');
    assert.equal(call.body.source.via, 'sdk');
    for (const s of [String(cp.runtime), inspect(cp.runtime), inspect(cp)]) assert.ok(!s.includes('sekrit'), `leaked in ${s.slice(0, 80)}`);
  } finally { await gw.close(); }
});

test('an application cannot override the managed headers, and a header must be one line', async () => {
  const gw = await scripted();
  try {
    const cp = new ChatPanel({ baseUrl: gw.url, token: 't' });
    await assert.rejects(cp.history.search({ query: 'x' }, { headers: { Authorization: 'Bearer other' } }), InvalidRequestError);
    await assert.rejects(cp.chat.completions({ model: 'm', messages: [] }, { headers: { 'X-ChatPanel-Run': 'a\r\nInjected: yes' } }), InvalidRequestError);
  } finally { await gw.close(); }
});

test('path parameters are one encoded segment each; query params are only the declared ones', async () => {
  const gw = await scripted({
    'GET /skills/my%20skill': json(200, { skill: { id: 'my skill' } }),
    'GET /v1/history/list': json(200, { ok: true, total: 0, items: [] }),
  });
  try {
    const cp = new ChatPanel({ baseUrl: gw.url });
    const s = await cp.skills.get('my skill');
    assert.equal(s.skill.id, 'my skill');
    await assert.rejects(cp.skills.get('../etc'), InvalidRequestError);
    await assert.rejects(cp.skills.get(''), InvalidRequestError);
    await assert.rejects(cp.teams.getRun('a/b'), InvalidRequestError);
    await cp.history.list({ limit: 5, type: 'note', smuggled: 'x' }, { query: { offset: 2 } });
    const call = gw.calls.find((c) => c.path === '/v1/history/list');
    assert.deepEqual(call.query, { limit: '5', type: 'note', offset: '2' });
  } finally { await gw.close(); }
});

test('booleans in the query go as 1/0 (the gateway reads `events=1`)', async () => {
  const gw = await scripted({ 'GET /v1/teams/runs/run_1234': json(200, { ok: true, run: { id: 'run_1234' } }) });
  try {
    const cp = new ChatPanel({ baseUrl: gw.url });
    await cp.teams.getRun('run_1234', { events: true });
    assert.equal(gw.calls.find((c) => c.path.startsWith('/v1/teams')).query.events, '1');
  } finally { await gw.close(); }
});

test('the version gate refuses a route the gateway predates, and sends nothing', async () => {
  const gw = await scripted({}, { version: '0.9.4' });
  try {
    const cp = new ChatPanel({ baseUrl: gw.url });
    await assert.rejects(cp.history.records({ limit: 1 }), (e) => e instanceof GatewayTooOldError && e.have === '0.9.4' && e.need === '0.10.0');
    assert.ok(!gw.calls.some((c) => c.path === '/v1/history/records'));
    // one /health per window, then cached
    await assert.rejects(cp.history.records({ limit: 1 }), GatewayTooOldError);
    assert.equal(gw.calls.filter((c) => c.path === '/health').length, 1);
    // an ungated route on the same gateway still goes through
    gw.calls.length = 0;
    const off = new ChatPanel({ baseUrl: gw.url, versionGate: false });
    await assert.rejects(off.history.records({ limit: 1 }), NotFoundError);
    assert.ok(gw.calls.some((c) => c.path === '/v1/history/records'));
  } finally { await gw.close(); }
});

test('errors carry the gateway\'s own words, status and type', async () => {
  const gw = await scripted({
    'GET /v1/history/get': json(404, { error: { message: 'no such record', type: 'not_found' } }),
    'POST /v1/history/search': json(400, { error: { message: 'search failed: boom', type: 'search_error' } }),
    'GET /audit': json(403, { error: 'audit: extension origin or gateway token required' }),
  });
  try {
    const cp = new ChatPanel({ baseUrl: gw.url, token: 'wrong' });
    await assert.rejects(cp.history.get({ id: 'nope' }), (e) => e instanceof NotFoundError && e.message === 'no such record' && e.operation === 'history.get');
    await assert.rejects(cp.history.search({ query: 'x' }), (e) => e instanceof ChatPanelError && e.status === 400 && e.type === 'search_error');
    await assert.rejects(cp.gateway.audit(), (e) => e instanceof ForbiddenError && /gateway token required/.test(e.message));
  } finally { await gw.close(); }
});

test('GET retries a 503 once; a write is never replayed', async () => {
  let gets = 0; let posts = 0;
  const gw = await scripted({
    'GET /v1/memory/list': (req, res) => { gets++; json(gets === 1 ? 503 : 200, gets === 1 ? { error: 'warming up' } : { ok: true, memories: [] })(req, res); },
    'POST /v1/history/search': (req, res) => { posts++; json(503, { error: 'busy' })(req, res); },
  });
  try {
    const cp = new ChatPanel({ baseUrl: gw.url });
    const out = await cp.memory.list();
    assert.deepEqual(out.memories, []);
    assert.equal(gets, 2);
    await assert.rejects(cp.history.search({ query: 'x' }), (e) => e.status === 503);
    assert.equal(posts, 1);
  } finally { await gw.close(); }
});

test('a hung gateway is reported as unreachable within the timeout', async () => {
  const gw = await scripted({ 'GET /v1/memory/list': () => { /* never answers */ } });
  try {
    const cp = new ChatPanel({ baseUrl: gw.url, retries: 0 });
    const t0 = Date.now();
    await assert.rejects(cp.memory.list({ timeoutMs: 150 }), (e) => e instanceof GatewayUnreachableError && /150 ms/.test(e.message));
    assert.ok(Date.now() - t0 < 2000);
    const dead = new ChatPanel({ baseUrl: 'http://127.0.0.1:1', retries: 0 });
    await assert.rejects(dead.memory.list(), GatewayUnreachableError);
  } finally { await gw.close(); }
});

test('a streamed chat turn: frames split across chunks, [DONE] ends it, text() yields only text', async () => {
  const frame = (content) => `data: ${JSON.stringify({ id: 'c', object: 'chat.completion.chunk', choices: [{ index: 0, delta: { content } }] })}\n\n`;
  const usage = `data: ${JSON.stringify({ id: 'c', object: 'chat.completion.chunk', choices: [], usage: { total_tokens: 3 } })}\n\n`;
  const all = frame('Hel') + frame('lo') + usage + 'data: [DONE]\n\n' + frame('never');
  const cut = Math.floor(all.indexOf('lo') + 1); // split INSIDE a frame
  const gw = await scripted({ 'POST /v1/chat/completions': sse([all.slice(0, cut), all.slice(cut)]) });
  try {
    const cp = new ChatPanel({ baseUrl: gw.url });
    const frames = [];
    for await (const f of cp.chat.completionsStream({ model: 'm', messages: [{ role: 'user', content: 'hi' }] })) frames.push(f);
    assert.equal(frames.length, 3);
    assert.equal(frames[2].data.usage.total_tokens, 3);
    assert.equal(gw.calls.at(-1).body.stream, true);
    let text = '';
    for await (const t of cp.chat.text({ model: 'm', messages: [{ role: 'user', content: 'hi' }] })) text += t;
    assert.equal(text, 'Hello');
  } finally { await gw.close(); }
});

test('named SSE events and abort', async () => {
  const gw = await scripted({
    'GET /v1/history/stream': async (req, res) => {
      res.writeHead(200, { 'content-type': 'text/event-stream' });
      res.write(`event: hello\ndata: {"newest":1,"size":2,"version":"0.11.0"}\n\n`);
      res.write(`: keep-alive\n\n`);
      res.write(`event: records\ndata: {"ids":["a"],"at":1}\n\n`);
      await new Promise((r) => req.on('close', r));
    },
  });
  try {
    const cp = new ChatPanel({ baseUrl: gw.url });
    const ctl = new AbortController();
    const seen = [];
    for await (const f of cp.history.stream({ signal: ctl.signal })) {
      seen.push(f);
      if (seen.length === 2) ctl.abort();
    }
    assert.deepEqual(seen.map((f) => f.event), ['hello', 'records']);
    assert.equal(seen[0].data.version, '0.11.0');
  } finally { await gw.close(); }
});

test('pair() exchanges a code and uses the token from then on', async () => {
  const gw = await scripted({
    'POST /pair': json(200, { ok: true, token: 'paired-token' }),
    'POST /whoami': (req, res, call) => json(200, { ok: true, trust: call.headers.authorization ? 'token' : 'local', paired: !!call.headers.authorization, version: '0.11.0' })(req, res),
  });
  try {
    const cp = new ChatPanel({ baseUrl: gw.url });
    assert.equal((await cp.whoami()).trust, 'local');
    const p = await cp.pair(' 123456 ');
    assert.equal(p.token, 'paired-token');
    assert.equal(gw.calls.find((c) => c.path === '/pair').body.code, '123456');
    assert.equal((await cp.whoami()).trust, 'token');
  } finally { await gw.close(); }
});

test('the raw escape hatch reaches any operation in the table', async () => {
  const gw = await scripted({ 'GET /v1/engines': json(200, { ok: true, engines: [] }) });
  try {
    const cp = new ChatPanel({ baseUrl: gw.url });
    const out = await cp.request('engines.list', { query: { minCalls: 3 } });
    assert.deepEqual(out.engines, []);
    assert.equal(gw.calls.at(-1).query.minCalls, '3');
    assert.ok(Object.keys(OPERATIONS).length >= 60);
  } finally { await gw.close(); }
});
