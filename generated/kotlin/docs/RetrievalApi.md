# RetrievalApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**retrievalExtract**](RetrievalApi.md#retrievalExtract) | **POST** /v1/extract | A document&#39;s pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash. |
| [**retrievalRead**](RetrievalApi.md#retrievalRead) | **POST** /v1/read | Read one public page as LLM-ready Markdown, cited where it landed, with its sections. |
| [**retrievalReadAlias**](RetrievalApi.md#retrievalReadAlias) | **GET** /v1/read/{url} | The r.jina.ai-shaped alias — &#x60;GET /v1/read/https://…&#x60; — for clients that already speak it. |
| [**retrievalSearch**](RetrievalApi.md#retrievalSearch) | **POST** /v1/search | Search the web through the provider this gateway is configured with; optionally read the top results in the same request. |
| [**retrievalSearchAlias**](RetrievalApi.md#retrievalSearchAlias) | **GET** /v1/search/{q} | The s.jina.ai-shaped alias — &#x60;GET /v1/search/&lt;query&gt;&#x60; — the top results WITH their content. |


<a id="retrievalExtract"></a>
# **retrievalExtract**
> ExtractResponse retrievalExtract(extractRequest)

A document&#39;s pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash.

The &#x60;extract&#x60; capability (docs/capability-endpoints.md): the third leg beside &#x60;search&#x60; and &#x60;read&#x60;. Two calls on one route. With &#x60;name&#x60; and &#x60;data&#x60; (the file, base64), the document is parsed in a worker process on this machine — no network, the vault unreadable — and the answer is its identity (&#x60;hash&#x60;, SHA-256 of the bytes), its &#x60;type&#x60; as read from the bytes, its &#x60;title&#x60; when it has one and how many &#x60;pages&#x60; it has; the text stays on the server. With &#x60;hash&#x60; and &#x60;page&#x60;, one page&#39;s text comes back; the bytes crossed once. A page is the format&#39;s own unit (a PDF page, a slide, a sheet) or, for a document with none (DOCX, Markdown, text), a run of ~6,000 characters cut at a heading. Readers: PDF (pdf.js, the text layer — a scanned document is &#x60;scanned: true&#x60; with empty pages, never OCR&#39;d), DOCX (Markdown), XLSX/ODS (rows of cells), PPTX/ODP (a slide per page, speaker notes appended), ODT, Markdown, text, CSV, HTML. A hash the worker no longer holds (it is dropped when idle) is a 404 &#x60;unknown_document&#x60;: send the bytes again. &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the worker&#39;s own record. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = RetrievalApi()
val extractRequest : ExtractRequest =  // ExtractRequest | 
try {
    val result : ExtractResponse = apiInstance.retrievalExtract(extractRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RetrievalApi#retrievalExtract")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RetrievalApi#retrievalExtract")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **extractRequest** | [**ExtractRequest**](ExtractRequest.md)|  | |

### Return type

[**ExtractResponse**](ExtractResponse.md)

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

<a id="retrievalRead"></a>
# **retrievalRead**
> ReadResponse retrievalRead(readRequest)

Read one public page as LLM-ready Markdown, cited where it landed, with its sections.

The &#x60;read&#x60; capability (docs/web-retrieval.md §4.2). The page is fetched from this machine as the user&#39;s agent — public web only (the shared SSRF guard, re-checked where a redirect lands), a browser User-Agent, no cookies — and turned into Markdown that keeps headings, lists, tables, code and links. &#x60;url&#x60; in the answer is where the page should be CITED: the same-origin canonical when it declares one, else where the fetch landed; &#x60;sections&#x60; are the page&#39;s own heading ids with their offset into the content so a citation can point at &#x60;url#section&#x60;. A page that could not be read as the article — a login wall, a paywall, a 429 — is a 200 with &#x60;restricted.reason&#x60; and the caller&#39;s &#x60;snippet&#x60; standing in for the content, never the wall rendered as prose. &#x60;maxChars&#x60; cuts at a section boundary. A read is served from this process&#39;s page cache when fresh (&#x60;cached: true&#x60;), revalidated with its ETag when stale. &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the provider&#39;s own record, never missed. Providers are listed by &#x60;GET /v1/capabilities&#x60;: &#x60;defuddle&#x60; (in-process), &#x60;text&#x60; (the DOM-less fallback), &#x60;remote&#x60; (an &#x60;r.jina.ai&#x60;-shaped reader configured under &#x60;read.remote&#x60;). 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = RetrievalApi()
val readRequest : ReadRequest =  // ReadRequest | 
try {
    val result : ReadResponse = apiInstance.retrievalRead(readRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RetrievalApi#retrievalRead")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RetrievalApi#retrievalRead")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **readRequest** | [**ReadRequest**](ReadRequest.md)|  | |

### Return type

[**ReadResponse**](ReadResponse.md)

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

<a id="retrievalReadAlias"></a>
# **retrievalReadAlias**
> kotlin.String retrievalReadAlias(url, accept, xReturnFormat)

The r.jina.ai-shaped alias — &#x60;GET /v1/read/https://…&#x60; — for clients that already speak it.

Same read as &#x60;POST /v1/read&#x60;, addressed the way the shipped ChatPanel extension&#39;s *reader service* slot (and anything else built for &#x60;r.jina.ai&#x60;) already addresses a reader: the page URL appended to the base, as is or percent-encoded, with its own query string kept. Answers &#x60;text/plain&#x60; with &#x60;Title:&#x60; / &#x60;URL Source:&#x60; / &#x60;Published Time:&#x60; header lines, a blank line and &#x60;Markdown Content:&#x60;; under &#x60;Accept: application/json&#x60; the §4.2 document wrapped as &#x60;{ code, status, data }&#x60;. &#x60;X-Return-Format: text&#x60; selects the text form. A Bearer token is accepted and ignored. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = RetrievalApi()
val url : kotlin.String = url_example // kotlin.String | The page URL, as is or percent-encoded.
val accept : kotlin.String = accept_example // kotlin.String | `application/json` for the document; text otherwise.
val xReturnFormat : kotlin.String = xReturnFormat_example // kotlin.String | 
try {
    val result : kotlin.String = apiInstance.retrievalReadAlias(url, accept, xReturnFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RetrievalApi#retrievalReadAlias")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RetrievalApi#retrievalReadAlias")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **kotlin.String**| The page URL, as is or percent-encoded. | |
| **accept** | **kotlin.String**| &#x60;application/json&#x60; for the document; text otherwise. | [optional] |
| **xReturnFormat** | **kotlin.String**|  | [optional] [enum: markdown, text] |

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
 - **Accept**: text/plain, application/json

<a id="retrievalSearch"></a>
# **retrievalSearch**
> WebSearchResponse retrievalSearch(webSearchRequest)

Search the web through the provider this gateway is configured with; optionally read the top results in the same request.

The &#x60;search&#x60; capability (docs/web-retrieval.md §4.1). Providers are listed by &#x60;GET /v1/capabilities&#x60;: &#x60;serp&#x60; (a results page fetched and read with the shared rules — no install, the default) and &#x60;searxng&#x60; (the user&#39;s own metasearch, preferred the moment it answers). &#x60;read: N&#x60; reads the top N results in parallel in this request, each carrying a §4.2 document under &#x60;read&#x60; — one round-trip instead of 1 + N; a page that will not be read keeps its snippet with &#x60;read.restricted.reason&#x60;. The query goes through layer-1 redaction (emails, cards, keys, dictionary terms — never the name detector) before it leaves; what was replaced is dropped and &#x60;redacted: true&#x60; says so; a query with nothing left is 400 &#x60;unsafe_query&#x60;. &#x60;freshness&#x60; and &#x60;lang&#x60; are honoured by SearXNG; &#x60;site&#x60; by both. &#x60;budgetMs&#x60; covers the search and its reads and is refused (503 &#x60;over_budget&#x60;) from the provider&#39;s record. &#x60;engines&#x60; names what was actually asked, so an empty list can be told from a blocked one. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = RetrievalApi()
val webSearchRequest : WebSearchRequest =  // WebSearchRequest | 
try {
    val result : WebSearchResponse = apiInstance.retrievalSearch(webSearchRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RetrievalApi#retrievalSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RetrievalApi#retrievalSearch")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **webSearchRequest** | [**WebSearchRequest**](WebSearchRequest.md)|  | |

### Return type

[**WebSearchResponse**](WebSearchResponse.md)

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

<a id="retrievalSearchAlias"></a>
# **retrievalSearchAlias**
> RetrievalSearchAlias200Response retrievalSearchAlias(q, read)

The s.jina.ai-shaped alias — &#x60;GET /v1/search/&lt;query&gt;&#x60; — the top results WITH their content.

Same search as &#x60;POST /v1/search&#x60; with &#x60;read: 5&#x60; (&#x60;?read&#x3D;N&#x60;, 0–10, changes it), answered in the shape the shipped ChatPanel extension&#39;s *Web search API* engine already reads: &#x60;{ code, status, data: [{ url, title, description, content, publishedTime? }] }&#x60; where &#x60;content&#x60; is the page&#39;s Markdown when it was read and the snippet otherwise — nothing needs fetching on the client. A Bearer token is accepted and ignored. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = RetrievalApi()
val q : kotlin.String = q_example // kotlin.String | The query, percent-encoded.
val read : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : RetrievalSearchAlias200Response = apiInstance.retrievalSearchAlias(q, read)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RetrievalApi#retrievalSearchAlias")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RetrievalApi#retrievalSearchAlias")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **q** | **kotlin.String**| The query, percent-encoded. | |
| **read** | **kotlin.Int**|  | [optional] [default to 5] |

### Return type

[**RetrievalSearchAlias200Response**](RetrievalSearchAlias200Response.md)

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

