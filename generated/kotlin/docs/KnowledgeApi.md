# KnowledgeApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**knowledgeAccess**](KnowledgeApi.md#knowledgeAccess) | **GET** /v1/kb/{id}/access | Who may use a base — every agent, or the ones named. |
| [**knowledgeAdd**](KnowledgeApi.md#knowledgeAdd) | **POST** /v1/kb/{id}/documents | Add a document — bytes, a path on this machine, a URL, or text — and index it. |
| [**knowledgeCreate**](KnowledgeApi.md#knowledgeCreate) | **POST** /v1/kb | Create a knowledge base (or return the one with that id). |
| [**knowledgeDelete**](KnowledgeApi.md#knowledgeDelete) | **DELETE** /v1/kb/{id} | Delete a base and its folder. |
| [**knowledgeDocuments**](KnowledgeApi.md#knowledgeDocuments) | **GET** /v1/kb/{id}/documents | The documents in a base. |
| [**knowledgeEmbed**](KnowledgeApi.md#knowledgeEmbed) | **POST** /v1/kb/{id}/embed | Embed every passage that has no vector yet, and say where the embedder stands. |
| [**knowledgeGraph**](KnowledgeApi.md#knowledgeGraph) | **POST** /v1/kb/{id}/graph | What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two. |
| [**knowledgeList**](KnowledgeApi.md#knowledgeList) | **GET** /v1/kb | The knowledge bases on this machine. |
| [**knowledgeNote**](KnowledgeApi.md#knowledgeNote) | **POST** /v1/kb/{id}/notes | File a note — a fact, a summary, a correction — cited to passages; proposed until accepted. |
| [**knowledgeNoteStatus**](KnowledgeApi.md#knowledgeNoteStatus) | **POST** /v1/kb/{id}/notes/{note} | Accept a proposed note, withdraw it to proposed, or remove it. |
| [**knowledgeNotes**](KnowledgeApi.md#knowledgeNotes) | **GET** /v1/kb/{id}/notes | The notes filed into a base. |
| [**knowledgeOutline**](KnowledgeApi.md#knowledgeOutline) | **GET** /v1/kb/{id}/outline | The table of contents a document&#39;s headings imply — every section once, with where it starts. |
| [**knowledgePage**](KnowledgeApi.md#knowledgePage) | **GET** /v1/kb/{id}/documents/{doc} | One page of a document, from the index. |
| [**knowledgePassage**](KnowledgeApi.md#knowledgePassage) | **GET** /v1/kb/{id}/passages/{passage} | One passage by id, with its citation. |
| [**knowledgeRemoveDocument**](KnowledgeApi.md#knowledgeRemoveDocument) | **DELETE** /v1/kb/{id}/documents/{doc} | Remove a document, its passages and vectors (notes keep their text and lose the cite). |
| [**knowledgeReport**](KnowledgeApi.md#knowledgeReport) | **GET** /v1/kb/{id}/report | The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes. |
| [**knowledgeResearch**](KnowledgeApi.md#knowledgeResearch) | **POST** /v1/kb/{id}/research | The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model. |
| [**knowledgeSearch**](KnowledgeApi.md#knowledgeSearch) | **POST** /v1/kb/{id}/search | The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation. |
| [**knowledgeSetAccess**](KnowledgeApi.md#knowledgeSetAccess) | **POST** /v1/kb/{id}/access | Grant a base to every agent or to the ones named — the owner&#39;s act. |
| [**knowledgeStatus**](KnowledgeApi.md#knowledgeStatus) | **GET** /v1/kb/{id} | What a base holds — its documents, passages, notes, vectors, entities and connections. |


<a id="knowledgeAccess"></a>
# **knowledgeAccess**
> KbAccessResponse knowledgeAccess(id)

Who may use a base — every agent, or the ones named.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
try {
    val result : KbAccessResponse = apiInstance.knowledgeAccess(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeAccess")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeAccess")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |

### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="knowledgeAdd"></a>
# **knowledgeAdd**
> KbAddResponse knowledgeAdd(id, kbAddRequest)

Add a document — bytes, a path on this machine, a URL, or text — and index it.

One of four sources: &#x60;name&#x60; + &#x60;data&#x60; (the file, base64, up to 64 MB — a PDF, DOCX, XLSX, PPTX, ODF, Markdown or text, parsed in the extract worker); &#x60;path&#x60; (a file or folder on this machine, walked with the same refusals the &#x60;files&#x60; tool applies — credential stores withheld and named, &#x60;node_modules&#x60; and hidden folders skipped, documents up to 64 MB; TOKEN-GATED: a path is a read on the machine, so it is 403 to a caller without the token or the extension origin); &#x60;url&#x60; (a public page through the &#x60;read&#x60; capability); &#x60;text&#x60;. The same bytes added again REPLACE the document. Passages are chunked by the document&#39;s own headings with page citations, indexed by words and in the graph, and embedded when the embedder&#39;s model is on disk (&#x60;embedded&#x60; says how many); the report is rewritten. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val kbAddRequest : KbAddRequest =  // KbAddRequest | 
try {
    val result : KbAddResponse = apiInstance.knowledgeAdd(id, kbAddRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeAdd")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeAdd")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **kbAddRequest** | [**KbAddRequest**](KbAddRequest.md)|  | |

### Return type

[**KbAddResponse**](KbAddResponse.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="knowledgeCreate"></a>
# **knowledgeCreate**
> KbStatusResponse knowledgeCreate(kbCreateRequest)

Create a knowledge base (or return the one with that id).

A base is a folder under &#x60;~/.chatpanel/kb/&lt;id&gt;/&#x60; (manifest, passages, notes, vectors, a Markdown report) — a projection over the documents added to it, rebuildable from them. &#x60;embed: off&#x60; keeps it on words and the graph only. 201 when created, 200 with &#x60;existed&#x60; when the id was already there. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val kbCreateRequest : KbCreateRequest =  // KbCreateRequest | 
try {
    val result : KbStatusResponse = apiInstance.knowledgeCreate(kbCreateRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeCreate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeCreate")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **kbCreateRequest** | [**KbCreateRequest**](KbCreateRequest.md)|  | |

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="knowledgeDelete"></a>
# **knowledgeDelete**
> KbOkResponse knowledgeDelete(id)

Delete a base and its folder.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
try {
    val result : KbOkResponse = apiInstance.knowledgeDelete(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeDelete")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |

### Return type

[**KbOkResponse**](KbOkResponse.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="knowledgeDocuments"></a>
# **knowledgeDocuments**
> KbDocuments knowledgeDocuments(id)

The documents in a base.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
try {
    val result : KbDocuments = apiInstance.knowledgeDocuments(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeDocuments")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeDocuments")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |

### Return type

[**KbDocuments**](KbDocuments.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="knowledgeEmbed"></a>
# **knowledgeEmbed**
> KbEmbedResponse knowledgeEmbed(id, body)

Embed every passage that has no vector yet, and say where the embedder stands.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val body : kotlin.Any = Object // kotlin.Any | 
try {
    val result : KbEmbedResponse = apiInstance.knowledgeEmbed(id, body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeEmbed")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeEmbed")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **body** | **kotlin.Any**|  | [optional] |

### Return type

[**KbEmbedResponse**](KbEmbedResponse.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="knowledgeGraph"></a>
# **knowledgeGraph**
> KbGraphResponse knowledgeGraph(id, kbGraphRequest)

What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val kbGraphRequest : KbGraphRequest =  // KbGraphRequest | 
try {
    val result : KbGraphResponse = apiInstance.knowledgeGraph(id, kbGraphRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeGraph")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeGraph")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **kbGraphRequest** | [**KbGraphRequest**](KbGraphRequest.md)|  | |

### Return type

[**KbGraphResponse**](KbGraphResponse.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="knowledgeList"></a>
# **knowledgeList**
> KbList knowledgeList()

The knowledge bases on this machine.

Each base with its id, name, document count, vector count and model. Loads no passages.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
try {
    val result : KbList = apiInstance.knowledgeList()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeList")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**KbList**](KbList.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="knowledgeNote"></a>
# **knowledgeNote**
> KbNoteResponse knowledgeNote(id, kbNoteRequest)

File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.

How a base improves over time. A note is indexed and searched as its own lane and shown with its status; &#x60;status: accepted&#x60; is honoured only from a caller with the token (the person, or a client acting for them) — any other caller&#39;s note is filed as &#x60;proposed&#x60;. Unknown cites are dropped. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val kbNoteRequest : KbNoteRequest =  // KbNoteRequest | 
try {
    val result : KbNoteResponse = apiInstance.knowledgeNote(id, kbNoteRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeNote")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeNote")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **kbNoteRequest** | [**KbNoteRequest**](KbNoteRequest.md)|  | |

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="knowledgeNoteStatus"></a>
# **knowledgeNoteStatus**
> KbNoteResponse knowledgeNoteStatus(id, note, kbNoteStatusRequest)

Accept a proposed note, withdraw it to proposed, or remove it.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val note : kotlin.String = note_example // kotlin.String | The note id.
val kbNoteStatusRequest : KbNoteStatusRequest =  // KbNoteStatusRequest | 
try {
    val result : KbNoteResponse = apiInstance.knowledgeNoteStatus(id, note, kbNoteStatusRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeNoteStatus")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeNoteStatus")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **note** | **kotlin.String**| The note id. | |
| **kbNoteStatusRequest** | [**KbNoteStatusRequest**](KbNoteStatusRequest.md)|  | |

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="knowledgeNotes"></a>
# **knowledgeNotes**
> KbNotes knowledgeNotes(id)

The notes filed into a base.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
try {
    val result : KbNotes = apiInstance.knowledgeNotes(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeNotes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeNotes")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |

### Return type

[**KbNotes**](KbNotes.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="knowledgeOutline"></a>
# **knowledgeOutline**
> KbOutline knowledgeOutline(id, doc)

The table of contents a document&#39;s headings imply — every section once, with where it starts.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val doc : kotlin.String = doc_example // kotlin.String | One document; omit for all.
try {
    val result : KbOutline = apiInstance.knowledgeOutline(id, doc)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeOutline")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeOutline")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **doc** | **kotlin.String**| One document; omit for all. | [optional] |

### Return type

[**KbOutline**](KbOutline.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="knowledgePage"></a>
# **knowledgePage**
> KbPage knowledgePage(id, doc, page)

One page of a document, from the index.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val doc : kotlin.String = doc_example // kotlin.String | The document id.
val page : kotlin.Int = 56 // kotlin.Int | The page to read.
try {
    val result : KbPage = apiInstance.knowledgePage(id, doc, page)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgePage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgePage")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **doc** | **kotlin.String**| The document id. | |
| **page** | **kotlin.Int**| The page to read. | [optional] [default to 1] |

### Return type

[**KbPage**](KbPage.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="knowledgePassage"></a>
# **knowledgePassage**
> KbPassage knowledgePassage(id, passage)

One passage by id, with its citation.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val passage : kotlin.String = passage_example // kotlin.String | A passage id (`<doc>#<n>`) or a note id (`note:<id>`).
try {
    val result : KbPassage = apiInstance.knowledgePassage(id, passage)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgePassage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgePassage")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **passage** | **kotlin.String**| A passage id (&#x60;&lt;doc&gt;#&lt;n&gt;&#x60;) or a note id (&#x60;note:&lt;id&gt;&#x60;). | |

### Return type

[**KbPassage**](KbPassage.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="knowledgeRemoveDocument"></a>
# **knowledgeRemoveDocument**
> KbStatusResponse knowledgeRemoveDocument(id, doc)

Remove a document, its passages and vectors (notes keep their text and lose the cite).

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val doc : kotlin.String = doc_example // kotlin.String | The document id.
try {
    val result : KbStatusResponse = apiInstance.knowledgeRemoveDocument(id, doc)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeRemoveDocument")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeRemoveDocument")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **doc** | **kotlin.String**| The document id. | |

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="knowledgeReport"></a>
# **knowledgeReport**
> kotlin.String knowledgeReport(id)

The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
try {
    val result : kotlin.String = apiInstance.knowledgeReport(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeReport")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeReport")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |

### Return type

**kotlin.String**

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="knowledgeResearch"></a>
# **knowledgeResearch**
> KbResearchResponse knowledgeResearch(id, kbResearchRequest)

The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.

The harness&#39;s loop (events kb-research.js), not a model&#39;s tool calls: a whole-document ask (\&quot;what is this about\&quot;) reads the outline and the opening of each section; a focused one searches, reads the best passages grouped by document in page order, and — with &#x60;model&#x60; (TOKEN-GATED: the check runs on this gateway&#39;s own chat route) — asks that model once whether what was read answers it, then searches once more for what it says is missing. When the hits split evenly across documents and the question names none, the answer is &#x60;ask&#x60; (which document?) instead of a guess; call again with &#x60;answer&#x60; to go on, or &#x60;ask: false&#x60; to never pause. &#x60;attachment&#x60; is the block a client attaches before the question (&#x60;kind: prefetch&#x60;), &#x60;null&#x60; when nothing matched beyond the plain statement. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val kbResearchRequest : KbResearchRequest =  // KbResearchRequest | 
try {
    val result : KbResearchResponse = apiInstance.knowledgeResearch(id, kbResearchRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeResearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeResearch")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **kbResearchRequest** | [**KbResearchRequest**](KbResearchRequest.md)|  | |

### Return type

[**KbResearchResponse**](KbResearchResponse.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="knowledgeSearch"></a>
# **knowledgeSearch**
> KbSearchResponse knowledgeSearch(id, kbSearchRequest)

The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.

The words in up to four query shapes (BM25), the meaning when the base has vectors (the query embedded by the same model), the graph&#39;s one-hop expansion of the best hits (a passage sharing a name or a section with a hit, and &#x60;via&#x60; says which), and the notes as their own lane — fused by Reciprocal Rank Fusion with the graph at half weight, then the gateway&#39;s reranker fused in (never substituted). Each result carries &#x60;lanes&#x60; (which found it), &#x60;scores&#x60; (each lane&#39;s own, comparable within one query) and &#x60;cite&#x60; as the model is told to write it (&#x60;[report.pdf p.12]&#x60;). &#x60;docs&#x60; scopes to documents; &#x60;queries&#x60; adds the caller&#39;s own phrasings. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val kbSearchRequest : KbSearchRequest =  // KbSearchRequest | 
try {
    val result : KbSearchResponse = apiInstance.knowledgeSearch(id, kbSearchRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeSearch")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **kbSearchRequest** | [**KbSearchRequest**](KbSearchRequest.md)|  | |

### Return type

[**KbSearchResponse**](KbSearchResponse.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="knowledgeSetAccess"></a>
# **knowledgeSetAccess**
> KbAccessResponse knowledgeSetAccess(id, kbAccessRequest)

Grant a base to every agent or to the ones named — the owner&#39;s act.

Grants (docs/knowledge-base.md §3, \&quot;knowledge is granted like skills\&quot;): a caller with the token or the extension&#39;s origin is the owner and reaches every base; any other caller names itself (&#x60;X-ChatPanel-Agent: claude&#x60;, or &#x60;?agent&#x3D;&#x60;) — the gateway&#39;s own MCP server sends the connected client&#39;s name — and reaches the bases whose &#x60;access.agents&#x60; is &#x60;all&#x60; (the default) or names it. &#x60;GET /v1/kb&#x60; lists only those; a base not granted reads as 404 to that caller. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
val kbAccessRequest : KbAccessRequest =  // KbAccessRequest | 
try {
    val result : KbAccessResponse = apiInstance.knowledgeSetAccess(id, kbAccessRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeSetAccess")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeSetAccess")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |
| **kbAccessRequest** | [**KbAccessRequest**](KbAccessRequest.md)|  | |

### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="knowledgeStatus"></a>
# **knowledgeStatus**
> KbStatusResponse knowledgeStatus(id)

What a base holds — its documents, passages, notes, vectors, entities and connections.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = KnowledgeApi()
val id : kotlin.String = id_example // kotlin.String | The base id.
try {
    val result : KbStatusResponse = apiInstance.knowledgeStatus(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#knowledgeStatus")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#knowledgeStatus")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**| The base id. | |

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

