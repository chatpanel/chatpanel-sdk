#!/usr/bin/env node
// CONFORMANCE — is this server a ChatPanel capability provider?
//
// Black-box, read-only, runs against ANY URL: the gateway, the standalone engine server, an
// org box, a hosted tier, or a third party's implementation (docs/capability-endpoints.md).
// A server that passes is a provider a client may choose by capability and budget; one that
// fails is told exactly which promise it broke. No SDK, no sibling repo, no model on disk —
// only the contract and a fetch.
//
//   node tools/conformance.mjs http://127.0.0.1:4320 [--token …] [--text "…"]
//
// Exit 0 when every check passes, 1 otherwise. A capability the server does not list is not
// tested and not failed — offering nothing is allowed; offering it wrong is not.
import { existsSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath, pathToFileURL } from 'node:url';

// The validators are the contract as code, in @chatpanel/events. Installed → use it; in the
// hub's checkout (../chatpanel-events, like contract.mjs's sibling rule) → use that, so the
// suite runs against a gateway before the events release it needs is on npm.
const sibling = join(dirname(fileURLToPath(import.meta.url)), '..', '..', 'chatpanel-events', 'capability-endpoints.js');
const schemas = await import('@chatpanel/events/capability-endpoints.js').catch(() => (existsSync(sibling) ? import(pathToFileURL(sibling).href) : null));
if (!schemas) { console.error('conformance: needs @chatpanel/events (npm i -D @chatpanel/events) or the sibling checkout ../chatpanel-events'); process.exit(2); }
const { validateCapabilitiesResponse, validateDetectResponse, validateReadResponse, validateSearchResponse, validateRerankRequest, validateRerankResponse, validateDecideRequest, validateDecideResponse, CAPABILITY_ROUTES, OVER_BUDGET } = schemas;

const args = process.argv.slice(2);
const base = (args.find((a) => !a.startsWith('--')) || 'http://127.0.0.1:4320').replace(/\/+$/, '');
const opt = (k, d = null) => { const i = args.indexOf(`--${k}`); return i >= 0 ? args[i + 1] : d; };
const token = opt('token');
const sample = opt('text', 'Hi, I am Jordan Blake. Mail jordan.blake@example.com or call 555-0134.');
const headers = { 'content-type': 'application/json', ...(token ? { authorization: `Bearer ${token}` } : {}) };

let failed = 0;
const ok = (m) => console.log(`  ✓ ${m}`);
const bad = (m) => { failed++; console.log(`  ✗ ${m}`); };
const check = (cond, m) => (cond ? ok(m) : bad(m));
const get = (p) => fetch(base + p, { headers, signal: AbortSignal.timeout(15000) });
const post = (p, body) => fetch(base + p, { method: 'POST', headers, body: JSON.stringify(body), signal: AbortSignal.timeout(120000) });

console.log(`conformance: ${base}`);

// 1. Discovery.
let doc;
try {
  const r = await get('/v1/capabilities');
  check(r.status === 200, `GET /v1/capabilities → ${r.status}`);
  doc = await r.json().catch(() => null);
  validateCapabilitiesResponse(doc);
  ok(`discovery document valid — ${doc.server.name} ${doc.server.version}: ${doc.capabilities.map((c) => c.id).join(', ') || '(nothing offered)'}`);
} catch (e) { bad(`discovery: ${e.message}`); doc = null; }

if (doc) {
  for (const c of doc.capabilities) {
    check(c.route === CAPABILITY_ROUTES[c.id], `${c.id} is at its standard route ${CAPABILITY_ROUTES[c.id]}`);
  }

  // 2. detect — the one capability with a body this suite can exercise without media.
  const det = doc.capabilities.find((c) => c.id === 'detect');
  if (det) {
    const ready = !det.runtime || det.runtime.state === 'ready' || det.runtime.state === 'external';
    try {
      const r = await post('/v1/detect', { text: sample });
      const body = await r.json();
      if (r.status === 200) {
        validateDetectResponse(body, sample);
        ok(`POST /v1/detect → 200, ${body.entities.length} span(s) in ${body.ms} ms, model ${body.model}`);
        check(body.entities.every((e) => sample.slice(e.start, e.end) === e.value), 'every span sits at its offsets');
        if (det.labels?.length) check(body.entities.every((e) => det.labels.includes(e.type)), 'every label is in the vocabulary discovery listed');
        else ok('no vocabulary listed (engine not loaded at discovery) — label check skipped');
      } else if (r.status === 503 && !ready) {
        check(['detector_unready', 'detector_error'].includes(body?.error?.type), `POST /v1/detect → 503 with a named state (${body?.error?.type}) while the engine is ${det.runtime?.state}`);
      } else {
        bad(`POST /v1/detect → ${r.status} ${JSON.stringify(body).slice(0, 200)}`);
      }
    } catch (e) { bad(`detect: ${e.message}`); }

    // Bad body → 400, not a crash and not an empty 200.
    try { const r = await post('/v1/detect', { nope: 1 }); check(r.status === 400, `POST /v1/detect with no text → 400 (got ${r.status})`); } catch (e) { bad(`detect 400: ${e.message}`); }

    // A budget is refused on the prediction, never missed: a large text against 1 ms is either
    // refused as over_budget, or served because the provider has no record yet — never late.
    if (ready) {
      try {
        const t0 = performance.now();
        const r = await post('/v1/detect', { text: sample.repeat(200), budgetMs: 1 });
        const body = await r.json();
        const took = performance.now() - t0;
        if (r.status === 503) check(body?.error?.type === OVER_BUDGET && body.error.predictedMs > 1, `budgetMs 1 → 503 ${OVER_BUDGET} (predicted ${body?.error?.predictedMs} ms)`);
        else if (r.status === 200) check(det.stats?.calls === 0 || took < 5000, 'budgetMs 1 served (no record to refuse from) — and not late');
        else bad(`budgetMs → ${r.status}`);
      } catch (e) { bad(`budget: ${e.message}`); }
    }

    // A model this provider does not serve → 404.
    try { const r = await post('/v1/detect', { text: sample, model: 'nobody/serves-this' }); check(r.status === 404 || r.status === 503, `unknown model → ${r.status} (404, or 503 while unready)`); } catch (e) { bad(`unknown model: ${e.message}`); }
  }
}

// 3. read — the reader's contract, without depending on any particular public page: a
//    bad body, a private host (refused by the guard, never fetched), a percent-encoded alias,
//    and — when CHATPANEL_READ_URL names a page — one real read validated against the shape.
const rd = doc.capabilities.find((c) => c.id === 'read');
if (rd) {
  check(Array.isArray(rd.providers) && rd.providers.length > 0, `read lists providers (${(rd.providers || []).join(', ')})`);
  check(!rd.default || rd.providers.includes(rd.default), `read's default (${rd.default}) is one of its providers`);
  try { const r = await post('/v1/read', { url: '/relative' }); check(r.status === 400, `POST /v1/read with a relative url → 400 (got ${r.status})`); } catch (e) { bad(`read 400: ${e.message}`); }
  try {
    const r = await post('/v1/read', { url: 'http://169.254.169.254/latest/meta-data/' });
    const body = await r.json().catch(() => null);
    check(r.status === 502 && body?.error?.type === 'blocked_host', `a metadata host → 502 blocked_host (got ${r.status} ${body?.error?.type})`);
  } catch (e) { bad(`read guard: ${e.message}`); }
  try { const r = await post('/v1/read', { url: 'https://example.com/', provider: 'nobody-serves-this' }); check(r.status === 404, `unknown read provider → 404 (got ${r.status})`); } catch (e) { bad(`read provider: ${e.message}`); }
  try { const r = await get('/v1/read/' + encodeURIComponent('http://127.0.0.1:9/x?q=1')); check(r.status === 502, `GET /v1/read/<encoded loopback url> reaches the reader and is refused → 502 (got ${r.status})`); } catch (e) { bad(`read alias: ${e.message}`); }
  const page = process.env.CHATPANEL_READ_URL;
  if (page) {
    try {
      const t0 = Date.now();
      const r = await post('/v1/read', { url: page, maxChars: 4000 });
      const body = await r.json().catch(() => null);
      if (r.status === 200) {
        validateReadResponse(body);
        ok(`POST /v1/read ${page} → ${body.chars} chars, ${body.sections.length} section(s), provider ${body.provider}, ${body.ms} ms${body.cached ? ' (cached)' : ''}${body.restricted ? ` — restricted: ${body.restricted.reason}` : ''} [${Date.now() - t0} ms]`);
        const a = await get('/v1/read/' + page);
        const text = await a.text();
        check(a.status === 200 && /^(Title: .*\n)?URL Source: /.test(text), 'the alias answers the r.jina.ai text shape');
      } else bad(`POST /v1/read ${page} → ${r.status} ${JSON.stringify(body).slice(0, 200)}`);
    } catch (e) { bad(`read ${page}: ${e.message}`); }
  } else ok('read: set CHATPANEL_READ_URL=<a public page> to also validate one real read');
}

// 4. search — the contract without a particular result: a bad body, an unknown provider, and
//    — when CHATPANEL_SEARCH_QUERY names one — one real search with the top result read.
const sr = doc.capabilities.find((c) => c.id === 'search');
if (sr) {
  check(Array.isArray(sr.providers) && sr.providers.includes('serp'), `search lists providers (${(sr.providers || []).join(', ')}) including the built-in serp`);
  check(!sr.default || sr.providers.includes(sr.default), `search's default (${sr.default}) is one of its providers`);
  try { const r = await post('/v1/search', { q: '   ' }); check(r.status === 400, `POST /v1/search with an empty q → 400 (got ${r.status})`); } catch (e) { bad(`search 400: ${e.message}`); }
  try { const r = await post('/v1/search', { q: 'x', provider: 'nobody-serves-this' }); check(r.status === 404, `unknown search provider → 404 (got ${r.status})`); } catch (e) { bad(`search provider: ${e.message}`); }
  const q = process.env.CHATPANEL_SEARCH_QUERY;
  if (q) {
    try {
      const t0 = Date.now();
      const r = await post('/v1/search', { q, limit: 5, read: 1 });
      const body = await r.json().catch(() => null);
      if (r.status === 200) {
        validateSearchResponse(body);
        const top = body.results[0];
        ok(`POST /v1/search ${JSON.stringify(q)} → ${body.results.length} result(s) via ${body.provider} (${(body.engines || []).join(', ')}) in ${body.ms} ms${top?.read ? `; top read: ${top.read.chars} chars, ${top.read.provider}${top.read.restricted ? ` (restricted: ${top.read.restricted.reason})` : ''}` : ''} [${Date.now() - t0} ms]`);
        const a = await get('/v1/search/' + encodeURIComponent(q) + '?read=1');
        const j = await a.json().catch(() => null);
        check(a.status === 200 && Array.isArray(j?.data) && j.data.every((d) => typeof d.content === 'string'), 'the alias answers the s.jina.ai shape with content');
      } else bad(`POST /v1/search ${JSON.stringify(q)} → ${r.status} ${JSON.stringify(body).slice(0, 200)}`);
    } catch (e) { bad(`search ${q}: ${e.message}`); }
  } else ok('search: set CHATPANEL_SEARCH_QUERY=<a query> to also validate one real search');
}

// 5. rerank — listed only while a reranker is configured; when it is, one real ordering
//    validated against the contract: distinct indexes, best first, the obvious match on top.
const rr = doc.capabilities.find((c) => c.id === 'rerank');
if (rr) {
  check(Array.isArray(rr.models) && rr.models.length > 0, `rerank lists models (${(rr.models || []).join(', ')})`);
  try { const r = await post('/v1/rerank', { query: 'q', documents: [] }); check(r.status === 400, `POST /v1/rerank with no documents → 400 (got ${r.status})`); } catch (e) { bad(`rerank 400: ${e.message}`); }
  try {
    const req = validateRerankRequest ? validateRerankRequest({ query: 'What is deep learning?', documents: ['The weather in Lisbon is mild in spring.', 'Deep learning is a family of machine learning methods based on neural networks.', 'A recipe for sourdough bread.'], top_n: 2 }) : null;
    const t0 = Date.now();
    const r = await post('/v1/rerank', req);
    const body = await r.json().catch(() => null);
    if (r.status === 200) {
      validateRerankResponse(body, req);
      check(body.results[0]?.index === 1, `the deep-learning sentence ranks first (got index ${body.results[0]?.index}, score ${body.results[0]?.relevance_score})`);
      ok(`POST /v1/rerank → ${body.results.length} of 3 in ${body.ms} ms, model ${body.model} [${Date.now() - t0} ms]`);
    } else if (r.status === 503 && body?.error?.type === 'provider_unavailable') ok(`POST /v1/rerank → 503 provider_unavailable (the reranker is listed but not answering yet — ${rr.runtime?.state})`);
    else bad(`POST /v1/rerank → ${r.status} ${JSON.stringify(body).slice(0, 200)}`);
  } catch (e) { bad(`rerank: ${e.message}`); }
  try { const r = await post('/v1/rerank', { query: 'q', documents: ['a'], model: 'nobody/serves-this' }); check(r.status === 404, `unknown rerank model → 404 (got ${r.status})`); } catch (e) { bad(`rerank model: ${e.message}`); }
} else {
  try { const r = await post('/v1/rerank', { query: 'q', documents: ['a'] }); check(r.status === 404, `no reranker listed → POST /v1/rerank is 404 (got ${r.status})`); } catch { ok('rerank: not served'); }
}

// 6. decide — likewise: the three primitives in one request, each answer's shape checked
//    against its question, and `calibrated` present so a caller knows what `p` is.
const dc = doc.capabilities.find((c) => c.id === 'decide');
if (dc) {
  check(Array.isArray(dc.models) && dc.models.length > 0, `decide lists models (${(dc.models || []).join(', ')})`);
  check(typeof dc.calibrated === 'boolean', `decide says whether it is calibrated (${dc.calibrated})`);
  try { const r = await post('/v1/decide', { state: 'x', questions: {} }); check(r.status === 400, `POST /v1/decide with no questions → 400 (got ${r.status})`); } catch (e) { bad(`decide 400: ${e.message}`); }
  try {
    const req = validateDecideRequest({ state: 'This is the third time my order arrived broken. I want a refund now.', questions: {
      sentiment: { type: 'choice', instructions: 'The overall sentiment of the text.', options: ['positive', 'negative', 'neutral'] },
      urgency: { type: 'score', instructions: 'How urgent is this?', options: ['not urgent', 'somewhat urgent', 'very urgent'] },
      wants_refund: { type: 'noul', instructions: 'Does the writer ask for a refund?' },
    } });
    const t0 = Date.now();
    const r = await post('/v1/decide', req);
    const body = await r.json().catch(() => null);
    if (r.status === 200) {
      validateDecideResponse(body, req);
      check(body.answers.sentiment.value === 'negative', `a broken order is negative (got ${body.answers.sentiment.value} at ${body.answers.sentiment.p})`);
      check(body.answers.wants_refund.value === true, `"I want a refund" is a yes (got ${body.answers.wants_refund.p})`);
      ok(`POST /v1/decide → 3 answers in ${body.ms} ms, model ${body.model}, calibrated ${body.calibrated} [${Date.now() - t0} ms]`);
    } else if (r.status === 503 && body?.error?.type === 'provider_unavailable') ok(`POST /v1/decide → 503 provider_unavailable (the decision model is listed but not answering yet — ${dc.runtime?.state})`);
    else bad(`POST /v1/decide → ${r.status} ${JSON.stringify(body).slice(0, 200)}`);
  } catch (e) { bad(`decide: ${e.message}`); }
} else {
  try { const r = await post('/v1/decide', { state: 's', questions: { k: { type: 'noul', instructions: 'i' } } }); check(r.status === 404, `no decision model listed → POST /v1/decide is 404 (got ${r.status})`); } catch { ok('decide: not served'); }
}

console.log(failed ? `conformance: ${failed} problem(s)` : 'conformance: ok — this server is a ChatPanel capability provider');
process.exit(failed ? 1 : 0);
