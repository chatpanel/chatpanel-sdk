# ChatPanel.Sdk.Api.RetrievalApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**RetrievalExtract**](RetrievalApi.md#retrievalextract) | **POST** /v1/extract | A document&#39;s pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash. |
| [**RetrievalRead**](RetrievalApi.md#retrievalread) | **POST** /v1/read | Read one public page as LLM-ready Markdown, cited where it landed, with its sections. |
| [**RetrievalReadAlias**](RetrievalApi.md#retrievalreadalias) | **GET** /v1/read/{url} | The r.jina.ai-shaped alias — &#x60;GET /v1/read/https://…&#x60; — for clients that already speak it. |
| [**RetrievalSearch**](RetrievalApi.md#retrievalsearch) | **POST** /v1/search | Search the web through the provider this gateway is configured with; optionally read the top results in the same request. |
| [**RetrievalSearchAlias**](RetrievalApi.md#retrievalsearchalias) | **GET** /v1/search/{q} | The s.jina.ai-shaped alias — &#x60;GET /v1/search/&lt;query&gt;&#x60; — the top results WITH their content. |

<a id="retrievalextract"></a>
# **RetrievalExtract**
> ExtractResponse RetrievalExtract (ExtractRequest extractRequest)

A document's pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash.

The `extract` capability (docs/capability-endpoints.md): the third leg beside `search` and `read`. Two calls on one route. With `name` and `data` (the file, base64), the document is parsed in a worker process on this machine — no network, the vault unreadable — and the answer is its identity (`hash`, SHA-256 of the bytes), its `type` as read from the bytes, its `title` when it has one and how many `pages` it has; the text stays on the server. With `hash` and `page`, one page's text comes back; the bytes crossed once. A page is the format's own unit (a PDF page, a slide, a sheet) or, for a document with none (DOCX, Markdown, text), a run of ~6,000 characters cut at a heading. Readers: PDF (pdf.js, the text layer — a scanned document is `scanned: true` with empty pages, never OCR'd), DOCX (Markdown), XLSX/ODS (rows of cells), PPTX/ODP (a slide per page, speaker notes appended), ODT, Markdown, text, CSV, HTML. A hash the worker no longer holds (it is dropped when idle) is a 404 `unknown_document`: send the bytes again. `budgetMs` is refused (503 `over_budget`) from the worker's own record. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **extractRequest** | [**ExtractRequest**](ExtractRequest.md) |  |  |

### Return type

[**ExtractResponse**](ExtractResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The document opened (hash, type, pages) — or, with &#x60;page&#x60;, that page&#39;s text. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | The hash is not open in the worker (&#x60;unknown_document&#x60;) — send the bytes again. |  -  |
| **413** | The document is over the 64 MB limit (&#x60;too_large&#x60;). |  -  |
| **415** | No reader for these bytes (&#x60;unsupported&#x60;). |  -  |
| **503** | The budget cannot be met (&#x60;over_budget&#x60;, with &#x60;predictedMs&#x60;). |  -  |
| **504** | The parse took too long and the worker was restarted (&#x60;extract_timeout&#x60;). |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="retrievalread"></a>
# **RetrievalRead**
> ReadResponse RetrievalRead (ReadRequest readRequest)

Read one public page as LLM-ready Markdown, cited where it landed, with its sections.

The `read` capability (docs/web-retrieval.md §4.2). The page is fetched from this machine as the user's agent — public web only (the shared SSRF guard, re-checked where a redirect lands), a browser User-Agent, no cookies — and turned into Markdown that keeps headings, lists, tables, code and links. `url` in the answer is where the page should be CITED: the same-origin canonical when it declares one, else where the fetch landed; `sections` are the page's own heading ids with their offset into the content so a citation can point at `url#section`. A page that could not be read as the article — a login wall, a paywall, a 429 — is a 200 with `restricted.reason` and the caller's `snippet` standing in for the content, never the wall rendered as prose. `maxChars` cuts at a section boundary. A read is served from this process's page cache when fresh (`cached: true`), revalidated with its ETag when stale. `budgetMs` is refused (503 `over_budget`) from the provider's own record, never missed. Providers are listed by `GET /v1/capabilities`: `defuddle` (in-process), `text` (the DOM-less fallback), `remote` (an `r.jina.ai`-shaped reader configured under `read.remote`). 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **readRequest** | [**ReadRequest**](ReadRequest.md) |  |  |

### Return type

[**ReadResponse**](ReadResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The page — or, with &#x60;restricted&#x60; set, the reason it was not read and the snippet in its place. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | The named provider is not available here (&#x60;provider_not_found&#x60;). |  -  |
| **415** | The page is not HTML or text (&#x60;unsupported_content&#x60;). |  -  |
| **502** | The page could not be fetched (&#x60;fetch_failed&#x60;), or its host — or where it redirected — is not public web (&#x60;blocked_host&#x60;). |  -  |
| **503** | The budget cannot be met (&#x60;over_budget&#x60;, with &#x60;predictedMs&#x60; and &#x60;budgetMs&#x60;). |  -  |
| **504** | The page did not answer within the budget (&#x60;fetch_timeout&#x60;). |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="retrievalreadalias"></a>
# **RetrievalReadAlias**
> string RetrievalReadAlias (string url, string accept = null, string xReturnFormat = null)

The r.jina.ai-shaped alias — `GET /v1/read/https://…` — for clients that already speak it.

Same read as `POST /v1/read`, addressed the way the shipped ChatPanel extension's *reader service* slot (and anything else built for `r.jina.ai`) already addresses a reader: the page URL appended to the base, as is or percent-encoded, with its own query string kept. Answers `text/plain` with `Title:` / `URL Source:` / `Published Time:` header lines, a blank line and `Markdown Content:`; under `Accept: application/json` the §4.2 document wrapped as `{ code, status, data }`. `X-Return-Format: text` selects the text form. A Bearer token is accepted and ignored. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The page URL, as is or percent-encoded. |  |
| **accept** | **string** | &#x60;application/json&#x60; for the document; text otherwise. | [optional]  |
| **xReturnFormat** | **string** |  | [optional]  |

### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The page. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |
| **504** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="retrievalsearch"></a>
# **RetrievalSearch**
> WebSearchResponse RetrievalSearch (WebSearchRequest webSearchRequest)

Search the web through the provider this gateway is configured with; optionally read the top results in the same request.

The `search` capability (docs/web-retrieval.md §4.1). Providers are listed by `GET /v1/capabilities`: `serp` (a results page fetched and read with the shared rules — no install, the default) and `searxng` (the user's own metasearch, preferred the moment it answers). `read: N` reads the top N results in parallel in this request, each carrying a §4.2 document under `read` — one round-trip instead of 1 + N; a page that will not be read keeps its snippet with `read.restricted.reason`. The query goes through layer-1 redaction (emails, cards, keys, dictionary terms — never the name detector) before it leaves; what was replaced is dropped and `redacted: true` says so; a query with nothing left is 400 `unsafe_query`. `freshness` and `lang` are honoured by SearXNG; `site` by both. `budgetMs` covers the search and its reads and is refused (503 `over_budget`) from the provider's record. `engines` names what was actually asked, so an empty list can be told from a blocked one. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **webSearchRequest** | [**WebSearchRequest**](WebSearchRequest.md) |  |  |

### Return type

[**WebSearchResponse**](WebSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Ranked results — possibly none, with &#x60;engines&#x60; naming what was asked. |  -  |
| **400** | A bad body (&#x60;invalid_request&#x60;), or a query that was only private values (&#x60;unsafe_query&#x60;). |  -  |
| **404** | The named provider is not available here (&#x60;provider_not_found&#x60;). |  -  |
| **502** | The provider failed (&#x60;provider_failed&#x60; — a SearXNG 403/429 names the settings fix). |  -  |
| **503** | The budget cannot be met (&#x60;over_budget&#x60;). |  -  |
| **504** | The provider did not answer within the budget (&#x60;fetch_timeout&#x60;). |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="retrievalsearchalias"></a>
# **RetrievalSearchAlias**
> RetrievalSearchAlias200Response RetrievalSearchAlias (string q, int read = null)

The s.jina.ai-shaped alias — `GET /v1/search/<query>` — the top results WITH their content.

Same search as `POST /v1/search` with `read: 5` (`?read=N`, 0–10, changes it), answered in the shape the shipped ChatPanel extension's *Web search API* engine already reads: `{ code, status, data: [{ url, title, description, content, publishedTime? }] }` where `content` is the page's Markdown when it was read and the snippet otherwise — nothing needs fetching on the client. A Bearer token is accepted and ignored. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **q** | **string** | The query, percent-encoded. |  |
| **read** | **int** |  | [optional] [default to 5] |

### Return type

[**RetrievalSearchAlias200Response**](RetrievalSearchAlias200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The results with content. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |
| **504** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

