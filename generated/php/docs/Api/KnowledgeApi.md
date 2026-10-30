# ChatPanelSdk\KnowledgeApi

Knowledge bases — the user&#39;s documents (PDFs, office files, folders, pages) indexed on this machine and searched by words, meaning and graph; researched by the harness loop; annotated over time (docs/knowledge-base.md).

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**knowledgeAccess()**](KnowledgeApi.md#knowledgeAccess) | **GET** /v1/kb/{id}/access | Who may use a base — every agent, or the ones named. |
| [**knowledgeAdd()**](KnowledgeApi.md#knowledgeAdd) | **POST** /v1/kb/{id}/documents | Add a document — bytes, a path on this machine, a URL, or text — and index it. |
| [**knowledgeCreate()**](KnowledgeApi.md#knowledgeCreate) | **POST** /v1/kb | Create a knowledge base (or return the one with that id). |
| [**knowledgeDelete()**](KnowledgeApi.md#knowledgeDelete) | **DELETE** /v1/kb/{id} | Delete a base and its folder. |
| [**knowledgeDocuments()**](KnowledgeApi.md#knowledgeDocuments) | **GET** /v1/kb/{id}/documents | The documents in a base. |
| [**knowledgeEmbed()**](KnowledgeApi.md#knowledgeEmbed) | **POST** /v1/kb/{id}/embed | Embed every passage that has no vector yet, and say where the embedder stands. |
| [**knowledgeGraph()**](KnowledgeApi.md#knowledgeGraph) | **POST** /v1/kb/{id}/graph | What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two. |
| [**knowledgeList()**](KnowledgeApi.md#knowledgeList) | **GET** /v1/kb | The knowledge bases on this machine. |
| [**knowledgeNote()**](KnowledgeApi.md#knowledgeNote) | **POST** /v1/kb/{id}/notes | File a note — a fact, a summary, a correction — cited to passages; proposed until accepted. |
| [**knowledgeNoteStatus()**](KnowledgeApi.md#knowledgeNoteStatus) | **POST** /v1/kb/{id}/notes/{note} | Accept a proposed note, withdraw it to proposed, or remove it. |
| [**knowledgeNotes()**](KnowledgeApi.md#knowledgeNotes) | **GET** /v1/kb/{id}/notes | The notes filed into a base. |
| [**knowledgeOutline()**](KnowledgeApi.md#knowledgeOutline) | **GET** /v1/kb/{id}/outline | The table of contents a document&#39;s headings imply — every section once, with where it starts. |
| [**knowledgePage()**](KnowledgeApi.md#knowledgePage) | **GET** /v1/kb/{id}/documents/{doc} | One page of a document, from the index. |
| [**knowledgePassage()**](KnowledgeApi.md#knowledgePassage) | **GET** /v1/kb/{id}/passages/{passage} | One passage by id, with its citation. |
| [**knowledgeRemoveDocument()**](KnowledgeApi.md#knowledgeRemoveDocument) | **DELETE** /v1/kb/{id}/documents/{doc} | Remove a document, its passages and vectors (notes keep their text and lose the cite). |
| [**knowledgeReport()**](KnowledgeApi.md#knowledgeReport) | **GET** /v1/kb/{id}/report | The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes. |
| [**knowledgeResearch()**](KnowledgeApi.md#knowledgeResearch) | **POST** /v1/kb/{id}/research | The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model. |
| [**knowledgeSearch()**](KnowledgeApi.md#knowledgeSearch) | **POST** /v1/kb/{id}/search | The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation. |
| [**knowledgeSetAccess()**](KnowledgeApi.md#knowledgeSetAccess) | **POST** /v1/kb/{id}/access | Grant a base to every agent or to the ones named — the owner&#39;s act. |
| [**knowledgeStatus()**](KnowledgeApi.md#knowledgeStatus) | **GET** /v1/kb/{id} | What a base holds — its documents, passages, notes, vectors, entities and connections. |


## `knowledgeAccess()`

```php
knowledgeAccess($id): \ChatPanelSdk\Model\KbAccessResponse
```

Who may use a base — every agent, or the ones named.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.

try {
    $result = $apiInstance->knowledgeAccess($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeAccess: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |

### Return type

[**\ChatPanelSdk\Model\KbAccessResponse**](../Model/KbAccessResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeAdd()`

```php
knowledgeAdd($id, $kb_add_request): \ChatPanelSdk\Model\KbAddResponse
```

Add a document — bytes, a path on this machine, a URL, or text — and index it.

One of four sources: `name` + `data` (the file, base64, up to 64 MB — a PDF, DOCX, XLSX, PPTX, ODF, Markdown or text, parsed in the extract worker); `path` (a file or folder on this machine, walked with the same refusals the `files` tool applies — credential stores withheld and named, `node_modules` and hidden folders skipped, documents up to 64 MB; TOKEN-GATED: a path is a read on the machine, so it is 403 to a caller without the token or the extension origin); `url` (a public page through the `read` capability); `text`. The same bytes added again REPLACE the document. Passages are chunked by the document's own headings with page citations, indexed by words and in the graph, and embedded when the embedder's model is on disk (`embedded` says how many); the report is rewritten.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$kb_add_request = new \ChatPanelSdk\Model\KbAddRequest(); // \ChatPanelSdk\Model\KbAddRequest

try {
    $result = $apiInstance->knowledgeAdd($id, $kb_add_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeAdd: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **kb_add_request** | [**\ChatPanelSdk\Model\KbAddRequest**](../Model/KbAddRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\KbAddResponse**](../Model/KbAddResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeCreate()`

```php
knowledgeCreate($kb_create_request): \ChatPanelSdk\Model\KbStatusResponse
```

Create a knowledge base (or return the one with that id).

A base is a folder under `~/.chatpanel/kb/<id>/` (manifest, passages, notes, vectors, a Markdown report) — a projection over the documents added to it, rebuildable from them. `embed: off` keeps it on words and the graph only. 201 when created, 200 with `existed` when the id was already there.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$kb_create_request = new \ChatPanelSdk\Model\KbCreateRequest(); // \ChatPanelSdk\Model\KbCreateRequest

try {
    $result = $apiInstance->knowledgeCreate($kb_create_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **kb_create_request** | [**\ChatPanelSdk\Model\KbCreateRequest**](../Model/KbCreateRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\KbStatusResponse**](../Model/KbStatusResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeDelete()`

```php
knowledgeDelete($id): \ChatPanelSdk\Model\KbOkResponse
```

Delete a base and its folder.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: tokenHeader
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKey('X-ChatPanel-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-ChatPanel-Token', 'Bearer');

// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.

try {
    $result = $apiInstance->knowledgeDelete($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |

### Return type

[**\ChatPanelSdk\Model\KbOkResponse**](../Model/KbOkResponse.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeDocuments()`

```php
knowledgeDocuments($id): \ChatPanelSdk\Model\KbDocuments
```

The documents in a base.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.

try {
    $result = $apiInstance->knowledgeDocuments($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeDocuments: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |

### Return type

[**\ChatPanelSdk\Model\KbDocuments**](../Model/KbDocuments.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeEmbed()`

```php
knowledgeEmbed($id, $body): \ChatPanelSdk\Model\KbEmbedResponse
```

Embed every passage that has no vector yet, and say where the embedder stands.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$body = array('key' => new \stdClass); // object

try {
    $result = $apiInstance->knowledgeEmbed($id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeEmbed: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **body** | **object**|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\KbEmbedResponse**](../Model/KbEmbedResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeGraph()`

```php
knowledgeGraph($id, $kb_graph_request): \ChatPanelSdk\Model\KbGraphResponse
```

What connects to a node — its neighbours up to `hops` away — or the path between two.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$kb_graph_request = new \ChatPanelSdk\Model\KbGraphRequest(); // \ChatPanelSdk\Model\KbGraphRequest

try {
    $result = $apiInstance->knowledgeGraph($id, $kb_graph_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeGraph: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **kb_graph_request** | [**\ChatPanelSdk\Model\KbGraphRequest**](../Model/KbGraphRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\KbGraphResponse**](../Model/KbGraphResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeList()`

```php
knowledgeList(): \ChatPanelSdk\Model\KbList
```

The knowledge bases on this machine.

Each base with its id, name, document count, vector count and model. Loads no passages.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->knowledgeList();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\KbList**](../Model/KbList.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeNote()`

```php
knowledgeNote($id, $kb_note_request): \ChatPanelSdk\Model\KbNoteResponse
```

File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.

How a base improves over time. A note is indexed and searched as its own lane and shown with its status; `status: accepted` is honoured only from a caller with the token (the person, or a client acting for them) — any other caller's note is filed as `proposed`. Unknown cites are dropped.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$kb_note_request = new \ChatPanelSdk\Model\KbNoteRequest(); // \ChatPanelSdk\Model\KbNoteRequest

try {
    $result = $apiInstance->knowledgeNote($id, $kb_note_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeNote: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **kb_note_request** | [**\ChatPanelSdk\Model\KbNoteRequest**](../Model/KbNoteRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\KbNoteResponse**](../Model/KbNoteResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeNoteStatus()`

```php
knowledgeNoteStatus($id, $note, $kb_note_status_request): \ChatPanelSdk\Model\KbNoteResponse
```

Accept a proposed note, withdraw it to proposed, or remove it.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: tokenHeader
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKey('X-ChatPanel-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-ChatPanel-Token', 'Bearer');

// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$note = 'note_example'; // string | The note id.
$kb_note_status_request = new \ChatPanelSdk\Model\KbNoteStatusRequest(); // \ChatPanelSdk\Model\KbNoteStatusRequest

try {
    $result = $apiInstance->knowledgeNoteStatus($id, $note, $kb_note_status_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeNoteStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **note** | **string**| The note id. | |
| **kb_note_status_request** | [**\ChatPanelSdk\Model\KbNoteStatusRequest**](../Model/KbNoteStatusRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\KbNoteResponse**](../Model/KbNoteResponse.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeNotes()`

```php
knowledgeNotes($id): \ChatPanelSdk\Model\KbNotes
```

The notes filed into a base.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.

try {
    $result = $apiInstance->knowledgeNotes($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeNotes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |

### Return type

[**\ChatPanelSdk\Model\KbNotes**](../Model/KbNotes.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeOutline()`

```php
knowledgeOutline($id, $doc): \ChatPanelSdk\Model\KbOutline
```

The table of contents a document's headings imply — every section once, with where it starts.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$doc = 'doc_example'; // string | One document; omit for all.

try {
    $result = $apiInstance->knowledgeOutline($id, $doc);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeOutline: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **doc** | **string**| One document; omit for all. | [optional] |

### Return type

[**\ChatPanelSdk\Model\KbOutline**](../Model/KbOutline.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgePage()`

```php
knowledgePage($id, $doc, $page): \ChatPanelSdk\Model\KbPage
```

One page of a document, from the index.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$doc = 'doc_example'; // string | The document id.
$page = 1; // int | The page to read.

try {
    $result = $apiInstance->knowledgePage($id, $doc, $page);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgePage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **doc** | **string**| The document id. | |
| **page** | **int**| The page to read. | [optional] [default to 1] |

### Return type

[**\ChatPanelSdk\Model\KbPage**](../Model/KbPage.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgePassage()`

```php
knowledgePassage($id, $passage): \ChatPanelSdk\Model\KbPassage
```

One passage by id, with its citation.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$passage = 'passage_example'; // string | A passage id (`<doc>#<n>`) or a note id (`note:<id>`).

try {
    $result = $apiInstance->knowledgePassage($id, $passage);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgePassage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **passage** | **string**| A passage id (&#x60;&lt;doc&gt;#&lt;n&gt;&#x60;) or a note id (&#x60;note:&lt;id&gt;&#x60;). | |

### Return type

[**\ChatPanelSdk\Model\KbPassage**](../Model/KbPassage.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeRemoveDocument()`

```php
knowledgeRemoveDocument($id, $doc): \ChatPanelSdk\Model\KbStatusResponse
```

Remove a document, its passages and vectors (notes keep their text and lose the cite).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: tokenHeader
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKey('X-ChatPanel-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-ChatPanel-Token', 'Bearer');

// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$doc = 'doc_example'; // string | The document id.

try {
    $result = $apiInstance->knowledgeRemoveDocument($id, $doc);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeRemoveDocument: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **doc** | **string**| The document id. | |

### Return type

[**\ChatPanelSdk\Model\KbStatusResponse**](../Model/KbStatusResponse.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeReport()`

```php
knowledgeReport($id): string
```

The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.

try {
    $result = $apiInstance->knowledgeReport($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeReport: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |

### Return type

**string**

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/markdown`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeResearch()`

```php
knowledgeResearch($id, $kb_research_request): \ChatPanelSdk\Model\KbResearchResponse
```

The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.

The harness's loop (events kb-research.js), not a model's tool calls: a whole-document ask (\"what is this about\") reads the outline and the opening of each section; a focused one searches, reads the best passages grouped by document in page order, and — with `model` (TOKEN-GATED: the check runs on this gateway's own chat route) — asks that model once whether what was read answers it, then searches once more for what it says is missing. When the hits split evenly across documents and the question names none, the answer is `ask` (which document?) instead of a guess; call again with `answer` to go on, or `ask: false` to never pause. `attachment` is the block a client attaches before the question (`kind: prefetch`), `null` when nothing matched beyond the plain statement.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$kb_research_request = new \ChatPanelSdk\Model\KbResearchRequest(); // \ChatPanelSdk\Model\KbResearchRequest

try {
    $result = $apiInstance->knowledgeResearch($id, $kb_research_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeResearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **kb_research_request** | [**\ChatPanelSdk\Model\KbResearchRequest**](../Model/KbResearchRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\KbResearchResponse**](../Model/KbResearchResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeSearch()`

```php
knowledgeSearch($id, $kb_search_request): \ChatPanelSdk\Model\KbSearchResponse
```

The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.

The words in up to four query shapes (BM25), the meaning when the base has vectors (the query embedded by the same model), the graph's one-hop expansion of the best hits (a passage sharing a name or a section with a hit, and `via` says which), and the notes as their own lane — fused by Reciprocal Rank Fusion with the graph at half weight, then the gateway's reranker fused in (never substituted). Each result carries `lanes` (which found it), `scores` (each lane's own, comparable within one query) and `cite` as the model is told to write it (`[report.pdf p.12]`). `docs` scopes to documents; `queries` adds the caller's own phrasings.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$kb_search_request = new \ChatPanelSdk\Model\KbSearchRequest(); // \ChatPanelSdk\Model\KbSearchRequest

try {
    $result = $apiInstance->knowledgeSearch($id, $kb_search_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeSearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **kb_search_request** | [**\ChatPanelSdk\Model\KbSearchRequest**](../Model/KbSearchRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\KbSearchResponse**](../Model/KbSearchResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeSetAccess()`

```php
knowledgeSetAccess($id, $kb_access_request): \ChatPanelSdk\Model\KbAccessResponse
```

Grant a base to every agent or to the ones named — the owner's act.

Grants (docs/knowledge-base.md §3, \"knowledge is granted like skills\"): a caller with the token or the extension's origin is the owner and reaches every base; any other caller names itself (`X-ChatPanel-Agent: claude`, or `?agent=`) — the gateway's own MCP server sends the connected client's name — and reaches the bases whose `access.agents` is `all` (the default) or names it. `GET /v1/kb` lists only those; a base not granted reads as 404 to that caller.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: tokenHeader
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKey('X-ChatPanel-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-ChatPanel-Token', 'Bearer');

// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.
$kb_access_request = new \ChatPanelSdk\Model\KbAccessRequest(); // \ChatPanelSdk\Model\KbAccessRequest

try {
    $result = $apiInstance->knowledgeSetAccess($id, $kb_access_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeSetAccess: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |
| **kb_access_request** | [**\ChatPanelSdk\Model\KbAccessRequest**](../Model/KbAccessRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\KbAccessResponse**](../Model/KbAccessResponse.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `knowledgeStatus()`

```php
knowledgeStatus($id): \ChatPanelSdk\Model\KbStatusResponse
```

What a base holds — its documents, passages, notes, vectors, entities and connections.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | The base id.

try {
    $result = $apiInstance->knowledgeStatus($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->knowledgeStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| The base id. | |

### Return type

[**\ChatPanelSdk\Model\KbStatusResponse**](../Model/KbStatusResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
