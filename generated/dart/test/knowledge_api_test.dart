import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for KnowledgeApi
void main() {
  final instance = Chatpanel().getKnowledgeApi();

  group(KnowledgeApi, () {
    // Who may use a base — every agent, or the ones named.
    //
    //Future<KbAccessResponse> knowledgeAccess(String id) async
    test('test knowledgeAccess', () async {
      // TODO
    });

    // Add a document — bytes, a path on this machine, a URL, or text — and index it.
    //
    // One of four sources: `name` + `data` (the file, base64, up to 64 MB — a PDF, DOCX, XLSX, PPTX, ODF, Markdown or text, parsed in the extract worker); `path` (a file or folder on this machine, walked with the same refusals the `files` tool applies — credential stores withheld and named, `node_modules` and hidden folders skipped, documents up to 64 MB; TOKEN-GATED: a path is a read on the machine, so it is 403 to a caller without the token or the extension origin); `url` (a public page through the `read` capability); `text`. The same bytes added again REPLACE the document. Passages are chunked by the document's own headings with page citations, indexed by words and in the graph, and embedded when the embedder's model is on disk (`embedded` says how many); the report is rewritten. 
    //
    //Future<KbAddResponse> knowledgeAdd(String id, KbAddRequest kbAddRequest) async
    test('test knowledgeAdd', () async {
      // TODO
    });

    // Create a knowledge base (or return the one with that id).
    //
    // A base is a folder under `~/.chatpanel/kb/<id>/` (manifest, passages, notes, vectors, a Markdown report) — a projection over the documents added to it, rebuildable from them. `embed: off` keeps it on words and the graph only. 201 when created, 200 with `existed` when the id was already there. 
    //
    //Future<KbStatusResponse> knowledgeCreate(KbCreateRequest kbCreateRequest) async
    test('test knowledgeCreate', () async {
      // TODO
    });

    // Delete a base and its folder.
    //
    //Future<KbOkResponse> knowledgeDelete(String id) async
    test('test knowledgeDelete', () async {
      // TODO
    });

    // The documents in a base.
    //
    //Future<KbDocuments> knowledgeDocuments(String id) async
    test('test knowledgeDocuments', () async {
      // TODO
    });

    // Embed every passage that has no vector yet, and say where the embedder stands.
    //
    //Future<KbEmbedResponse> knowledgeEmbed(String id, { JsonObject body }) async
    test('test knowledgeEmbed', () async {
      // TODO
    });

    // What connects to a node — its neighbours up to `hops` away — or the path between two.
    //
    //Future<KbGraphResponse> knowledgeGraph(String id, KbGraphRequest kbGraphRequest) async
    test('test knowledgeGraph', () async {
      // TODO
    });

    // The knowledge bases on this machine.
    //
    // Each base with its id, name, document count, vector count and model. Loads no passages.
    //
    //Future<KbList> knowledgeList() async
    test('test knowledgeList', () async {
      // TODO
    });

    // File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.
    //
    // How a base improves over time. A note is indexed and searched as its own lane and shown with its status; `status: accepted` is honoured only from a caller with the token (the person, or a client acting for them) — any other caller's note is filed as `proposed`. Unknown cites are dropped. 
    //
    //Future<KbNoteResponse> knowledgeNote(String id, KbNoteRequest kbNoteRequest) async
    test('test knowledgeNote', () async {
      // TODO
    });

    // Accept a proposed note, withdraw it to proposed, or remove it.
    //
    //Future<KbNoteResponse> knowledgeNoteStatus(String id, String note, KbNoteStatusRequest kbNoteStatusRequest) async
    test('test knowledgeNoteStatus', () async {
      // TODO
    });

    // The notes filed into a base.
    //
    //Future<KbNotes> knowledgeNotes(String id) async
    test('test knowledgeNotes', () async {
      // TODO
    });

    // The table of contents a document's headings imply — every section once, with where it starts.
    //
    //Future<KbOutline> knowledgeOutline(String id, { String doc }) async
    test('test knowledgeOutline', () async {
      // TODO
    });

    // One page of a document, from the index.
    //
    //Future<KbPage> knowledgePage(String id, String doc, { int page }) async
    test('test knowledgePage', () async {
      // TODO
    });

    // One passage by id, with its citation.
    //
    //Future<KbPassage> knowledgePassage(String id, String passage) async
    test('test knowledgePassage', () async {
      // TODO
    });

    // Remove a document, its passages and vectors (notes keep their text and lose the cite).
    //
    //Future<KbStatusResponse> knowledgeRemoveDocument(String id, String doc) async
    test('test knowledgeRemoveDocument', () async {
      // TODO
    });

    // The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.
    //
    //Future<String> knowledgeReport(String id) async
    test('test knowledgeReport', () async {
      // TODO
    });

    // The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.
    //
    // The harness's loop (events kb-research.js), not a model's tool calls: a whole-document ask (\"what is this about\") reads the outline and the opening of each section; a focused one searches, reads the best passages grouped by document in page order, and — with `model` (TOKEN-GATED: the check runs on this gateway's own chat route) — asks that model once whether what was read answers it, then searches once more for what it says is missing. When the hits split evenly across documents and the question names none, the answer is `ask` (which document?) instead of a guess; call again with `answer` to go on, or `ask: false` to never pause. `attachment` is the block a client attaches before the question (`kind: prefetch`), `null` when nothing matched beyond the plain statement. 
    //
    //Future<KbResearchResponse> knowledgeResearch(String id, KbResearchRequest kbResearchRequest) async
    test('test knowledgeResearch', () async {
      // TODO
    });

    // The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.
    //
    // The words in up to four query shapes (BM25), the meaning when the base has vectors (the query embedded by the same model), the graph's one-hop expansion of the best hits (a passage sharing a name or a section with a hit, and `via` says which), and the notes as their own lane — fused by Reciprocal Rank Fusion with the graph at half weight, then the gateway's reranker fused in (never substituted). Each result carries `lanes` (which found it), `scores` (each lane's own, comparable within one query) and `cite` as the model is told to write it (`[report.pdf p.12]`). `docs` scopes to documents; `queries` adds the caller's own phrasings. 
    //
    //Future<KbSearchResponse> knowledgeSearch(String id, KbSearchRequest kbSearchRequest) async
    test('test knowledgeSearch', () async {
      // TODO
    });

    // Grant a base to every agent or to the ones named — the owner's act.
    //
    // Grants (docs/knowledge-base.md §3, \"knowledge is granted like skills\"): a caller with the token or the extension's origin is the owner and reaches every base; any other caller names itself (`X-ChatPanel-Agent: claude`, or `?agent=`) — the gateway's own MCP server sends the connected client's name — and reaches the bases whose `access.agents` is `all` (the default) or names it. `GET /v1/kb` lists only those; a base not granted reads as 404 to that caller. 
    //
    //Future<KbAccessResponse> knowledgeSetAccess(String id, KbAccessRequest kbAccessRequest) async
    test('test knowledgeSetAccess', () async {
      // TODO
    });

    // What a base holds — its documents, passages, notes, vectors, entities and connections.
    //
    //Future<KbStatusResponse> knowledgeStatus(String id) async
    test('test knowledgeStatus', () async {
      // TODO
    });

  });
}
