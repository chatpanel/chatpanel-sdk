# ChatPanel.Sdk.Api.KnowledgeApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**KnowledgeAccess**](KnowledgeApi.md#knowledgeaccess) | **GET** /v1/kb/{id}/access | Who may use a base — every agent, or the ones named. |
| [**KnowledgeAdd**](KnowledgeApi.md#knowledgeadd) | **POST** /v1/kb/{id}/documents | Add a document — bytes, a path on this machine, a URL, or text — and index it. |
| [**KnowledgeCreate**](KnowledgeApi.md#knowledgecreate) | **POST** /v1/kb | Create a knowledge base (or return the one with that id). |
| [**KnowledgeDelete**](KnowledgeApi.md#knowledgedelete) | **DELETE** /v1/kb/{id} | Delete a base and its folder. |
| [**KnowledgeDocuments**](KnowledgeApi.md#knowledgedocuments) | **GET** /v1/kb/{id}/documents | The documents in a base. |
| [**KnowledgeEmbed**](KnowledgeApi.md#knowledgeembed) | **POST** /v1/kb/{id}/embed | Embed every passage that has no vector yet, and say where the embedder stands. |
| [**KnowledgeGraph**](KnowledgeApi.md#knowledgegraph) | **POST** /v1/kb/{id}/graph | What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two. |
| [**KnowledgeList**](KnowledgeApi.md#knowledgelist) | **GET** /v1/kb | The knowledge bases on this machine. |
| [**KnowledgeNote**](KnowledgeApi.md#knowledgenote) | **POST** /v1/kb/{id}/notes | File a note — a fact, a summary, a correction — cited to passages; proposed until accepted. |
| [**KnowledgeNoteStatus**](KnowledgeApi.md#knowledgenotestatus) | **POST** /v1/kb/{id}/notes/{note} | Accept a proposed note, withdraw it to proposed, or remove it. |
| [**KnowledgeNotes**](KnowledgeApi.md#knowledgenotes) | **GET** /v1/kb/{id}/notes | The notes filed into a base. |
| [**KnowledgeOutline**](KnowledgeApi.md#knowledgeoutline) | **GET** /v1/kb/{id}/outline | The table of contents a document&#39;s headings imply — every section once, with where it starts. |
| [**KnowledgePage**](KnowledgeApi.md#knowledgepage) | **GET** /v1/kb/{id}/documents/{doc} | One page of a document, from the index. |
| [**KnowledgePassage**](KnowledgeApi.md#knowledgepassage) | **GET** /v1/kb/{id}/passages/{passage} | One passage by id, with its citation. |
| [**KnowledgeRemoveDocument**](KnowledgeApi.md#knowledgeremovedocument) | **DELETE** /v1/kb/{id}/documents/{doc} | Remove a document, its passages and vectors (notes keep their text and lose the cite). |
| [**KnowledgeReport**](KnowledgeApi.md#knowledgereport) | **GET** /v1/kb/{id}/report | The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes. |
| [**KnowledgeResearch**](KnowledgeApi.md#knowledgeresearch) | **POST** /v1/kb/{id}/research | The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model. |
| [**KnowledgeSearch**](KnowledgeApi.md#knowledgesearch) | **POST** /v1/kb/{id}/search | The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation. |
| [**KnowledgeSetAccess**](KnowledgeApi.md#knowledgesetaccess) | **POST** /v1/kb/{id}/access | Grant a base to every agent or to the ones named — the owner&#39;s act. |
| [**KnowledgeStatus**](KnowledgeApi.md#knowledgestatus) | **GET** /v1/kb/{id} | What a base holds — its documents, passages, notes, vectors, entities and connections. |

<a id="knowledgeaccess"></a>
# **KnowledgeAccess**
> KbAccessResponse KnowledgeAccess (string id)

Who may use a base — every agent, or the ones named.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |

### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The grant. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgeadd"></a>
# **KnowledgeAdd**
> KbAddResponse KnowledgeAdd (string id, KbAddRequest kbAddRequest)

Add a document — bytes, a path on this machine, a URL, or text — and index it.

One of four sources: `name` + `data` (the file, base64, up to 64 MB — a PDF, DOCX, XLSX, PPTX, ODF, Markdown or text, parsed in the extract worker); `path` (a file or folder on this machine, walked with the same refusals the `files` tool applies — credential stores withheld and named, `node_modules` and hidden folders skipped, documents up to 64 MB; TOKEN-GATED: a path is a read on the machine, so it is 403 to a caller without the token or the extension origin); `url` (a public page through the `read` capability); `text`. The same bytes added again REPLACE the document. Passages are chunked by the document's own headings with page citations, indexed by words and in the graph, and embedded when the embedder's model is on disk (`embedded` says how many); the report is rewritten. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **kbAddRequest** | [**KbAddRequest**](KbAddRequest.md) |  |  |

### Return type

[**KbAddResponse**](KbAddResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | What was added and what was skipped, with why. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | A &#x60;path&#x60; from a caller without the token (&#x60;forbidden&#x60;), or a credential by content (&#x60;refused&#x60;). |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |
| **413** | Over the 64 MB limit (&#x60;too_large&#x60;). |  -  |
| **415** | Not a document (&#x60;unsupported&#x60;). |  -  |
| **502** | The URL could not be read (&#x60;read_failed&#x60;). |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgecreate"></a>
# **KnowledgeCreate**
> KbStatusResponse KnowledgeCreate (KbCreateRequest kbCreateRequest)

Create a knowledge base (or return the one with that id).

A base is a folder under `~/.chatpanel/kb/<id>/` (manifest, passages, notes, vectors, a Markdown report) — a projection over the documents added to it, rebuildable from them. `embed: off` keeps it on words and the graph only. 201 when created, 200 with `existed` when the id was already there. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **kbCreateRequest** | [**KbCreateRequest**](KbCreateRequest.md) |  |  |

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created. |  -  |
| **200** | A base with that id already existed; this is it. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgedelete"></a>
# **KnowledgeDelete**
> KbOkResponse KnowledgeDelete (string id)

Delete a base and its folder.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |

### Return type

[**KbOkResponse**](KbOkResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Deleted. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgedocuments"></a>
# **KnowledgeDocuments**
> KbDocuments KnowledgeDocuments (string id)

The documents in a base.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |

### Return type

[**KbDocuments**](KbDocuments.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The documents. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgeembed"></a>
# **KnowledgeEmbed**
> KbEmbedResponse KnowledgeEmbed (string id, Object body = null)

Embed every passage that has no vector yet, and say where the embedder stands.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **body** | **Object** |  | [optional]  |

### Return type

[**KbEmbedResponse**](KbEmbedResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | How many were embedded now, how many vectors the base holds, and the embedder&#39;s state (&#x60;ready&#x60;, &#x60;downloading&#x60; with &#x60;progress&#x60;, &#x60;off&#x60;). |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgegraph"></a>
# **KnowledgeGraph**
> KbGraphResponse KnowledgeGraph (string id, KbGraphRequest kbGraphRequest)

What connects to a node — its neighbours up to `hops` away — or the path between two.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **kbGraphRequest** | [**KbGraphRequest**](KbGraphRequest.md) |  |  |

### Return type

[**KbGraphResponse**](KbGraphResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The node resolved (or &#x60;null&#x60;), its neighbours, the path when &#x60;to&#x60; was given. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgelist"></a>
# **KnowledgeList**
> KbList KnowledgeList ()

The knowledge bases on this machine.

Each base with its id, name, document count, vector count and model. Loads no passages.


### Parameters
This endpoint does not need any parameter.
### Return type

[**KbList**](KbList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The bases. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgenote"></a>
# **KnowledgeNote**
> KbNoteResponse KnowledgeNote (string id, KbNoteRequest kbNoteRequest)

File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.

How a base improves over time. A note is indexed and searched as its own lane and shown with its status; `status: accepted` is honoured only from a caller with the token (the person, or a client acting for them) — any other caller's note is filed as `proposed`. Unknown cites are dropped. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **kbNoteRequest** | [**KbNoteRequest**](KbNoteRequest.md) |  |  |

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Filed. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgenotestatus"></a>
# **KnowledgeNoteStatus**
> KbNoteResponse KnowledgeNoteStatus (string id, string note, KbNoteStatusRequest kbNoteStatusRequest)

Accept a proposed note, withdraw it to proposed, or remove it.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **note** | **string** | The note id. |  |
| **kbNoteStatusRequest** | [**KbNoteStatusRequest**](KbNoteStatusRequest.md) |  |  |

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The note after. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgenotes"></a>
# **KnowledgeNotes**
> KbNotes KnowledgeNotes (string id)

The notes filed into a base.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |

### Return type

[**KbNotes**](KbNotes.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The notes. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgeoutline"></a>
# **KnowledgeOutline**
> KbOutline KnowledgeOutline (string id, string doc = null)

The table of contents a document's headings imply — every section once, with where it starts.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **doc** | **string** | One document; omit for all. | [optional]  |

### Return type

[**KbOutline**](KbOutline.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The outline. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgepage"></a>
# **KnowledgePage**
> KbPage KnowledgePage (string id, string doc, int page = null)

One page of a document, from the index.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **doc** | **string** | The document id. |  |
| **page** | **int** | The page to read. | [optional] [default to 1] |

### Return type

[**KbPage**](KbPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The page. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgepassage"></a>
# **KnowledgePassage**
> KbPassage KnowledgePassage (string id, string passage)

One passage by id, with its citation.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **passage** | **string** | A passage id (&#x60;&lt;doc&gt;#&lt;n&gt;&#x60;) or a note id (&#x60;note:&lt;id&gt;&#x60;). |  |

### Return type

[**KbPassage**](KbPassage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The passage. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgeremovedocument"></a>
# **KnowledgeRemoveDocument**
> KbStatusResponse KnowledgeRemoveDocument (string id, string doc)

Remove a document, its passages and vectors (notes keep their text and lose the cite).


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **doc** | **string** | The document id. |  |

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Removed; the base&#39;s status after. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgereport"></a>
# **KnowledgeReport**
> string KnowledgeReport (string id)

The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |

### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/markdown, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The report. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgeresearch"></a>
# **KnowledgeResearch**
> KbResearchResponse KnowledgeResearch (string id, KbResearchRequest kbResearchRequest)

The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.

The harness's loop (events kb-research.js), not a model's tool calls: a whole-document ask (\"what is this about\") reads the outline and the opening of each section; a focused one searches, reads the best passages grouped by document in page order, and — with `model` (TOKEN-GATED: the check runs on this gateway's own chat route) — asks that model once whether what was read answers it, then searches once more for what it says is missing. When the hits split evenly across documents and the question names none, the answer is `ask` (which document?) instead of a guess; call again with `answer` to go on, or `ask: false` to never pause. `attachment` is the block a client attaches before the question (`kind: prefetch`), `null` when nothing matched beyond the plain statement. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **kbResearchRequest** | [**KbResearchRequest**](KbResearchRequest.md) |  |  |

### Return type

[**KbResearchResponse**](KbResearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The traversal, the block, or the question for the person. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | &#x60;model&#x60; from a caller without the token (&#x60;forbidden&#x60;). |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgesearch"></a>
# **KnowledgeSearch**
> KbSearchResponse KnowledgeSearch (string id, KbSearchRequest kbSearchRequest)

The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.

The words in up to four query shapes (BM25), the meaning when the base has vectors (the query embedded by the same model), the graph's one-hop expansion of the best hits (a passage sharing a name or a section with a hit, and `via` says which), and the notes as their own lane — fused by Reciprocal Rank Fusion with the graph at half weight, then the gateway's reranker fused in (never substituted). Each result carries `lanes` (which found it), `scores` (each lane's own, comparable within one query) and `cite` as the model is told to write it (`[report.pdf p.12]`). `docs` scopes to documents; `queries` adds the caller's own phrasings. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **kbSearchRequest** | [**KbSearchRequest**](KbSearchRequest.md) |  |  |

### Return type

[**KbSearchResponse**](KbSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The results, best first. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgesetaccess"></a>
# **KnowledgeSetAccess**
> KbAccessResponse KnowledgeSetAccess (string id, KbAccessRequest kbAccessRequest)

Grant a base to every agent or to the ones named — the owner's act.

Grants (docs/knowledge-base.md §3, \"knowledge is granted like skills\"): a caller with the token or the extension's origin is the owner and reaches every base; any other caller names itself (`X-ChatPanel-Agent: claude`, or `?agent=`) — the gateway's own MCP server sends the connected client's name — and reaches the bases whose `access.agents` is `all` (the default) or names it. `GET /v1/kb` lists only those; a base not granted reads as 404 to that caller. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |
| **kbAccessRequest** | [**KbAccessRequest**](KbAccessRequest.md) |  |  |

### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The grant after. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="knowledgestatus"></a>
# **KnowledgeStatus**
> KbStatusResponse KnowledgeStatus (string id)

What a base holds — its documents, passages, notes, vectors, entities and connections.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | The base id. |  |

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The base. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

