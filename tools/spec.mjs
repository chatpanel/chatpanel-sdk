// The one reader of the contract. Every tool in this repo — the linter, the core generator,
// the drift guard, the tests — sees the spec through this module, so "what is an operation"
// is decided once.
import { readFileSync } from 'node:fs';
import { fileURLToPath } from 'node:url';
import { dirname, join } from 'node:path';
import YAML from 'yaml';

export const SPEC_PATH = join(dirname(fileURLToPath(import.meta.url)), '..', 'openapi', 'chatpanel-gateway.yaml');
const METHODS = ['get', 'put', 'post', 'delete', 'patch'];

export function loadSpec(path = SPEC_PATH) {
  return YAML.parse(readFileSync(path, 'utf8'));
}

/** Follow a local `$ref` (`#/components/...`). Anything else is refused: the contract is one file. */
export function resolveRef(spec, ref) {
  if (typeof ref !== 'string' || !ref.startsWith('#/')) throw new Error(`unsupported $ref: ${ref}`);
  let node = spec;
  for (const seg of ref.slice(2).split('/')) {
    node = node?.[seg.replace(/~1/g, '/').replace(/~0/g, '~')];
    if (node === undefined) throw new Error(`dangling $ref: ${ref}`);
  }
  return node;
}

/** `{ $ref }` → the target, recursively for a chain; other nodes returned as-is. */
export function deref(spec, node) {
  let n = node;
  for (let i = 0; i < 8 && n && typeof n === 'object' && n.$ref; i++) n = resolveRef(spec, n.$ref);
  return n;
}

/**
 * Flatten the spec into operations the generators consume. Each one carries the resolved
 * parameters (path-level merged with operation-level), the JSON request body schema, the
 * success response schema, and the x-chatpanel-* extensions.
 */
export function listOperations(spec) {
  const ops = [];
  for (const [path, item] of Object.entries(spec.paths || {})) {
    const shared = (item.parameters || []).map((p) => deref(spec, p));
    for (const method of METHODS) {
      const op = item[method];
      if (!op) continue;
      // `x-chatpanel-sdk: manual` — documented in the spec, checked by the contract, but not a
      // generated method: a multipart upload (audio.transcribe) is one line of FormData in any
      // language and a generator that only speaks JSON would produce a wrong client for it.
      if (op['x-chatpanel-sdk'] === 'manual') continue;
      const own = (op.parameters || []).map((p) => deref(spec, p));
      const params = [...shared.filter((s) => !own.some((o) => o.name === s.name && o.in === s.in)), ...own];
      const body = op.requestBody ? deref(spec, op.requestBody)?.content?.['application/json']?.schema || null : null;
      const success = Object.entries(op.responses || {}).find(([code]) => /^2/.test(code));
      const successResp = success ? deref(spec, success[1]) : null;
      const responseSchema = successResp?.content?.['application/json']?.schema || null;
      const [tag] = op.tags || [];
      const [group, name] = String(op.operationId || '').split('.');
      ops.push({
        operationId: op.operationId,
        group,
        name,
        tag,
        method: method.toUpperCase(),
        path,
        summary: op.summary || '',
        description: op.description || '',
        auth: op['x-chatpanel-auth'] || 'open',
        since: op['x-chatpanel-since'] || null,
        stream: op['x-chatpanel-stream'] || null,
        security: op.security || null,
        params: params.map((p) => ({ name: p.name, in: p.in, required: !!p.required, schema: p.schema || {}, description: p.description || '' })),
        bodySchema: body,
        bodyRequired: op.requestBody ? deref(spec, op.requestBody).required !== false : false,
        responseSchema,
        raw: op,
      });
    }
  }
  return ops;
}

/** Semver compare on the numeric parts only: negative when a < b. */
export function compareVersions(a, b) {
  const pa = String(a).split('.').map((n) => parseInt(n, 10) || 0);
  const pb = String(b).split('.').map((n) => parseInt(n, 10) || 0);
  for (let i = 0; i < Math.max(pa.length, pb.length); i++) {
    const d = (pa[i] || 0) - (pb[i] || 0);
    if (d) return d;
  }
  return 0;
}
