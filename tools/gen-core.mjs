#!/usr/bin/env node
// The SDK surface, generated from the contract for the first-class languages.
//
// What this emits is everything a method needs to be CORRECT: its path, method, parameters,
// body and response types, auth level, minimum gateway version and streaming shape. What it
// does not emit is anything that needs judgement — transport, token discovery, pairing, SSE
// parsing, retries, errors — which lives once per language in the hand-written runtime.
//
// The split is deliberate: adding a route to the spec adds a typed method in every language
// on the next run, and no human re-types a path. Run with --check to fail when the committed
// output is stale (CI's drift guard).
import { readFileSync, writeFileSync, existsSync, mkdirSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { loadSpec, listOperations, deref } from './spec.mjs';

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..');
const check = process.argv.includes('--check');
const spec = loadSpec();
const ops = listOperations(spec);
const schemas = spec.components.schemas;

const HEADER = (lang) => (lang === 'py'
  ? '# GENERATED FROM openapi/chatpanel-gateway.yaml BY tools/gen-core.mjs — DO NOT EDIT. Edit the spec, run `npm run gen:core`.\n'
  : '// GENERATED FROM openapi/chatpanel-gateway.yaml BY tools/gen-core.mjs — DO NOT EDIT. Edit the spec, run `npm run gen:core`.\n');

const pascal = (s) => String(s).replace(/(^|[^a-zA-Z0-9])([a-zA-Z0-9])/g, (_, __, c) => c.toUpperCase());
const snake = (s) => String(s).replace(/([a-z0-9])([A-Z])/g, '$1_$2').replace(/[^a-zA-Z0-9]+/g, '_').toLowerCase();
const refName = (ref) => ref.split('/').pop();
// Inside api.generated.ts every schema is reached through `import type * as T`; inside
// types.generated.ts the names are bare. One switch, flipped by the emitter.
let REF_PREFIX = '';
const frameOf = (op) => op.raw.responses?.['200']?.content?.['text/event-stream']?.['x-chatpanel-frame'] || null;
const doc = (s) => String(s || '').replace(/\s+/g, ' ').trim();

// ------------------------------------------------------------------ TypeScript types
function tsType(s, indent = '') {
  if (!s || Object.keys(s).length === 0) return 'unknown';
  if (s.$ref) return REF_PREFIX + refName(s.$ref);
  if (s.oneOf || s.anyOf) return (s.oneOf || s.anyOf).map((x) => tsType(x, indent)).join(' | ');
  if (s.allOf) return s.allOf.map((x) => `(${tsType(x, indent)})`).join(' & ');
  if (s.enum) return s.enum.map((v) => JSON.stringify(v)).join(' | ');
  const types = Array.isArray(s.type) ? s.type : [s.type];
  return types.map((t) => {
    switch (t) {
      case 'string': return 'string';
      case 'integer': case 'number': return 'number';
      case 'boolean': return 'boolean';
      case 'null': return 'null';
      case 'array': return `Array<${tsType(s.items, indent)}>`;
      case 'object': return tsObject(s, indent);
      default: return 'unknown';
    }
  }).join(' | ');
}
function tsObject(s, indent) {
  const props = s.properties || {};
  const req = new Set(s.required || []);
  const lines = Object.entries(props).map(([k, v]) => {
    const d = v.description ? `${indent}  /** ${doc(v.description)} */\n` : '';
    return `${d}${indent}  ${JSON.stringify(k).replace(/^"([a-zA-Z_$][\w$]*)"$/, '$1')}${req.has(k) ? '' : '?'}: ${tsType(v, indent + '  ')};`;
  });
  const extra = s.additionalProperties;
  if (extra === true || (extra && typeof extra === 'object' && !Object.keys(props).length)) {
    lines.push(`${indent}  [key: string]: ${extra === true ? 'unknown' : tsType(extra, indent + '  ')};`);
  } else if (extra && typeof extra === 'object') {
    lines.push(`${indent}  [key: string]: unknown;`);
  }
  if (!lines.length) return 'Record<string, never>';
  return `{\n${lines.join('\n')}\n${indent}}`;
}
function tsTypes() {
  REF_PREFIX = '';
  let out = HEADER('ts') + '/* eslint-disable */\n\n';
  for (const [name, s] of Object.entries(schemas)) {
    if (s.description) out += `/** ${doc(s.description)} */\n`;
    const body = tsType(s);
    out += (s.type === 'object' && !s.allOf && !s.oneOf && body.startsWith('{')) ? `export interface ${name} ${body}\n\n` : `export type ${name} = ${body};\n\n`;
  }
  return out;
}

// ------------------------------------------------------------------ TypeScript API
function tsParamType(p) { return tsType(p.schema); }
function tsSignature(op) {
  const pathParams = op.params.filter((p) => p.in === 'path');
  const query = op.params.filter((p) => p.in === 'query');
  const headers = op.params.filter((p) => p.in === 'header');
  const args = pathParams.map((p) => `${p.name}: string`);
  let inputName = null;
  if (op.bodySchema) {
    inputName = 'body';
    args.push(`body: ${tsType(op.bodySchema, '  ')}`);
  } else if (query.length) {
    inputName = 'query';
    const allOptional = query.every((q) => !q.required);
    args.push(`query${allOptional ? '?' : ''}: { ${query.map((q) => `${q.name}${q.required ? '' : '?'}: ${tsParamType(q)}`).join('; ')} }`);
  }
  const extraOpts = [];
  if (op.bodySchema && query.length) extraOpts.push(`query?: { ${query.map((q) => `${q.name}?: ${tsParamType(q)}`).join('; ')} }`);
  if (headers.length) extraOpts.push(`headers?: { ${headers.map((h) => `${JSON.stringify(h.name)}?: ${tsParamType(h)}`).join('; ')} }`);
  args.push(`opts?: RequestOptions${extraOpts.length ? ` & { ${extraOpts.join('; ')} }` : ''}`);
  return { args: args.join(', '), inputName, pathParams, query, headers };
}
function tsApi() {
  REF_PREFIX = 'T.';
  const groups = new Map();
  for (const op of ops) { if (!groups.has(op.group)) groups.set(op.group, []); groups.get(op.group).push(op); }
  let out = HEADER('ts') + `/* eslint-disable */
import type * as T from './types.generated.js';
import type { Runtime, RequestOptions, Operation, SseFrame } from './runtime.js';

/** Every operation in the contract, keyed by operationId — the route table the runtime executes. */
export const OPERATIONS = {
${ops.map((op) => `  ${JSON.stringify(op.operationId)}: { id: ${JSON.stringify(op.operationId)}, method: ${JSON.stringify(op.method)}, path: ${JSON.stringify(op.path)}, auth: ${JSON.stringify(op.auth)}, since: ${JSON.stringify(op.since)}, stream: ${JSON.stringify(op.stream)}, pathParams: ${JSON.stringify(op.params.filter((p) => p.in === 'path').map((p) => p.name))}, queryParams: ${JSON.stringify(op.params.filter((p) => p.in === 'query').map((p) => p.name))} },`).join('\n')}
} as const satisfies Record<string, Operation>;

export type OperationId = keyof typeof OPERATIONS;

`;
  for (const [group, list] of groups) {
    const tag = (spec.tags || []).find((t) => t.name === group);
    out += `/** ${doc(tag?.description || group)} */\nexport class ${pascal(group)}Api {\n  private readonly rt: Runtime;\n  constructor(rt: Runtime) { this.rt = rt; }\n`;
    for (const op of list) {
      const { args, inputName, pathParams, query, headers } = tsSignature(op);
      const resp = op.responseSchema ? tsType(op.responseSchema, '  ') : 'unknown';
      const frame = frameOf(op);
      const frameType = frame ? `T.${refName(frame.$ref)}` : 'unknown';
      const pathObj = `{ ${pathParams.map((p) => p.name).join(', ')} }`;
      const queryExpr = inputName === 'query' ? 'query' : (op.bodySchema && query.length ? 'opts?.query' : 'undefined');
      const bodyExpr = inputName === 'body' ? 'body' : 'undefined';
      const summary = [op.summary, op.description].filter(Boolean).map(doc).join(' ');
      const meta = [op.auth === 'token' ? 'Requires the gateway token.' : '', op.since ? `Gateway ${op.since}+.` : ''].filter(Boolean).join(' ');
      const jsdoc = `  /** ${summary}${meta ? ` — ${meta}` : ''} */\n`;
      if (op.stream === 'sse') {
        out += `${jsdoc}  ${op.name}(${args}): AsyncIterable<SseFrame<${frameType}>> {\n    return this.rt.stream<${frameType}>(OPERATIONS[${JSON.stringify(op.operationId)}], { path: ${pathObj}, query: ${queryExpr}, headers: opts?.headers, opts });\n  }\n`;
      } else {
        out += `${jsdoc}  ${op.name}(${args}): Promise<${resp}> {\n    return this.rt.request(OPERATIONS[${JSON.stringify(op.operationId)}], { path: ${pathObj}, query: ${queryExpr}, headers: opts?.headers, body: ${bodyExpr}, opts });\n  }\n`;
        if (op.stream === 'sse-when-stream') {
          out += `  /** The same call with \`stream: true\` — one frame per chunk until \`[DONE]\`. */\n  ${op.name}Stream(${args}): AsyncIterable<SseFrame<${frameType}>> {\n    return this.rt.stream<${frameType}>(OPERATIONS[${JSON.stringify(op.operationId)}], { path: ${pathObj}, query: ${queryExpr}, headers: opts?.headers, body: { ...(body as object), stream: true }, opts });\n  }\n`;
        }
      }
    }
    out += '}\n\n';
  }
  out += `/** The namespaces a client exposes, built on one runtime. */\nexport function buildApi(rt: Runtime) {\n  return {\n${[...groups.keys()].map((g) => `    ${g}: new ${pascal(g)}Api(rt),`).join('\n')}\n  };\n}\n`;
  return out;
}

// ------------------------------------------------------------------ Python types
function pyType(s) {
  if (!s || Object.keys(s).length === 0) return 'Any';
  if (s.$ref) return `"${refName(s.$ref)}"`;
  if (s.oneOf || s.anyOf) return `Union[${(s.oneOf || s.anyOf).map(pyType).join(', ')}]`;
  if (s.allOf) return 'Dict[str, Any]';
  if (s.enum) return `Literal[${s.enum.map((v) => JSON.stringify(v)).join(', ')}]`;
  const types = Array.isArray(s.type) ? s.type : [s.type];
  const one = (t) => {
    switch (t) {
      case 'string': return 'str';
      case 'integer': return 'int';
      case 'number': return 'float';
      case 'boolean': return 'bool';
      case 'null': return 'None';
      case 'array': return `List[${pyType(s.items)}]`;
      case 'object': return s.properties ? 'Dict[str, Any]' : (s.additionalProperties && typeof s.additionalProperties === 'object' ? `Dict[str, ${pyType(s.additionalProperties)}]` : 'Dict[str, Any]');
      default: return 'Any';
    }
  };
  return types.length === 1 ? one(types[0]) : `Union[${types.map(one).join(', ')}]`;
}
function pyTypes() {
  let out = HEADER('py') + 'from typing import Any, Dict, List, Literal, NotRequired, TypedDict, Union\n\n';
  for (const [name, s] of Object.entries(schemas)) {
    const isDict = s.type === 'object' && s.properties && !s.allOf && !s.oneOf;
    if (!isDict) { out += `${name} = ${pyType(s).replace(/^"(.+)"$/, '$1')}\n${s.description ? `"""${doc(s.description)}"""\n` : ''}\n`; continue; }
    const req = new Set(s.required || []);
    out += `class ${name}(TypedDict, total=False):\n    """${doc(s.description) || name}"""\n`;
    const entries = Object.entries(s.properties);
    if (!entries.length) out += '    pass\n';
    for (const [k, v] of entries) {
      const t = pyType(v);
      out += `    ${k}: ${req.has(k) ? t : `NotRequired[${t}]`}${v.description ? `  # ${doc(v.description)}` : ''}\n`;
    }
    out += '\n\n';
  }
  return out;
}

// ------------------------------------------------------------------ Python API
function pyApi() {
  const groups = new Map();
  for (const op of ops) { if (!groups.has(op.group)) groups.set(op.group, []); groups.get(op.group).push(op); }
  let out = HEADER('py') + `from typing import Any, Dict, Iterator, Optional

from . import _types_generated as T
from ._runtime import Operation, Runtime, SseFrame

OPERATIONS: Dict[str, Operation] = {
${ops.map((op) => `    ${JSON.stringify(op.operationId)}: Operation(id=${JSON.stringify(op.operationId)}, method=${JSON.stringify(op.method)}, path=${JSON.stringify(op.path)}, auth=${JSON.stringify(op.auth)}, since=${op.since ? JSON.stringify(op.since) : 'None'}, stream=${op.stream ? JSON.stringify(op.stream) : 'None'}, path_params=(${op.params.filter((p) => p.in === 'path').map((p) => JSON.stringify(p.name)).concat(['']).join(', ').replace(/, $/, ',')}), query_params=(${op.params.filter((p) => p.in === 'query').map((p) => JSON.stringify(p.name)).concat(['']).join(', ').replace(/, $/, ',')})),`).join('\n')}
}
"""Every operation in the contract, keyed by operationId — the route table the runtime executes."""

`;
  for (const [group, list] of groups) {
    const tag = (spec.tags || []).find((t) => t.name === group);
    out += `class ${pascal(group)}Api:\n    """${doc(tag?.description || group)}"""\n\n    def __init__(self, rt: Runtime) -> None:\n        self._rt = rt\n\n`;
    for (const op of list) {
      const pathParams = op.params.filter((p) => p.in === 'path');
      const query = op.params.filter((p) => p.in === 'query');
      const args = ['self', ...pathParams.map((p) => `${snake(p.name)}: str`)];
      let bodyExpr = 'None';
      let queryExpr = 'query';
      if (op.bodySchema) { args.push(`body: ${op.bodySchema.$ref ? `"T.${refName(op.bodySchema.$ref)}"` : 'Dict[str, Any]'}`); bodyExpr = 'body'; }
      else if (query.length) { args.push(`query: Optional[Dict[str, Any]] = None`); }
      if (op.bodySchema) args.push('query: Optional[Dict[str, Any]] = None');
      if (!op.bodySchema && !query.length) { queryExpr = 'None'; }
      args.push('*', 'headers: Optional[Dict[str, str]] = None', 'timeout: Optional[float] = None');
      const resp = op.responseSchema?.$ref ? `"T.${refName(op.responseSchema.$ref)}"` : 'Dict[str, Any]';
      const frame = frameOf(op);
      const frameType = frame ? `"T.${refName(frame.$ref)}"` : 'Dict[str, Any]';
      const pathDict = `{${pathParams.map((p) => `${JSON.stringify(p.name)}: ${snake(p.name)}`).join(', ')}}`;
      const summary = [op.summary, op.description].filter(Boolean).map(doc).join(' ');
      const meta = [op.auth === 'token' ? 'Requires the gateway token.' : '', op.since ? `Gateway ${op.since}+.` : ''].filter(Boolean).join(' ');
      const docstr = `        """${summary}${meta ? ` — ${meta}` : ''}"""\n`;
      const name = snake(op.name);
      if (op.stream === 'sse') {
        out += `    def ${name}(${args.join(', ')}) -> Iterator[SseFrame[${frameType}]]:\n${docstr}        return self._rt.stream(OPERATIONS[${JSON.stringify(op.operationId)}], path=${pathDict}, query=${queryExpr}, headers=headers, timeout=timeout)\n\n`;
      } else {
        out += `    def ${name}(${args.join(', ')}) -> ${resp}:\n${docstr}        return self._rt.request(OPERATIONS[${JSON.stringify(op.operationId)}], path=${pathDict}, query=${queryExpr}, headers=headers, body=${bodyExpr}, timeout=timeout)\n\n`;
        if (op.stream === 'sse-when-stream') {
          out += `    def ${name}_stream(${args.join(', ')}) -> Iterator[SseFrame[${frameType}]]:\n        """The same call with \`stream: true\` — one frame per chunk until \`[DONE]\`."""\n        return self._rt.stream(OPERATIONS[${JSON.stringify(op.operationId)}], path=${pathDict}, query=${queryExpr}, headers=headers, body={**dict(body), "stream": True}, timeout=timeout)\n\n`;
        }
      }
    }
    out += '\n';
  }
  out += `class Api:\n    """The namespaces a client exposes, built on one runtime."""\n\n    def __init__(self, rt: Runtime) -> None:\n${[...groups.keys()].map((g) => `        self.${g} = ${pascal(g)}Api(rt)`).join('\n')}\n`;
  return out;
}

// ------------------------------------------------------------------ write / check
const files = {
  'sdk/typescript/src/types.generated.ts': tsTypes(),
  'sdk/typescript/src/api.generated.ts': tsApi(),
  'sdk/python/chatpanel/_types_generated.py': pyTypes(),
  'sdk/python/chatpanel/_api_generated.py': pyApi(),
};
let stale = 0;
for (const [rel, content] of Object.entries(files)) {
  const abs = join(ROOT, rel);
  const current = existsSync(abs) ? readFileSync(abs, 'utf8') : null;
  if (check) {
    if (current !== content) { stale++; console.error(`gen-core --check: ${rel} is stale — run \`npm run gen:core\``); }
  } else {
    mkdirSync(dirname(abs), { recursive: true });
    if (current !== content) { writeFileSync(abs, content); console.log(`wrote ${rel}`); } else console.log(`unchanged ${rel}`);
  }
}
if (stale) process.exit(1);
if (check) console.log('gen-core --check: ok');
