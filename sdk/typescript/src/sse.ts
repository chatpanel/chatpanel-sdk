// A text/event-stream reader. Frames are separated by a blank line; a chunk boundary can
// fall anywhere, so the tail stays in the buffer until its terminator arrives — splitting on
// '\n' alone is the classic way to lose a token every few hundred. `data:` lines of one frame
// are joined with '\n' per the spec; comment lines (`: keep-alive`) are dropped.

export interface SseFrame<T = unknown> {
  /** The `event:` name, or `message` when the frame had none. */
  event: string;
  /** The parsed `data:` payload — JSON when it parses, the raw string otherwise. */
  data: T;
  id?: string;
  /** The `data:` text exactly as received. */
  raw: string;
}

export function parseFrame(block: string): SseFrame | null {
  let event = 'message';
  let id: string | undefined;
  const data: string[] = [];
  for (const line of block.split('\n')) {
    if (!line || line.startsWith(':')) continue;
    const colon = line.indexOf(':');
    const field = colon === -1 ? line : line.slice(0, colon);
    let value = colon === -1 ? '' : line.slice(colon + 1);
    if (value.startsWith(' ')) value = value.slice(1);
    if (field === 'event') event = value;
    else if (field === 'data') data.push(value);
    else if (field === 'id') id = value;
  }
  if (!data.length) return null;
  const raw = data.join('\n');
  let parsed: unknown = raw;
  try { parsed = JSON.parse(raw); } catch { /* a plain string frame, e.g. [DONE] */ }
  return { event, data: parsed, ...(id !== undefined ? { id } : {}), raw };
}

/** Read a body stream as SSE frames. Stops at `[DONE]` (the OpenAI terminator) when `stopAtDone` is set. */
export async function* readSse<T>(body: ReadableStream<Uint8Array>, { stopAtDone = false }: { stopAtDone?: boolean } = {}): AsyncGenerator<SseFrame<T>> {
  const reader = body.getReader();
  const decoder = new TextDecoder();
  let buffer = '';
  try {
    for (;;) {
      const { done, value } = await reader.read();
      if (done) break;
      buffer += decoder.decode(value, { stream: true }).replace(/\r\n/g, '\n');
      let sep: number;
      while ((sep = buffer.indexOf('\n\n')) !== -1) {
        const block = buffer.slice(0, sep);
        buffer = buffer.slice(sep + 2);
        const frame = parseFrame(block);
        if (!frame) continue;
        if (stopAtDone && frame.raw.trim() === '[DONE]') return;
        yield frame as SseFrame<T>;
      }
    }
    const last = parseFrame(buffer);
    if (last && !(stopAtDone && last.raw.trim() === '[DONE]')) yield last as SseFrame<T>;
  } finally {
    try { await reader.cancel(); } catch { /* already closed */ }
  }
}
