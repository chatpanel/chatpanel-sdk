# ChatPanel::KnowledgeApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**knowledge_access**](KnowledgeApi.md#knowledge_access) | **GET** /v1/kb/{id}/access | Who may use a base — every agent, or the ones named. |
| [**knowledge_add**](KnowledgeApi.md#knowledge_add) | **POST** /v1/kb/{id}/documents | Add a document — bytes, a path on this machine, a URL, or text — and index it. |
| [**knowledge_create**](KnowledgeApi.md#knowledge_create) | **POST** /v1/kb | Create a knowledge base (or return the one with that id). |
| [**knowledge_delete**](KnowledgeApi.md#knowledge_delete) | **DELETE** /v1/kb/{id} | Delete a base and its folder. |
| [**knowledge_documents**](KnowledgeApi.md#knowledge_documents) | **GET** /v1/kb/{id}/documents | The documents in a base. |
| [**knowledge_embed**](KnowledgeApi.md#knowledge_embed) | **POST** /v1/kb/{id}/embed | Embed every passage that has no vector yet, and say where the embedder stands. |
| [**knowledge_graph**](KnowledgeApi.md#knowledge_graph) | **POST** /v1/kb/{id}/graph | What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two. |
| [**knowledge_list**](KnowledgeApi.md#knowledge_list) | **GET** /v1/kb | The knowledge bases on this machine. |
| [**knowledge_note**](KnowledgeApi.md#knowledge_note) | **POST** /v1/kb/{id}/notes | File a note — a fact, a summary, a correction — cited to passages; proposed until accepted. |
| [**knowledge_note_status**](KnowledgeApi.md#knowledge_note_status) | **POST** /v1/kb/{id}/notes/{note} | Accept a proposed note, withdraw it to proposed, or remove it. |
| [**knowledge_notes**](KnowledgeApi.md#knowledge_notes) | **GET** /v1/kb/{id}/notes | The notes filed into a base. |
| [**knowledge_outline**](KnowledgeApi.md#knowledge_outline) | **GET** /v1/kb/{id}/outline | The table of contents a document&#39;s headings imply — every section once, with where it starts. |
| [**knowledge_page**](KnowledgeApi.md#knowledge_page) | **GET** /v1/kb/{id}/documents/{doc} | One page of a document, from the index. |
| [**knowledge_passage**](KnowledgeApi.md#knowledge_passage) | **GET** /v1/kb/{id}/passages/{passage} | One passage by id, with its citation. |
| [**knowledge_remove_document**](KnowledgeApi.md#knowledge_remove_document) | **DELETE** /v1/kb/{id}/documents/{doc} | Remove a document, its passages and vectors (notes keep their text and lose the cite). |
| [**knowledge_report**](KnowledgeApi.md#knowledge_report) | **GET** /v1/kb/{id}/report | The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes. |
| [**knowledge_research**](KnowledgeApi.md#knowledge_research) | **POST** /v1/kb/{id}/research | The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model. |
| [**knowledge_search**](KnowledgeApi.md#knowledge_search) | **POST** /v1/kb/{id}/search | The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation. |
| [**knowledge_set_access**](KnowledgeApi.md#knowledge_set_access) | **POST** /v1/kb/{id}/access | Grant a base to every agent or to the ones named — the owner&#39;s act. |
| [**knowledge_status**](KnowledgeApi.md#knowledge_status) | **GET** /v1/kb/{id} | What a base holds — its documents, passages, notes, vectors, entities and connections. |


## knowledge_access

> <KbAccessResponse> knowledge_access(id)

Who may use a base — every agent, or the ones named.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.

begin
  # Who may use a base — every agent, or the ones named.
  result = api_instance.knowledge_access(id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_access: #{e}"
end
```

#### Using the knowledge_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbAccessResponse>, Integer, Hash)> knowledge_access_with_http_info(id)

```ruby
begin
  # Who may use a base — every agent, or the ones named.
  data, status_code, headers = api_instance.knowledge_access_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbAccessResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |

### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## knowledge_add

> <KbAddResponse> knowledge_add(id, kb_add_request)

Add a document — bytes, a path on this machine, a URL, or text — and index it.

One of four sources: `name` + `data` (the file, base64, up to 64 MB — a PDF, DOCX, XLSX, PPTX, ODF, Markdown or text, parsed in the extract worker); `path` (a file or folder on this machine, walked with the same refusals the `files` tool applies — credential stores withheld and named, `node_modules` and hidden folders skipped, documents up to 64 MB; TOKEN-GATED: a path is a read on the machine, so it is 403 to a caller without the token or the extension origin); `url` (a public page through the `read` capability); `text`. The same bytes added again REPLACE the document. Passages are chunked by the document's own headings with page citations, indexed by words and in the graph, and embedded when the embedder's model is on disk (`embedded` says how many); the report is rewritten. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
kb_add_request = ChatPanel::KbAddRequest.new # KbAddRequest | 

begin
  # Add a document — bytes, a path on this machine, a URL, or text — and index it.
  result = api_instance.knowledge_add(id, kb_add_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_add: #{e}"
end
```

#### Using the knowledge_add_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbAddResponse>, Integer, Hash)> knowledge_add_with_http_info(id, kb_add_request)

```ruby
begin
  # Add a document — bytes, a path on this machine, a URL, or text — and index it.
  data, status_code, headers = api_instance.knowledge_add_with_http_info(id, kb_add_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbAddResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_add_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **kb_add_request** | [**KbAddRequest**](KbAddRequest.md) |  |  |

### Return type

[**KbAddResponse**](KbAddResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## knowledge_create

> <KbStatusResponse> knowledge_create(kb_create_request)

Create a knowledge base (or return the one with that id).

A base is a folder under `~/.chatpanel/kb/<id>/` (manifest, passages, notes, vectors, a Markdown report) — a projection over the documents added to it, rebuildable from them. `embed: off` keeps it on words and the graph only. 201 when created, 200 with `existed` when the id was already there. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
kb_create_request = ChatPanel::KbCreateRequest.new # KbCreateRequest | 

begin
  # Create a knowledge base (or return the one with that id).
  result = api_instance.knowledge_create(kb_create_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_create: #{e}"
end
```

#### Using the knowledge_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbStatusResponse>, Integer, Hash)> knowledge_create_with_http_info(kb_create_request)

```ruby
begin
  # Create a knowledge base (or return the one with that id).
  data, status_code, headers = api_instance.knowledge_create_with_http_info(kb_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbStatusResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kb_create_request** | [**KbCreateRequest**](KbCreateRequest.md) |  |  |

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## knowledge_delete

> <KbOkResponse> knowledge_delete(id)

Delete a base and its folder.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.

begin
  # Delete a base and its folder.
  result = api_instance.knowledge_delete(id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_delete: #{e}"
end
```

#### Using the knowledge_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbOkResponse>, Integer, Hash)> knowledge_delete_with_http_info(id)

```ruby
begin
  # Delete a base and its folder.
  data, status_code, headers = api_instance.knowledge_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbOkResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |

### Return type

[**KbOkResponse**](KbOkResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## knowledge_documents

> <KbDocuments> knowledge_documents(id)

The documents in a base.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.

begin
  # The documents in a base.
  result = api_instance.knowledge_documents(id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_documents: #{e}"
end
```

#### Using the knowledge_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbDocuments>, Integer, Hash)> knowledge_documents_with_http_info(id)

```ruby
begin
  # The documents in a base.
  data, status_code, headers = api_instance.knowledge_documents_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbDocuments>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |

### Return type

[**KbDocuments**](KbDocuments.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## knowledge_embed

> <KbEmbedResponse> knowledge_embed(id, opts)

Embed every passage that has no vector yet, and say where the embedder stands.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
opts = {
  body: { ... } # Object | 
}

begin
  # Embed every passage that has no vector yet, and say where the embedder stands.
  result = api_instance.knowledge_embed(id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_embed: #{e}"
end
```

#### Using the knowledge_embed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbEmbedResponse>, Integer, Hash)> knowledge_embed_with_http_info(id, opts)

```ruby
begin
  # Embed every passage that has no vector yet, and say where the embedder stands.
  data, status_code, headers = api_instance.knowledge_embed_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbEmbedResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_embed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **body** | **Object** |  | [optional] |

### Return type

[**KbEmbedResponse**](KbEmbedResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## knowledge_graph

> <KbGraphResponse> knowledge_graph(id, kb_graph_request)

What connects to a node — its neighbours up to `hops` away — or the path between two.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
kb_graph_request = ChatPanel::KbGraphRequest.new({node: 'node_example'}) # KbGraphRequest | 

begin
  # What connects to a node — its neighbours up to `hops` away — or the path between two.
  result = api_instance.knowledge_graph(id, kb_graph_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_graph: #{e}"
end
```

#### Using the knowledge_graph_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbGraphResponse>, Integer, Hash)> knowledge_graph_with_http_info(id, kb_graph_request)

```ruby
begin
  # What connects to a node — its neighbours up to `hops` away — or the path between two.
  data, status_code, headers = api_instance.knowledge_graph_with_http_info(id, kb_graph_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbGraphResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_graph_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **kb_graph_request** | [**KbGraphRequest**](KbGraphRequest.md) |  |  |

### Return type

[**KbGraphResponse**](KbGraphResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## knowledge_list

> <KbList> knowledge_list

The knowledge bases on this machine.

Each base with its id, name, document count, vector count and model. Loads no passages.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new

begin
  # The knowledge bases on this machine.
  result = api_instance.knowledge_list
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_list: #{e}"
end
```

#### Using the knowledge_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbList>, Integer, Hash)> knowledge_list_with_http_info

```ruby
begin
  # The knowledge bases on this machine.
  data, status_code, headers = api_instance.knowledge_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbList>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_list_with_http_info: #{e}"
end
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


## knowledge_note

> <KbNoteResponse> knowledge_note(id, kb_note_request)

File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.

How a base improves over time. A note is indexed and searched as its own lane and shown with its status; `status: accepted` is honoured only from a caller with the token (the person, or a client acting for them) — any other caller's note is filed as `proposed`. Unknown cites are dropped. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
kb_note_request = ChatPanel::KbNoteRequest.new({text: 'text_example'}) # KbNoteRequest | 

begin
  # File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.
  result = api_instance.knowledge_note(id, kb_note_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_note: #{e}"
end
```

#### Using the knowledge_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbNoteResponse>, Integer, Hash)> knowledge_note_with_http_info(id, kb_note_request)

```ruby
begin
  # File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.
  data, status_code, headers = api_instance.knowledge_note_with_http_info(id, kb_note_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbNoteResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **kb_note_request** | [**KbNoteRequest**](KbNoteRequest.md) |  |  |

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## knowledge_note_status

> <KbNoteResponse> knowledge_note_status(id, note, kb_note_status_request)

Accept a proposed note, withdraw it to proposed, or remove it.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
note = 'note_example' # String | The note id.
kb_note_status_request = ChatPanel::KbNoteStatusRequest.new({status: 'proposed'}) # KbNoteStatusRequest | 

begin
  # Accept a proposed note, withdraw it to proposed, or remove it.
  result = api_instance.knowledge_note_status(id, note, kb_note_status_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_note_status: #{e}"
end
```

#### Using the knowledge_note_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbNoteResponse>, Integer, Hash)> knowledge_note_status_with_http_info(id, note, kb_note_status_request)

```ruby
begin
  # Accept a proposed note, withdraw it to proposed, or remove it.
  data, status_code, headers = api_instance.knowledge_note_status_with_http_info(id, note, kb_note_status_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbNoteResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_note_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **note** | **String** | The note id. |  |
| **kb_note_status_request** | [**KbNoteStatusRequest**](KbNoteStatusRequest.md) |  |  |

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## knowledge_notes

> <KbNotes> knowledge_notes(id)

The notes filed into a base.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.

begin
  # The notes filed into a base.
  result = api_instance.knowledge_notes(id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_notes: #{e}"
end
```

#### Using the knowledge_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbNotes>, Integer, Hash)> knowledge_notes_with_http_info(id)

```ruby
begin
  # The notes filed into a base.
  data, status_code, headers = api_instance.knowledge_notes_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbNotes>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |

### Return type

[**KbNotes**](KbNotes.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## knowledge_outline

> <KbOutline> knowledge_outline(id, opts)

The table of contents a document's headings imply — every section once, with where it starts.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
opts = {
  doc: 'doc_example' # String | One document; omit for all.
}

begin
  # The table of contents a document's headings imply — every section once, with where it starts.
  result = api_instance.knowledge_outline(id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_outline: #{e}"
end
```

#### Using the knowledge_outline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbOutline>, Integer, Hash)> knowledge_outline_with_http_info(id, opts)

```ruby
begin
  # The table of contents a document's headings imply — every section once, with where it starts.
  data, status_code, headers = api_instance.knowledge_outline_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbOutline>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_outline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **doc** | **String** | One document; omit for all. | [optional] |

### Return type

[**KbOutline**](KbOutline.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## knowledge_page

> <KbPage> knowledge_page(id, doc, opts)

One page of a document, from the index.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
doc = 'doc_example' # String | The document id.
opts = {
  page: 56 # Integer | The page to read.
}

begin
  # One page of a document, from the index.
  result = api_instance.knowledge_page(id, doc, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_page: #{e}"
end
```

#### Using the knowledge_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbPage>, Integer, Hash)> knowledge_page_with_http_info(id, doc, opts)

```ruby
begin
  # One page of a document, from the index.
  data, status_code, headers = api_instance.knowledge_page_with_http_info(id, doc, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbPage>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **doc** | **String** | The document id. |  |
| **page** | **Integer** | The page to read. | [optional][default to 1] |

### Return type

[**KbPage**](KbPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## knowledge_passage

> <KbPassage> knowledge_passage(id, passage)

One passage by id, with its citation.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
passage = 'passage_example' # String | A passage id (`<doc>#<n>`) or a note id (`note:<id>`).

begin
  # One passage by id, with its citation.
  result = api_instance.knowledge_passage(id, passage)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_passage: #{e}"
end
```

#### Using the knowledge_passage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbPassage>, Integer, Hash)> knowledge_passage_with_http_info(id, passage)

```ruby
begin
  # One passage by id, with its citation.
  data, status_code, headers = api_instance.knowledge_passage_with_http_info(id, passage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbPassage>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_passage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **passage** | **String** | A passage id (&#x60;&lt;doc&gt;#&lt;n&gt;&#x60;) or a note id (&#x60;note:&lt;id&gt;&#x60;). |  |

### Return type

[**KbPassage**](KbPassage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## knowledge_remove_document

> <KbStatusResponse> knowledge_remove_document(id, doc)

Remove a document, its passages and vectors (notes keep their text and lose the cite).

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
doc = 'doc_example' # String | The document id.

begin
  # Remove a document, its passages and vectors (notes keep their text and lose the cite).
  result = api_instance.knowledge_remove_document(id, doc)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_remove_document: #{e}"
end
```

#### Using the knowledge_remove_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbStatusResponse>, Integer, Hash)> knowledge_remove_document_with_http_info(id, doc)

```ruby
begin
  # Remove a document, its passages and vectors (notes keep their text and lose the cite).
  data, status_code, headers = api_instance.knowledge_remove_document_with_http_info(id, doc)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbStatusResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_remove_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **doc** | **String** | The document id. |  |

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## knowledge_report

> String knowledge_report(id)

The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.

begin
  # The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.
  result = api_instance.knowledge_report(id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_report: #{e}"
end
```

#### Using the knowledge_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> knowledge_report_with_http_info(id)

```ruby
begin
  # The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.
  data, status_code, headers = api_instance.knowledge_report_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/markdown, application/json


## knowledge_research

> <KbResearchResponse> knowledge_research(id, kb_research_request)

The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.

The harness's loop (events kb-research.js), not a model's tool calls: a whole-document ask (\"what is this about\") reads the outline and the opening of each section; a focused one searches, reads the best passages grouped by document in page order, and — with `model` (TOKEN-GATED: the check runs on this gateway's own chat route) — asks that model once whether what was read answers it, then searches once more for what it says is missing. When the hits split evenly across documents and the question names none, the answer is `ask` (which document?) instead of a guess; call again with `answer` to go on, or `ask: false` to never pause. `attachment` is the block a client attaches before the question (`kind: prefetch`), `null` when nothing matched beyond the plain statement. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
kb_research_request = ChatPanel::KbResearchRequest.new({question: 'question_example'}) # KbResearchRequest | 

begin
  # The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.
  result = api_instance.knowledge_research(id, kb_research_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_research: #{e}"
end
```

#### Using the knowledge_research_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbResearchResponse>, Integer, Hash)> knowledge_research_with_http_info(id, kb_research_request)

```ruby
begin
  # The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.
  data, status_code, headers = api_instance.knowledge_research_with_http_info(id, kb_research_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbResearchResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_research_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **kb_research_request** | [**KbResearchRequest**](KbResearchRequest.md) |  |  |

### Return type

[**KbResearchResponse**](KbResearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## knowledge_search

> <KbSearchResponse> knowledge_search(id, kb_search_request)

The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.

The words in up to four query shapes (BM25), the meaning when the base has vectors (the query embedded by the same model), the graph's one-hop expansion of the best hits (a passage sharing a name or a section with a hit, and `via` says which), and the notes as their own lane — fused by Reciprocal Rank Fusion with the graph at half weight, then the gateway's reranker fused in (never substituted). Each result carries `lanes` (which found it), `scores` (each lane's own, comparable within one query) and `cite` as the model is told to write it (`[report.pdf p.12]`). `docs` scopes to documents; `queries` adds the caller's own phrasings. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
kb_search_request = ChatPanel::KbSearchRequest.new({query: 'query_example'}) # KbSearchRequest | 

begin
  # The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.
  result = api_instance.knowledge_search(id, kb_search_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_search: #{e}"
end
```

#### Using the knowledge_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbSearchResponse>, Integer, Hash)> knowledge_search_with_http_info(id, kb_search_request)

```ruby
begin
  # The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.
  data, status_code, headers = api_instance.knowledge_search_with_http_info(id, kb_search_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbSearchResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **kb_search_request** | [**KbSearchRequest**](KbSearchRequest.md) |  |  |

### Return type

[**KbSearchResponse**](KbSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## knowledge_set_access

> <KbAccessResponse> knowledge_set_access(id, kb_access_request)

Grant a base to every agent or to the ones named — the owner's act.

Grants (docs/knowledge-base.md §3, \"knowledge is granted like skills\"): a caller with the token or the extension's origin is the owner and reaches every base; any other caller names itself (`X-ChatPanel-Agent: claude`, or `?agent=`) — the gateway's own MCP server sends the connected client's name — and reaches the bases whose `access.agents` is `all` (the default) or names it. `GET /v1/kb` lists only those; a base not granted reads as 404 to that caller. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.
kb_access_request = ChatPanel::KbAccessRequest.new({agents: nil}) # KbAccessRequest | 

begin
  # Grant a base to every agent or to the ones named — the owner's act.
  result = api_instance.knowledge_set_access(id, kb_access_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_set_access: #{e}"
end
```

#### Using the knowledge_set_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbAccessResponse>, Integer, Hash)> knowledge_set_access_with_http_info(id, kb_access_request)

```ruby
begin
  # Grant a base to every agent or to the ones named — the owner's act.
  data, status_code, headers = api_instance.knowledge_set_access_with_http_info(id, kb_access_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbAccessResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_set_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |
| **kb_access_request** | [**KbAccessRequest**](KbAccessRequest.md) |  |  |

### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## knowledge_status

> <KbStatusResponse> knowledge_status(id)

What a base holds — its documents, passages, notes, vectors, entities and connections.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::KnowledgeApi.new
id = 'id_example' # String | The base id.

begin
  # What a base holds — its documents, passages, notes, vectors, entities and connections.
  result = api_instance.knowledge_status(id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_status: #{e}"
end
```

#### Using the knowledge_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KbStatusResponse>, Integer, Hash)> knowledge_status_with_http_info(id)

```ruby
begin
  # What a base holds — its documents, passages, notes, vectors, entities and connections.
  data, status_code, headers = api_instance.knowledge_status_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KbStatusResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling KnowledgeApi->knowledge_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The base id. |  |

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

