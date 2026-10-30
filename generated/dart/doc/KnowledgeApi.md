# chatpanel.api.KnowledgeApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**knowledgeAccess**](KnowledgeApi.md#knowledgeaccess) | **GET** /v1/kb/{id}/access | Who may use a base — every agent, or the ones named.
[**knowledgeAdd**](KnowledgeApi.md#knowledgeadd) | **POST** /v1/kb/{id}/documents | Add a document — bytes, a path on this machine, a URL, or text — and index it.
[**knowledgeCreate**](KnowledgeApi.md#knowledgecreate) | **POST** /v1/kb | Create a knowledge base (or return the one with that id).
[**knowledgeDelete**](KnowledgeApi.md#knowledgedelete) | **DELETE** /v1/kb/{id} | Delete a base and its folder.
[**knowledgeDocuments**](KnowledgeApi.md#knowledgedocuments) | **GET** /v1/kb/{id}/documents | The documents in a base.
[**knowledgeEmbed**](KnowledgeApi.md#knowledgeembed) | **POST** /v1/kb/{id}/embed | Embed every passage that has no vector yet, and say where the embedder stands.
[**knowledgeGraph**](KnowledgeApi.md#knowledgegraph) | **POST** /v1/kb/{id}/graph | What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two.
[**knowledgeList**](KnowledgeApi.md#knowledgelist) | **GET** /v1/kb | The knowledge bases on this machine.
[**knowledgeNote**](KnowledgeApi.md#knowledgenote) | **POST** /v1/kb/{id}/notes | File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.
[**knowledgeNoteStatus**](KnowledgeApi.md#knowledgenotestatus) | **POST** /v1/kb/{id}/notes/{note} | Accept a proposed note, withdraw it to proposed, or remove it.
[**knowledgeNotes**](KnowledgeApi.md#knowledgenotes) | **GET** /v1/kb/{id}/notes | The notes filed into a base.
[**knowledgeOutline**](KnowledgeApi.md#knowledgeoutline) | **GET** /v1/kb/{id}/outline | The table of contents a document&#39;s headings imply — every section once, with where it starts.
[**knowledgePage**](KnowledgeApi.md#knowledgepage) | **GET** /v1/kb/{id}/documents/{doc} | One page of a document, from the index.
[**knowledgePassage**](KnowledgeApi.md#knowledgepassage) | **GET** /v1/kb/{id}/passages/{passage} | One passage by id, with its citation.
[**knowledgeRemoveDocument**](KnowledgeApi.md#knowledgeremovedocument) | **DELETE** /v1/kb/{id}/documents/{doc} | Remove a document, its passages and vectors (notes keep their text and lose the cite).
[**knowledgeReport**](KnowledgeApi.md#knowledgereport) | **GET** /v1/kb/{id}/report | The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.
[**knowledgeResearch**](KnowledgeApi.md#knowledgeresearch) | **POST** /v1/kb/{id}/research | The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.
[**knowledgeSearch**](KnowledgeApi.md#knowledgesearch) | **POST** /v1/kb/{id}/search | The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.
[**knowledgeSetAccess**](KnowledgeApi.md#knowledgesetaccess) | **POST** /v1/kb/{id}/access | Grant a base to every agent or to the ones named — the owner&#39;s act.
[**knowledgeStatus**](KnowledgeApi.md#knowledgestatus) | **GET** /v1/kb/{id} | What a base holds — its documents, passages, notes, vectors, entities and connections.


# **knowledgeAccess**
> KbAccessResponse knowledgeAccess(id)

Who may use a base — every agent, or the ones named.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.

try {
    final response = api.knowledgeAccess(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeAccess: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 

### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeAdd**
> KbAddResponse knowledgeAdd(id, kbAddRequest)

Add a document — bytes, a path on this machine, a URL, or text — and index it.

One of four sources: `name` + `data` (the file, base64, up to 64 MB — a PDF, DOCX, XLSX, PPTX, ODF, Markdown or text, parsed in the extract worker); `path` (a file or folder on this machine, walked with the same refusals the `files` tool applies — credential stores withheld and named, `node_modules` and hidden folders skipped, documents up to 64 MB; TOKEN-GATED: a path is a read on the machine, so it is 403 to a caller without the token or the extension origin); `url` (a public page through the `read` capability); `text`. The same bytes added again REPLACE the document. Passages are chunked by the document's own headings with page citations, indexed by words and in the graph, and embedded when the embedder's model is on disk (`embedded` says how many); the report is rewritten. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final KbAddRequest kbAddRequest = ; // KbAddRequest | 

try {
    final response = api.knowledgeAdd(id, kbAddRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeAdd: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **kbAddRequest** | [**KbAddRequest**](KbAddRequest.md)|  | 

### Return type

[**KbAddResponse**](KbAddResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeCreate**
> KbStatusResponse knowledgeCreate(kbCreateRequest)

Create a knowledge base (or return the one with that id).

A base is a folder under `~/.chatpanel/kb/<id>/` (manifest, passages, notes, vectors, a Markdown report) — a projection over the documents added to it, rebuildable from them. `embed: off` keeps it on words and the graph only. 201 when created, 200 with `existed` when the id was already there. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final KbCreateRequest kbCreateRequest = ; // KbCreateRequest | 

try {
    final response = api.knowledgeCreate(kbCreateRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kbCreateRequest** | [**KbCreateRequest**](KbCreateRequest.md)|  | 

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeDelete**
> KbOkResponse knowledgeDelete(id)

Delete a base and its folder.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.

try {
    final response = api.knowledgeDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 

### Return type

[**KbOkResponse**](KbOkResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeDocuments**
> KbDocuments knowledgeDocuments(id)

The documents in a base.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.

try {
    final response = api.knowledgeDocuments(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeDocuments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 

### Return type

[**KbDocuments**](KbDocuments.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeEmbed**
> KbEmbedResponse knowledgeEmbed(id, body)

Embed every passage that has no vector yet, and say where the embedder stands.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.knowledgeEmbed(id, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeEmbed: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **body** | **JsonObject**|  | [optional] 

### Return type

[**KbEmbedResponse**](KbEmbedResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeGraph**
> KbGraphResponse knowledgeGraph(id, kbGraphRequest)

What connects to a node — its neighbours up to `hops` away — or the path between two.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final KbGraphRequest kbGraphRequest = ; // KbGraphRequest | 

try {
    final response = api.knowledgeGraph(id, kbGraphRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeGraph: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **kbGraphRequest** | [**KbGraphRequest**](KbGraphRequest.md)|  | 

### Return type

[**KbGraphResponse**](KbGraphResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeList**
> KbList knowledgeList()

The knowledge bases on this machine.

Each base with its id, name, document count, vector count and model. Loads no passages.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();

try {
    final response = api.knowledgeList();
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**KbList**](KbList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeNote**
> KbNoteResponse knowledgeNote(id, kbNoteRequest)

File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.

How a base improves over time. A note is indexed and searched as its own lane and shown with its status; `status: accepted` is honoured only from a caller with the token (the person, or a client acting for them) — any other caller's note is filed as `proposed`. Unknown cites are dropped. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final KbNoteRequest kbNoteRequest = ; // KbNoteRequest | 

try {
    final response = api.knowledgeNote(id, kbNoteRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeNote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **kbNoteRequest** | [**KbNoteRequest**](KbNoteRequest.md)|  | 

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeNoteStatus**
> KbNoteResponse knowledgeNoteStatus(id, note, kbNoteStatusRequest)

Accept a proposed note, withdraw it to proposed, or remove it.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final String note = note_example; // String | The note id.
final KbNoteStatusRequest kbNoteStatusRequest = ; // KbNoteStatusRequest | 

try {
    final response = api.knowledgeNoteStatus(id, note, kbNoteStatusRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeNoteStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **note** | **String**| The note id. | 
 **kbNoteStatusRequest** | [**KbNoteStatusRequest**](KbNoteStatusRequest.md)|  | 

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeNotes**
> KbNotes knowledgeNotes(id)

The notes filed into a base.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.

try {
    final response = api.knowledgeNotes(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeNotes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 

### Return type

[**KbNotes**](KbNotes.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeOutline**
> KbOutline knowledgeOutline(id, doc)

The table of contents a document's headings imply — every section once, with where it starts.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final String doc = doc_example; // String | One document; omit for all.

try {
    final response = api.knowledgeOutline(id, doc);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeOutline: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **doc** | **String**| One document; omit for all. | [optional] 

### Return type

[**KbOutline**](KbOutline.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgePage**
> KbPage knowledgePage(id, doc, page)

One page of a document, from the index.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final String doc = doc_example; // String | The document id.
final int page = 56; // int | The page to read.

try {
    final response = api.knowledgePage(id, doc, page);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgePage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **doc** | **String**| The document id. | 
 **page** | **int**| The page to read. | [optional] [default to 1]

### Return type

[**KbPage**](KbPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgePassage**
> KbPassage knowledgePassage(id, passage)

One passage by id, with its citation.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final String passage = passage_example; // String | A passage id (`<doc>#<n>`) or a note id (`note:<id>`).

try {
    final response = api.knowledgePassage(id, passage);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgePassage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **passage** | **String**| A passage id (`<doc>#<n>`) or a note id (`note:<id>`). | 

### Return type

[**KbPassage**](KbPassage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeRemoveDocument**
> KbStatusResponse knowledgeRemoveDocument(id, doc)

Remove a document, its passages and vectors (notes keep their text and lose the cite).

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final String doc = doc_example; // String | The document id.

try {
    final response = api.knowledgeRemoveDocument(id, doc);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeRemoveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **doc** | **String**| The document id. | 

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeReport**
> String knowledgeReport(id)

The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.

try {
    final response = api.knowledgeReport(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/markdown, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeResearch**
> KbResearchResponse knowledgeResearch(id, kbResearchRequest)

The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.

The harness's loop (events kb-research.js), not a model's tool calls: a whole-document ask (\"what is this about\") reads the outline and the opening of each section; a focused one searches, reads the best passages grouped by document in page order, and — with `model` (TOKEN-GATED: the check runs on this gateway's own chat route) — asks that model once whether what was read answers it, then searches once more for what it says is missing. When the hits split evenly across documents and the question names none, the answer is `ask` (which document?) instead of a guess; call again with `answer` to go on, or `ask: false` to never pause. `attachment` is the block a client attaches before the question (`kind: prefetch`), `null` when nothing matched beyond the plain statement. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final KbResearchRequest kbResearchRequest = ; // KbResearchRequest | 

try {
    final response = api.knowledgeResearch(id, kbResearchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeResearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **kbResearchRequest** | [**KbResearchRequest**](KbResearchRequest.md)|  | 

### Return type

[**KbResearchResponse**](KbResearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeSearch**
> KbSearchResponse knowledgeSearch(id, kbSearchRequest)

The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.

The words in up to four query shapes (BM25), the meaning when the base has vectors (the query embedded by the same model), the graph's one-hop expansion of the best hits (a passage sharing a name or a section with a hit, and `via` says which), and the notes as their own lane — fused by Reciprocal Rank Fusion with the graph at half weight, then the gateway's reranker fused in (never substituted). Each result carries `lanes` (which found it), `scores` (each lane's own, comparable within one query) and `cite` as the model is told to write it (`[report.pdf p.12]`). `docs` scopes to documents; `queries` adds the caller's own phrasings. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final KbSearchRequest kbSearchRequest = ; // KbSearchRequest | 

try {
    final response = api.knowledgeSearch(id, kbSearchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **kbSearchRequest** | [**KbSearchRequest**](KbSearchRequest.md)|  | 

### Return type

[**KbSearchResponse**](KbSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeSetAccess**
> KbAccessResponse knowledgeSetAccess(id, kbAccessRequest)

Grant a base to every agent or to the ones named — the owner's act.

Grants (docs/knowledge-base.md §3, \"knowledge is granted like skills\"): a caller with the token or the extension's origin is the owner and reaches every base; any other caller names itself (`X-ChatPanel-Agent: claude`, or `?agent=`) — the gateway's own MCP server sends the connected client's name — and reaches the bases whose `access.agents` is `all` (the default) or names it. `GET /v1/kb` lists only those; a base not granted reads as 404 to that caller. 

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.
final KbAccessRequest kbAccessRequest = ; // KbAccessRequest | 

try {
    final response = api.knowledgeSetAccess(id, kbAccessRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeSetAccess: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 
 **kbAccessRequest** | [**KbAccessRequest**](KbAccessRequest.md)|  | 

### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeStatus**
> KbStatusResponse knowledgeStatus(id)

What a base holds — its documents, passages, notes, vectors, entities and connections.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getKnowledgeApi();
final String id = id_example; // String | The base id.

try {
    final response = api.knowledgeStatus(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KnowledgeApi->knowledgeStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The base id. | 

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

