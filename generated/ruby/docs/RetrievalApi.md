# ChatPanel::RetrievalApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**retrieval_extract**](RetrievalApi.md#retrieval_extract) | **POST** /v1/extract | A document&#39;s pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash. |
| [**retrieval_read**](RetrievalApi.md#retrieval_read) | **POST** /v1/read | Read one public page as LLM-ready Markdown, cited where it landed, with its sections. |
| [**retrieval_read_alias**](RetrievalApi.md#retrieval_read_alias) | **GET** /v1/read/{url} | The r.jina.ai-shaped alias — &#x60;GET /v1/read/https://…&#x60; — for clients that already speak it. |
| [**retrieval_search**](RetrievalApi.md#retrieval_search) | **POST** /v1/search | Search the web through the provider this gateway is configured with; optionally read the top results in the same request. |
| [**retrieval_search_alias**](RetrievalApi.md#retrieval_search_alias) | **GET** /v1/search/{q} | The s.jina.ai-shaped alias — &#x60;GET /v1/search/&lt;query&gt;&#x60; — the top results WITH their content. |


## retrieval_extract

> <ExtractResponse> retrieval_extract(extract_request)

A document's pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash.

The `extract` capability (docs/capability-endpoints.md): the third leg beside `search` and `read`. Two calls on one route. With `name` and `data` (the file, base64), the document is parsed in a worker process on this machine — no network, the vault unreadable — and the answer is its identity (`hash`, SHA-256 of the bytes), its `type` as read from the bytes, its `title` when it has one and how many `pages` it has; the text stays on the server. With `hash` and `page`, one page's text comes back; the bytes crossed once. A page is the format's own unit (a PDF page, a slide, a sheet) or, for a document with none (DOCX, Markdown, text), a run of ~6,000 characters cut at a heading. Readers: PDF (pdf.js, the text layer — a scanned document is `scanned: true` with empty pages, never OCR'd), DOCX (Markdown), XLSX/ODS (rows of cells), PPTX/ODP (a slide per page, speaker notes appended), ODT, Markdown, text, CSV, HTML. A hash the worker no longer holds (it is dropped when idle) is a 404 `unknown_document`: send the bytes again. `budgetMs` is refused (503 `over_budget`) from the worker's own record. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::RetrievalApi.new
extract_request = ChatPanel::ExtractRequest.new # ExtractRequest | 

begin
  # A document's pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash.
  result = api_instance.retrieval_extract(extract_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling RetrievalApi->retrieval_extract: #{e}"
end
```

#### Using the retrieval_extract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractResponse>, Integer, Hash)> retrieval_extract_with_http_info(extract_request)

```ruby
begin
  # A document's pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash.
  data, status_code, headers = api_instance.retrieval_extract_with_http_info(extract_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling RetrievalApi->retrieval_extract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extract_request** | [**ExtractRequest**](ExtractRequest.md) |  |  |

### Return type

[**ExtractResponse**](ExtractResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## retrieval_read

> <ReadResponse> retrieval_read(read_request)

Read one public page as LLM-ready Markdown, cited where it landed, with its sections.

The `read` capability (docs/web-retrieval.md §4.2). The page is fetched from this machine as the user's agent — public web only (the shared SSRF guard, re-checked where a redirect lands), a browser User-Agent, no cookies — and turned into Markdown that keeps headings, lists, tables, code and links. `url` in the answer is where the page should be CITED: the same-origin canonical when it declares one, else where the fetch landed; `sections` are the page's own heading ids with their offset into the content so a citation can point at `url#section`. A page that could not be read as the article — a login wall, a paywall, a 429 — is a 200 with `restricted.reason` and the caller's `snippet` standing in for the content, never the wall rendered as prose. `maxChars` cuts at a section boundary. A read is served from this process's page cache when fresh (`cached: true`), revalidated with its ETag when stale. `budgetMs` is refused (503 `over_budget`) from the provider's own record, never missed. Providers are listed by `GET /v1/capabilities`: `defuddle` (in-process), `text` (the DOM-less fallback), `remote` (an `r.jina.ai`-shaped reader configured under `read.remote`). 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::RetrievalApi.new
read_request = ChatPanel::ReadRequest.new({url: 'url_example'}) # ReadRequest | 

begin
  # Read one public page as LLM-ready Markdown, cited where it landed, with its sections.
  result = api_instance.retrieval_read(read_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling RetrievalApi->retrieval_read: #{e}"
end
```

#### Using the retrieval_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReadResponse>, Integer, Hash)> retrieval_read_with_http_info(read_request)

```ruby
begin
  # Read one public page as LLM-ready Markdown, cited where it landed, with its sections.
  data, status_code, headers = api_instance.retrieval_read_with_http_info(read_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReadResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling RetrievalApi->retrieval_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **read_request** | [**ReadRequest**](ReadRequest.md) |  |  |

### Return type

[**ReadResponse**](ReadResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## retrieval_read_alias

> String retrieval_read_alias(url, opts)

The r.jina.ai-shaped alias — `GET /v1/read/https://…` — for clients that already speak it.

Same read as `POST /v1/read`, addressed the way the shipped ChatPanel extension's *reader service* slot (and anything else built for `r.jina.ai`) already addresses a reader: the page URL appended to the base, as is or percent-encoded, with its own query string kept. Answers `text/plain` with `Title:` / `URL Source:` / `Published Time:` header lines, a blank line and `Markdown Content:`; under `Accept: application/json` the §4.2 document wrapped as `{ code, status, data }`. `X-Return-Format: text` selects the text form. A Bearer token is accepted and ignored. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::RetrievalApi.new
url = 'url_example' # String | The page URL, as is or percent-encoded.
opts = {
  accept: 'accept_example', # String | `application/json` for the document; text otherwise.
  x_return_format: 'markdown' # String | 
}

begin
  # The r.jina.ai-shaped alias — `GET /v1/read/https://…` — for clients that already speak it.
  result = api_instance.retrieval_read_alias(url, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling RetrievalApi->retrieval_read_alias: #{e}"
end
```

#### Using the retrieval_read_alias_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> retrieval_read_alias_with_http_info(url, opts)

```ruby
begin
  # The r.jina.ai-shaped alias — `GET /v1/read/https://…` — for clients that already speak it.
  data, status_code, headers = api_instance.retrieval_read_alias_with_http_info(url, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue ChatPanel::ApiError => e
  puts "Error when calling RetrievalApi->retrieval_read_alias_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The page URL, as is or percent-encoded. |  |
| **accept** | **String** | &#x60;application/json&#x60; for the document; text otherwise. | [optional] |
| **x_return_format** | **String** |  | [optional] |

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## retrieval_search

> <WebSearchResponse> retrieval_search(web_search_request)

Search the web through the provider this gateway is configured with; optionally read the top results in the same request.

The `search` capability (docs/web-retrieval.md §4.1). Providers are listed by `GET /v1/capabilities`: `serp` (a results page fetched and read with the shared rules — no install, the default) and `searxng` (the user's own metasearch, preferred the moment it answers). `read: N` reads the top N results in parallel in this request, each carrying a §4.2 document under `read` — one round-trip instead of 1 + N; a page that will not be read keeps its snippet with `read.restricted.reason`. The query goes through layer-1 redaction (emails, cards, keys, dictionary terms — never the name detector) before it leaves; what was replaced is dropped and `redacted: true` says so; a query with nothing left is 400 `unsafe_query`. `freshness` and `lang` are honoured by SearXNG; `site` by both. `budgetMs` covers the search and its reads and is refused (503 `over_budget`) from the provider's record. `engines` names what was actually asked, so an empty list can be told from a blocked one. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::RetrievalApi.new
web_search_request = ChatPanel::WebSearchRequest.new({q: 'q_example'}) # WebSearchRequest | 

begin
  # Search the web through the provider this gateway is configured with; optionally read the top results in the same request.
  result = api_instance.retrieval_search(web_search_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling RetrievalApi->retrieval_search: #{e}"
end
```

#### Using the retrieval_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebSearchResponse>, Integer, Hash)> retrieval_search_with_http_info(web_search_request)

```ruby
begin
  # Search the web through the provider this gateway is configured with; optionally read the top results in the same request.
  data, status_code, headers = api_instance.retrieval_search_with_http_info(web_search_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebSearchResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling RetrievalApi->retrieval_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_search_request** | [**WebSearchRequest**](WebSearchRequest.md) |  |  |

### Return type

[**WebSearchResponse**](WebSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## retrieval_search_alias

> <RetrievalSearchAlias200Response> retrieval_search_alias(q, opts)

The s.jina.ai-shaped alias — `GET /v1/search/<query>` — the top results WITH their content.

Same search as `POST /v1/search` with `read: 5` (`?read=N`, 0–10, changes it), answered in the shape the shipped ChatPanel extension's *Web search API* engine already reads: `{ code, status, data: [{ url, title, description, content, publishedTime? }] }` where `content` is the page's Markdown when it was read and the snippet otherwise — nothing needs fetching on the client. A Bearer token is accepted and ignored. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::RetrievalApi.new
q = 'q_example' # String | The query, percent-encoded.
opts = {
  read: 56 # Integer | 
}

begin
  # The s.jina.ai-shaped alias — `GET /v1/search/<query>` — the top results WITH their content.
  result = api_instance.retrieval_search_alias(q, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling RetrievalApi->retrieval_search_alias: #{e}"
end
```

#### Using the retrieval_search_alias_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrievalSearchAlias200Response>, Integer, Hash)> retrieval_search_alias_with_http_info(q, opts)

```ruby
begin
  # The s.jina.ai-shaped alias — `GET /v1/search/<query>` — the top results WITH their content.
  data, status_code, headers = api_instance.retrieval_search_alias_with_http_info(q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrievalSearchAlias200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling RetrievalApi->retrieval_search_alias_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | The query, percent-encoded. |  |
| **read** | **Integer** |  | [optional][default to 5] |

### Return type

[**RetrievalSearchAlias200Response**](RetrievalSearchAlias200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

