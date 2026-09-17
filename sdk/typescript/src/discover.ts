// Where the credential lives, for a client that runs as the user on the gateway's machine.
//
// The gateway writes its token to `~/.chatpanel/gateway-token` (mode 0600). A Node
// application running as that user may read it — that is the same trust the CLI and the
// desktop use. This module is the only place that knows the path. It loads `node:fs` lazily
// so the package still imports in a browser, where there is no file and a client pairs
// instead (see `ChatPanel.pair`).

export const TOKEN_ENV = 'CHATPANEL_GATEWAY_TOKEN';
export const TOKEN_PATH_ENV = 'CHATPANEL_GATEWAY_TOKEN_PATH';
export const URL_ENV = 'CHATPANEL_GATEWAY_URL';

type NodeEnv = { env?: Record<string, string | undefined> };

function env(): Record<string, string | undefined> {
  const p = (globalThis as { process?: NodeEnv }).process;
  return p?.env || {};
}

/** The base URL from `CHATPANEL_GATEWAY_URL`, else the default. */
export function discoverBaseUrl(): string {
  return env()[URL_ENV] || 'http://127.0.0.1:4320';
}

/**
 * The token from `CHATPANEL_GATEWAY_TOKEN`, else the token file (`CHATPANEL_GATEWAY_TOKEN_PATH`
 * or `~/.chatpanel/gateway-token`). Empty string when neither exists or this is not Node.
 */
export async function discoverToken(): Promise<string> {
  const e = env();
  if (e[TOKEN_ENV]) return e[TOKEN_ENV]!.trim();
  try {
    const [{ readFileSync }, os, path] = await Promise.all([import('node:fs'), import('node:os'), import('node:path')]);
    const file = e[TOKEN_PATH_ENV] || path.join(os.homedir(), '.chatpanel', 'gateway-token');
    return readFileSync(file, 'utf8').trim();
  } catch {
    return '';
  }
}
