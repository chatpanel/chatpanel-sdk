// A gateway that answers from a script. Records every request (method, path, headers, body)
// so a test can assert what the SDK SENT — the token header, the encoded path, the query —
// not only what it got back.
import { createServer } from 'node:http';

export async function scripted(routes = {}, { version = '0.11.0' } = {}) {
  const calls = [];
  const server = createServer(async (req, res) => {
    let body = '';
    for await (const chunk of req) body += chunk;
    const url = new URL(req.url, 'http://127.0.0.1');
    const call = { method: req.method, path: url.pathname, query: Object.fromEntries(url.searchParams), headers: req.headers, body: body ? JSON.parse(body) : null };
    calls.push(call);
    const key = `${req.method} ${url.pathname}`;
    const handler = routes[key] || routes[url.pathname];
    if (url.pathname === '/health' && !handler) {
      res.writeHead(200, { 'content-type': 'application/json' });
      return res.end(JSON.stringify({ ok: true, version }));
    }
    if (!handler) {
      res.writeHead(404, { 'content-type': 'application/json' });
      return res.end(JSON.stringify({ error: { message: `no route ${key}`, type: 'not_found' } }));
    }
    return handler(req, res, call);
  });
  await new Promise((r) => server.listen(0, '127.0.0.1', r));
  const { port } = server.address();
  return {
    url: `http://127.0.0.1:${port}`,
    calls,
    close: () => new Promise((r) => server.close(r)),
  };
}

export const json = (status, obj) => (req, res) => { res.writeHead(status, { 'content-type': 'application/json' }); res.end(JSON.stringify(obj)); };

/** Write SSE frames in the given chunks (each chunk a string), with a small delay between chunks. */
export const sse = (chunks, { delayMs = 5 } = {}) => async (req, res) => {
  res.writeHead(200, { 'content-type': 'text/event-stream', 'cache-control': 'no-cache' });
  for (const c of chunks) { res.write(c); await new Promise((r) => setTimeout(r, delayMs)); }
  res.end();
};
