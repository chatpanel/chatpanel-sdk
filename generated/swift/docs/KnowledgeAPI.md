# KnowledgeAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**knowledgeAccess**](KnowledgeAPI.md#knowledgeaccess) | **GET** /v1/kb/{id}/access | Who may use a base — every agent, or the ones named.
[**knowledgeAdd**](KnowledgeAPI.md#knowledgeadd) | **POST** /v1/kb/{id}/documents | Add a document — bytes, a path on this machine, a URL, or text — and index it.
[**knowledgeCreate**](KnowledgeAPI.md#knowledgecreate) | **POST** /v1/kb | Create a knowledge base (or return the one with that id).
[**knowledgeDelete**](KnowledgeAPI.md#knowledgedelete) | **DELETE** /v1/kb/{id} | Delete a base and its folder.
[**knowledgeDocuments**](KnowledgeAPI.md#knowledgedocuments) | **GET** /v1/kb/{id}/documents | The documents in a base.
[**knowledgeEmbed**](KnowledgeAPI.md#knowledgeembed) | **POST** /v1/kb/{id}/embed | Embed every passage that has no vector yet, and say where the embedder stands.
[**knowledgeGraph**](KnowledgeAPI.md#knowledgegraph) | **POST** /v1/kb/{id}/graph | What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two.
[**knowledgeList**](KnowledgeAPI.md#knowledgelist) | **GET** /v1/kb | The knowledge bases on this machine.
[**knowledgeNote**](KnowledgeAPI.md#knowledgenote) | **POST** /v1/kb/{id}/notes | File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.
[**knowledgeNoteStatus**](KnowledgeAPI.md#knowledgenotestatus) | **POST** /v1/kb/{id}/notes/{note} | Accept a proposed note, withdraw it to proposed, or remove it.
[**knowledgeNotes**](KnowledgeAPI.md#knowledgenotes) | **GET** /v1/kb/{id}/notes | The notes filed into a base.
[**knowledgeOutline**](KnowledgeAPI.md#knowledgeoutline) | **GET** /v1/kb/{id}/outline | The table of contents a document&#39;s headings imply — every section once, with where it starts.
[**knowledgePage**](KnowledgeAPI.md#knowledgepage) | **GET** /v1/kb/{id}/documents/{doc} | One page of a document, from the index.
[**knowledgePassage**](KnowledgeAPI.md#knowledgepassage) | **GET** /v1/kb/{id}/passages/{passage} | One passage by id, with its citation.
[**knowledgeRemoveDocument**](KnowledgeAPI.md#knowledgeremovedocument) | **DELETE** /v1/kb/{id}/documents/{doc} | Remove a document, its passages and vectors (notes keep their text and lose the cite).
[**knowledgeReport**](KnowledgeAPI.md#knowledgereport) | **GET** /v1/kb/{id}/report | The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.
[**knowledgeResearch**](KnowledgeAPI.md#knowledgeresearch) | **POST** /v1/kb/{id}/research | The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.
[**knowledgeSearch**](KnowledgeAPI.md#knowledgesearch) | **POST** /v1/kb/{id}/search | The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.
[**knowledgeSetAccess**](KnowledgeAPI.md#knowledgesetaccess) | **POST** /v1/kb/{id}/access | Grant a base to every agent or to the ones named — the owner&#39;s act.
[**knowledgeStatus**](KnowledgeAPI.md#knowledgestatus) | **GET** /v1/kb/{id} | What a base holds — its documents, passages, notes, vectors, entities and connections.


# **knowledgeAccess**
```swift
    open class func knowledgeAccess(id: String, completion: @escaping (_ data: KbAccessResponse?, _ error: Error?) -> Void)
```

Who may use a base — every agent, or the ones named.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.

// Who may use a base — every agent, or the ones named.
KnowledgeAPI.knowledgeAccess(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 

### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeAdd**
```swift
    open class func knowledgeAdd(id: String, kbAddRequest: KbAddRequest, completion: @escaping (_ data: KbAddResponse?, _ error: Error?) -> Void)
```

Add a document — bytes, a path on this machine, a URL, or text — and index it.

One of four sources: `name` + `data` (the file, base64, up to 64 MB — a PDF, DOCX, XLSX, PPTX, ODF, Markdown or text, parsed in the extract worker); `path` (a file or folder on this machine, walked with the same refusals the `files` tool applies — credential stores withheld and named, `node_modules` and hidden folders skipped, documents up to 64 MB; TOKEN-GATED: a path is a read on the machine, so it is 403 to a caller without the token or the extension origin); `url` (a public page through the `read` capability); `text`. The same bytes added again REPLACE the document. Passages are chunked by the document's own headings with page citations, indexed by words and in the graph, and embedded when the embedder's model is on disk (`embedded` says how many); the report is rewritten. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let kbAddRequest = KbAddRequest(name: "name_example", type: "type_example", data: 123, path: "path_example", recursive: false, include: ["include_example"], url: "url_example", text: "text_example", title: "title_example", reach: "reach_example") // KbAddRequest | 

// Add a document — bytes, a path on this machine, a URL, or text — and index it.
KnowledgeAPI.knowledgeAdd(id: id, kbAddRequest: kbAddRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **kbAddRequest** | [**KbAddRequest**](KbAddRequest.md) |  | 

### Return type

[**KbAddResponse**](KbAddResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeCreate**
```swift
    open class func knowledgeCreate(kbCreateRequest: KbCreateRequest, completion: @escaping (_ data: KbStatusResponse?, _ error: Error?) -> Void)
```

Create a knowledge base (or return the one with that id).

A base is a folder under `~/.chatpanel/kb/<id>/` (manifest, passages, notes, vectors, a Markdown report) — a projection over the documents added to it, rebuildable from them. `embed: off` keeps it on words and the graph only. 201 when created, 200 with `existed` when the id was already there. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let kbCreateRequest = KbCreateRequest(id: "id_example", name: "name_example", embed: "embed_example") // KbCreateRequest | 

// Create a knowledge base (or return the one with that id).
KnowledgeAPI.knowledgeCreate(kbCreateRequest: kbCreateRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kbCreateRequest** | [**KbCreateRequest**](KbCreateRequest.md) |  | 

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeDelete**
```swift
    open class func knowledgeDelete(id: String, completion: @escaping (_ data: KbOkResponse?, _ error: Error?) -> Void)
```

Delete a base and its folder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.

// Delete a base and its folder.
KnowledgeAPI.knowledgeDelete(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 

### Return type

[**KbOkResponse**](KbOkResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeDocuments**
```swift
    open class func knowledgeDocuments(id: String, completion: @escaping (_ data: KbDocuments?, _ error: Error?) -> Void)
```

The documents in a base.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.

// The documents in a base.
KnowledgeAPI.knowledgeDocuments(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 

### Return type

[**KbDocuments**](KbDocuments.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeEmbed**
```swift
    open class func knowledgeEmbed(id: String, body: JSONValue? = nil, completion: @escaping (_ data: KbEmbedResponse?, _ error: Error?) -> Void)
```

Embed every passage that has no vector yet, and say where the embedder stands.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let body = "TODO" // JSONValue |  (optional)

// Embed every passage that has no vector yet, and say where the embedder stands.
KnowledgeAPI.knowledgeEmbed(id: id, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **body** | **JSONValue** |  | [optional] 

### Return type

[**KbEmbedResponse**](KbEmbedResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeGraph**
```swift
    open class func knowledgeGraph(id: String, kbGraphRequest: KbGraphRequest, completion: @escaping (_ data: KbGraphResponse?, _ error: Error?) -> Void)
```

What connects to a node — its neighbours up to `hops` away — or the path between two.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let kbGraphRequest = KbGraphRequest(node: "node_example", to: "to_example", hops: 123, kinds: ["kinds_example"], limit: 123) // KbGraphRequest | 

// What connects to a node — its neighbours up to `hops` away — or the path between two.
KnowledgeAPI.knowledgeGraph(id: id, kbGraphRequest: kbGraphRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **kbGraphRequest** | [**KbGraphRequest**](KbGraphRequest.md) |  | 

### Return type

[**KbGraphResponse**](KbGraphResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeList**
```swift
    open class func knowledgeList(completion: @escaping (_ data: KbList?, _ error: Error?) -> Void)
```

The knowledge bases on this machine.

Each base with its id, name, document count, vector count and model. Loads no passages.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// The knowledge bases on this machine.
KnowledgeAPI.knowledgeList() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
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
```swift
    open class func knowledgeNote(id: String, kbNoteRequest: KbNoteRequest, completion: @escaping (_ data: KbNoteResponse?, _ error: Error?) -> Void)
```

File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.

How a base improves over time. A note is indexed and searched as its own lane and shown with its status; `status: accepted` is honoured only from a caller with the token (the person, or a client acting for them) — any other caller's note is filed as `proposed`. Unknown cites are dropped. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let kbNoteRequest = KbNoteRequest(text: "text_example", cites: ["cites_example"], status: "status_example", by: "by_example") // KbNoteRequest | 

// File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.
KnowledgeAPI.knowledgeNote(id: id, kbNoteRequest: kbNoteRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **kbNoteRequest** | [**KbNoteRequest**](KbNoteRequest.md) |  | 

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeNoteStatus**
```swift
    open class func knowledgeNoteStatus(id: String, note: String, kbNoteStatusRequest: KbNoteStatusRequest, completion: @escaping (_ data: KbNoteResponse?, _ error: Error?) -> Void)
```

Accept a proposed note, withdraw it to proposed, or remove it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let note = "note_example" // String | The note id.
let kbNoteStatusRequest = KbNoteStatusRequest(status: "status_example") // KbNoteStatusRequest | 

// Accept a proposed note, withdraw it to proposed, or remove it.
KnowledgeAPI.knowledgeNoteStatus(id: id, note: note, kbNoteStatusRequest: kbNoteStatusRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **note** | **String** | The note id. | 
 **kbNoteStatusRequest** | [**KbNoteStatusRequest**](KbNoteStatusRequest.md) |  | 

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeNotes**
```swift
    open class func knowledgeNotes(id: String, completion: @escaping (_ data: KbNotes?, _ error: Error?) -> Void)
```

The notes filed into a base.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.

// The notes filed into a base.
KnowledgeAPI.knowledgeNotes(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 

### Return type

[**KbNotes**](KbNotes.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeOutline**
```swift
    open class func knowledgeOutline(id: String, doc: String? = nil, completion: @escaping (_ data: KbOutline?, _ error: Error?) -> Void)
```

The table of contents a document's headings imply — every section once, with where it starts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let doc = "doc_example" // String | One document; omit for all. (optional)

// The table of contents a document's headings imply — every section once, with where it starts.
KnowledgeAPI.knowledgeOutline(id: id, doc: doc) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **doc** | **String** | One document; omit for all. | [optional] 

### Return type

[**KbOutline**](KbOutline.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgePage**
```swift
    open class func knowledgePage(id: String, doc: String, page: Int? = nil, completion: @escaping (_ data: KbPage?, _ error: Error?) -> Void)
```

One page of a document, from the index.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let doc = "doc_example" // String | The document id.
let page = 987 // Int | The page to read. (optional) (default to 1)

// One page of a document, from the index.
KnowledgeAPI.knowledgePage(id: id, doc: doc, page: page) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **doc** | **String** | The document id. | 
 **page** | **Int** | The page to read. | [optional] [default to 1]

### Return type

[**KbPage**](KbPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgePassage**
```swift
    open class func knowledgePassage(id: String, passage: String, completion: @escaping (_ data: KbPassage?, _ error: Error?) -> Void)
```

One passage by id, with its citation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let passage = "passage_example" // String | A passage id (`<doc>#<n>`) or a note id (`note:<id>`).

// One passage by id, with its citation.
KnowledgeAPI.knowledgePassage(id: id, passage: passage) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **passage** | **String** | A passage id (&#x60;&lt;doc&gt;#&lt;n&gt;&#x60;) or a note id (&#x60;note:&lt;id&gt;&#x60;). | 

### Return type

[**KbPassage**](KbPassage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeRemoveDocument**
```swift
    open class func knowledgeRemoveDocument(id: String, doc: String, completion: @escaping (_ data: KbStatusResponse?, _ error: Error?) -> Void)
```

Remove a document, its passages and vectors (notes keep their text and lose the cite).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let doc = "doc_example" // String | The document id.

// Remove a document, its passages and vectors (notes keep their text and lose the cite).
KnowledgeAPI.knowledgeRemoveDocument(id: id, doc: doc) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **doc** | **String** | The document id. | 

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeReport**
```swift
    open class func knowledgeReport(id: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.

// The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.
KnowledgeAPI.knowledgeReport(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/markdown, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeResearch**
```swift
    open class func knowledgeResearch(id: String, kbResearchRequest: KbResearchRequest, completion: @escaping (_ data: KbResearchResponse?, _ error: Error?) -> Void)
```

The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.

The harness's loop (events kb-research.js), not a model's tool calls: a whole-document ask (\"what is this about\") reads the outline and the opening of each section; a focused one searches, reads the best passages grouped by document in page order, and — with `model` (TOKEN-GATED: the check runs on this gateway's own chat route) — asks that model once whether what was read answers it, then searches once more for what it says is missing. When the hits split evenly across documents and the question names none, the answer is `ask` (which document?) instead of a guess; call again with `answer` to go on, or `ask: false` to never pause. `attachment` is the block a client attaches before the question (`kind: prefetch`), `null` when nothing matched beyond the plain statement. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let kbResearchRequest = KbResearchRequest(question: "question_example", answer: "answer_example", ask: false, model: "model_example", previous: "TODO", docs: ["docs_example"]) // KbResearchRequest | 

// The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.
KnowledgeAPI.knowledgeResearch(id: id, kbResearchRequest: kbResearchRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **kbResearchRequest** | [**KbResearchRequest**](KbResearchRequest.md) |  | 

### Return type

[**KbResearchResponse**](KbResearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeSearch**
```swift
    open class func knowledgeSearch(id: String, kbSearchRequest: KbSearchRequest, completion: @escaping (_ data: KbSearchResponse?, _ error: Error?) -> Void)
```

The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.

The words in up to four query shapes (BM25), the meaning when the base has vectors (the query embedded by the same model), the graph's one-hop expansion of the best hits (a passage sharing a name or a section with a hit, and `via` says which), and the notes as their own lane — fused by Reciprocal Rank Fusion with the graph at half weight, then the gateway's reranker fused in (never substituted). Each result carries `lanes` (which found it), `scores` (each lane's own, comparable within one query) and `cite` as the model is told to write it (`[report.pdf p.12]`). `docs` scopes to documents; `queries` adds the caller's own phrasings. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let kbSearchRequest = KbSearchRequest(query: "query_example", limit: 123, hops: 123, docs: ["docs_example"], queries: ["queries_example"], rerank: false, budgetMs: 123) // KbSearchRequest | 

// The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.
KnowledgeAPI.knowledgeSearch(id: id, kbSearchRequest: kbSearchRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **kbSearchRequest** | [**KbSearchRequest**](KbSearchRequest.md) |  | 

### Return type

[**KbSearchResponse**](KbSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeSetAccess**
```swift
    open class func knowledgeSetAccess(id: String, kbAccessRequest: KbAccessRequest, completion: @escaping (_ data: KbAccessResponse?, _ error: Error?) -> Void)
```

Grant a base to every agent or to the ones named — the owner's act.

Grants (docs/knowledge-base.md §3, \"knowledge is granted like skills\"): a caller with the token or the extension's origin is the owner and reaches every base; any other caller names itself (`X-ChatPanel-Agent: claude`, or `?agent=`) — the gateway's own MCP server sends the connected client's name — and reaches the bases whose `access.agents` is `all` (the default) or names it. `GET /v1/kb` lists only those; a base not granted reads as 404 to that caller. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.
let kbAccessRequest = KbAccessRequest(agents: KbAccessRequest_agents()) // KbAccessRequest | 

// Grant a base to every agent or to the ones named — the owner's act.
KnowledgeAPI.knowledgeSetAccess(id: id, kbAccessRequest: kbAccessRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 
 **kbAccessRequest** | [**KbAccessRequest**](KbAccessRequest.md) |  | 

### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **knowledgeStatus**
```swift
    open class func knowledgeStatus(id: String, completion: @escaping (_ data: KbStatusResponse?, _ error: Error?) -> Void)
```

What a base holds — its documents, passages, notes, vectors, entities and connections.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | The base id.

// What a base holds — its documents, passages, notes, vectors, entities and connections.
KnowledgeAPI.knowledgeStatus(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The base id. | 

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

