#!/usr/bin/env node
// Structural rules on the contract that a generic OpenAPI validator does not know about.
// Every rule here exists because forgetting it produces an SDK that is wrong in a way no
// compiler catches: a route with no auth label generates a method that "works" until it 403s.
import { loadSpec, listOperations, deref } from './spec.mjs';

const spec = loadSpec();
const ops = listOperations(spec);
const problems = [];
const fail = (where, msg) => problems.push(`${where}: ${msg}`);

// The gateway is loopback-only; a contract that lists any other server would invite a
// generated client to send the bearer token somewhere it must never go.
for (const s of spec.servers || []) {
  if (!/^https?:\/\/(127\.0\.0\.1|localhost|\[::1\])(:\d+)?$/.test(s.url)) fail('servers', `non-loopback server ${s.url}`);
}

const seen = new Set();
for (const op of ops) {
  const where = `${op.method} ${op.path}`;
  // A group may carry a digit after its first letter: `a2a` is the protocol's own name, and
  // renaming a group to suit a regex written before any group had one would be the tail
  // wagging the dog. Still a plain identifier — no dashes, no leading digit.
  if (!op.operationId || !/^[a-z][a-z0-9]*\.[a-zA-Z]+$/.test(op.operationId)) fail(where, 'operationId must be `group.name`');
  if (seen.has(op.operationId)) fail(where, `duplicate operationId ${op.operationId}`);
  seen.add(op.operationId);
  if (!op.tag) fail(where, 'needs a tag');
  else if (!(spec.tags || []).some((t) => t.name === op.tag)) fail(where, `tag ${op.tag} is not declared`);
  if (op.tag !== op.group) fail(where, `tag ${op.tag} should match operationId group ${op.group}`);
  if (!['open', 'token'].includes(op.auth)) fail(where, `x-chatpanel-auth must be open|token (got ${op.auth})`);
  // A token-gated route must SAY so in `security` too — that is what openapi-generator reads,
  // and the two labels drifting apart means one language asks for a token and another does not.
  if (op.auth === 'token') {
    const schemes = (op.security || []).flatMap((s) => Object.keys(s));
    if (!schemes.includes('gatewayToken')) fail(where, 'token-gated but `security` lacks gatewayToken');
    if ((op.security || []).some((s) => Object.keys(s).length === 0)) fail(where, 'token-gated but `security` allows anonymous ({})');
    if (!Object.values(op.raw.responses || {}).some((r, i) => Object.keys(op.raw.responses)[i] === '403')) fail(where, 'token-gated but no 403 response documented');
  } else if (op.security && !op.security.some((s) => Object.keys(s).length === 0)) {
    fail(where, 'open route whose `security` requires a scheme — label it token');
  }
  if (op.since && !/^\d+\.\d+\.\d+$/.test(op.since)) fail(where, `x-chatpanel-since must be semver (got ${op.since})`);
  if (op.stream && !['sse', 'sse-when-stream'].includes(op.stream)) fail(where, `x-chatpanel-stream must be sse|sse-when-stream`);
  if (!op.summary) fail(where, 'needs a summary');
  // Every path parameter is declared and constrained: the gateway matches ids with a
  // regex, and an SDK that lets `../` through is one that lets the server say no for us.
  for (const m of op.path.matchAll(/\{([^}]+)\}/g)) {
    const p = op.params.find((x) => x.in === 'path' && x.name === m[1]);
    if (!p) fail(where, `path parameter {${m[1]}} is not declared`);
    else if (!p.required) fail(where, `path parameter ${m[1]} must be required`);
    else if (!p.schema.pattern && !p.schema.maxLength) fail(where, `path parameter ${m[1]} needs a pattern or maxLength`);
  }
  if (['POST', 'PUT', 'PATCH'].includes(op.method) && !op.bodySchema && !['gateway.whoami', 'gateway.pairCode', 'teams.stopRun'].includes(op.operationId)) {
    fail(where, 'write without a request body schema (add it, or list the exception in lint-spec.mjs)');
  }
  const success = Object.keys(op.raw.responses || {}).some((c) => /^2/.test(c));
  if (!success) fail(where, 'no 2xx response');
  if (op.stream === 'sse' && !op.raw.responses['200']?.content?.['text/event-stream']) fail(where, 'sse route must document text/event-stream');
  if (!op.stream && op.responseSchema == null) fail(where, 'JSON route with no application/json 2xx schema');
}

// Every schema referenced resolves; every component is referenced (dead schemas rot).
const text = JSON.stringify(spec);
for (const name of Object.keys(spec.components?.schemas || {})) {
  if (!text.includes(`#/components/schemas/${name}"`)) fail(`components.schemas.${name}`, 'is never referenced');
}
for (const m of text.matchAll(/"\$ref":"([^"]+)"/g)) {
  try { deref(spec, { $ref: m[1] }); } catch (e) { fail(m[1], e.message); }
}

if (problems.length) {
  console.error(`spec lint: ${problems.length} problem(s)\n  ${problems.join('\n  ')}`);
  process.exit(1);
}
console.log(`spec lint: ok — ${ops.length} operations, ${Object.keys(spec.components.schemas).length} schemas, ${ops.filter((o) => o.auth === 'token').length} token-gated, ${ops.filter((o) => o.stream).length} streaming`);
