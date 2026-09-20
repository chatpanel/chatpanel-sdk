# ChatPanelSdk\RetrievalApi

Web retrieval — search through the provider the user chose, and a page as LLM-ready Markdown, cited where it landed, with its sections (docs/web-retrieval.md).

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**retrievalExtract()**](RetrievalApi.md#retrievalExtract) | **POST** /v1/extract | A document&#39;s pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash. |
| [**retrievalRead()**](RetrievalApi.md#retrievalRead) | **POST** /v1/read | Read one public page as LLM-ready Markdown, cited where it landed, with its sections. |
| [**retrievalReadAlias()**](RetrievalApi.md#retrievalReadAlias) | **GET** /v1/read/{url} | The r.jina.ai-shaped alias — &#x60;GET /v1/read/https://…&#x60; — for clients that already speak it. |
| [**retrievalSearch()**](RetrievalApi.md#retrievalSearch) | **POST** /v1/search | Search the web through the provider this gateway is configured with; optionally read the top results in the same request. |
| [**retrievalSearchAlias()**](RetrievalApi.md#retrievalSearchAlias) | **GET** /v1/search/{q} | The s.jina.ai-shaped alias — &#x60;GET /v1/search/&lt;query&gt;&#x60; — the top results WITH their content. |


## `retrievalExtract()`

```php
retrievalExtract($extract_request): \ChatPanelSdk\Model\ExtractResponse
```

A document's pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash.

The `extract` capability (docs/capability-endpoints.md): the third leg beside `search` and `read`. Two calls on one route. With `name` and `data` (the file, base64), the document is parsed in a worker process on this machine — no network, the vault unreadable — and the answer is its identity (`hash`, SHA-256 of the bytes), its `type` as read from the bytes, its `title` when it has one and how many `pages` it has; the text stays on the server. With `hash` and `page`, one page's text comes back; the bytes crossed once. A page is the format's own unit (a PDF page, a slide, a sheet) or, for a document with none (DOCX, Markdown, text), a run of ~6,000 characters cut at a heading. Readers: PDF (pdf.js, the text layer — a scanned document is `scanned: true` with empty pages, never OCR'd), DOCX (Markdown), XLSX/ODS (rows of cells), PPTX/ODP (a slide per page, speaker notes appended), ODT, Markdown, text, CSV, HTML. A hash the worker no longer holds (it is dropped when idle) is a 404 `unknown_document`: send the bytes again. `budgetMs` is refused (503 `over_budget`) from the worker's own record.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\RetrievalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$extract_request = new \ChatPanelSdk\Model\ExtractRequest(); // \ChatPanelSdk\Model\ExtractRequest

try {
    $result = $apiInstance->retrievalExtract($extract_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RetrievalApi->retrievalExtract: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **extract_request** | [**\ChatPanelSdk\Model\ExtractRequest**](../Model/ExtractRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\ExtractResponse**](../Model/ExtractResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `retrievalRead()`

```php
retrievalRead($read_request): \ChatPanelSdk\Model\ReadResponse
```

Read one public page as LLM-ready Markdown, cited where it landed, with its sections.

The `read` capability (docs/web-retrieval.md §4.2). The page is fetched from this machine as the user's agent — public web only (the shared SSRF guard, re-checked where a redirect lands), a browser User-Agent, no cookies — and turned into Markdown that keeps headings, lists, tables, code and links. `url` in the answer is where the page should be CITED: the same-origin canonical when it declares one, else where the fetch landed; `sections` are the page's own heading ids with their offset into the content so a citation can point at `url#section`. A page that could not be read as the article — a login wall, a paywall, a 429 — is a 200 with `restricted.reason` and the caller's `snippet` standing in for the content, never the wall rendered as prose. `maxChars` cuts at a section boundary. A read is served from this process's page cache when fresh (`cached: true`), revalidated with its ETag when stale. `budgetMs` is refused (503 `over_budget`) from the provider's own record, never missed. Providers are listed by `GET /v1/capabilities`: `defuddle` (in-process), `text` (the DOM-less fallback), `remote` (an `r.jina.ai`-shaped reader configured under `read.remote`).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\RetrievalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$read_request = new \ChatPanelSdk\Model\ReadRequest(); // \ChatPanelSdk\Model\ReadRequest

try {
    $result = $apiInstance->retrievalRead($read_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RetrievalApi->retrievalRead: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **read_request** | [**\ChatPanelSdk\Model\ReadRequest**](../Model/ReadRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\ReadResponse**](../Model/ReadResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `retrievalReadAlias()`

```php
retrievalReadAlias($url, $accept, $x_return_format): string
```

The r.jina.ai-shaped alias — `GET /v1/read/https://…` — for clients that already speak it.

Same read as `POST /v1/read`, addressed the way the shipped ChatPanel extension's *reader service* slot (and anything else built for `r.jina.ai`) already addresses a reader: the page URL appended to the base, as is or percent-encoded, with its own query string kept. Answers `text/plain` with `Title:` / `URL Source:` / `Published Time:` header lines, a blank line and `Markdown Content:`; under `Accept: application/json` the §4.2 document wrapped as `{ code, status, data }`. `X-Return-Format: text` selects the text form. A Bearer token is accepted and ignored.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\RetrievalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = 'url_example'; // string | The page URL, as is or percent-encoded.
$accept = 'accept_example'; // string | `application/json` for the document; text otherwise.
$x_return_format = 'x_return_format_example'; // string

try {
    $result = $apiInstance->retrievalReadAlias($url, $accept, $x_return_format);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RetrievalApi->retrievalReadAlias: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **string**| The page URL, as is or percent-encoded. | |
| **accept** | **string**| &#x60;application/json&#x60; for the document; text otherwise. | [optional] |
| **x_return_format** | **string**|  | [optional] |

### Return type

**string**

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `retrievalSearch()`

```php
retrievalSearch($web_search_request): \ChatPanelSdk\Model\WebSearchResponse
```

Search the web through the provider this gateway is configured with; optionally read the top results in the same request.

The `search` capability (docs/web-retrieval.md §4.1). Providers are listed by `GET /v1/capabilities`: `serp` (a results page fetched and read with the shared rules — no install, the default) and `searxng` (the user's own metasearch, preferred the moment it answers). `read: N` reads the top N results in parallel in this request, each carrying a §4.2 document under `read` — one round-trip instead of 1 + N; a page that will not be read keeps its snippet with `read.restricted.reason`. The query goes through layer-1 redaction (emails, cards, keys, dictionary terms — never the name detector) before it leaves; what was replaced is dropped and `redacted: true` says so; a query with nothing left is 400 `unsafe_query`. `freshness` and `lang` are honoured by SearXNG; `site` by both. `budgetMs` covers the search and its reads and is refused (503 `over_budget`) from the provider's record. `engines` names what was actually asked, so an empty list can be told from a blocked one.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\RetrievalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$web_search_request = new \ChatPanelSdk\Model\WebSearchRequest(); // \ChatPanelSdk\Model\WebSearchRequest

try {
    $result = $apiInstance->retrievalSearch($web_search_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RetrievalApi->retrievalSearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **web_search_request** | [**\ChatPanelSdk\Model\WebSearchRequest**](../Model/WebSearchRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\WebSearchResponse**](../Model/WebSearchResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `retrievalSearchAlias()`

```php
retrievalSearchAlias($q, $read): \ChatPanelSdk\Model\RetrievalSearchAlias200Response
```

The s.jina.ai-shaped alias — `GET /v1/search/<query>` — the top results WITH their content.

Same search as `POST /v1/search` with `read: 5` (`?read=N`, 0–10, changes it), answered in the shape the shipped ChatPanel extension's *Web search API* engine already reads: `{ code, status, data: [{ url, title, description, content, publishedTime? }] }` where `content` is the page's Markdown when it was read and the snippet otherwise — nothing needs fetching on the client. A Bearer token is accepted and ignored.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\RetrievalApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$q = 'q_example'; // string | The query, percent-encoded.
$read = 5; // int

try {
    $result = $apiInstance->retrievalSearchAlias($q, $read);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RetrievalApi->retrievalSearchAlias: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **q** | **string**| The query, percent-encoded. | |
| **read** | **int**|  | [optional] [default to 5] |

### Return type

[**\ChatPanelSdk\Model\RetrievalSearchAlias200Response**](../Model/RetrievalSearchAlias200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
