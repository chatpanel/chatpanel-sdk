# KnowledgeApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**knowledgeAccess**](KnowledgeApi.md#knowledgeAccess) | **GET** /v1/kb/{id}/access | Who may use a base — every agent, or the ones named. |
| [**knowledgeAccessWithHttpInfo**](KnowledgeApi.md#knowledgeAccessWithHttpInfo) | **GET** /v1/kb/{id}/access | Who may use a base — every agent, or the ones named. |
| [**knowledgeAdd**](KnowledgeApi.md#knowledgeAdd) | **POST** /v1/kb/{id}/documents | Add a document — bytes, a path on this machine, a URL, or text — and index it. |
| [**knowledgeAddWithHttpInfo**](KnowledgeApi.md#knowledgeAddWithHttpInfo) | **POST** /v1/kb/{id}/documents | Add a document — bytes, a path on this machine, a URL, or text — and index it. |
| [**knowledgeCreate**](KnowledgeApi.md#knowledgeCreate) | **POST** /v1/kb | Create a knowledge base (or return the one with that id). |
| [**knowledgeCreateWithHttpInfo**](KnowledgeApi.md#knowledgeCreateWithHttpInfo) | **POST** /v1/kb | Create a knowledge base (or return the one with that id). |
| [**knowledgeDelete**](KnowledgeApi.md#knowledgeDelete) | **DELETE** /v1/kb/{id} | Delete a base and its folder. |
| [**knowledgeDeleteWithHttpInfo**](KnowledgeApi.md#knowledgeDeleteWithHttpInfo) | **DELETE** /v1/kb/{id} | Delete a base and its folder. |
| [**knowledgeDocuments**](KnowledgeApi.md#knowledgeDocuments) | **GET** /v1/kb/{id}/documents | The documents in a base. |
| [**knowledgeDocumentsWithHttpInfo**](KnowledgeApi.md#knowledgeDocumentsWithHttpInfo) | **GET** /v1/kb/{id}/documents | The documents in a base. |
| [**knowledgeEmbed**](KnowledgeApi.md#knowledgeEmbed) | **POST** /v1/kb/{id}/embed | Embed every passage that has no vector yet, and say where the embedder stands. |
| [**knowledgeEmbedWithHttpInfo**](KnowledgeApi.md#knowledgeEmbedWithHttpInfo) | **POST** /v1/kb/{id}/embed | Embed every passage that has no vector yet, and say where the embedder stands. |
| [**knowledgeGraph**](KnowledgeApi.md#knowledgeGraph) | **POST** /v1/kb/{id}/graph | What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two. |
| [**knowledgeGraphWithHttpInfo**](KnowledgeApi.md#knowledgeGraphWithHttpInfo) | **POST** /v1/kb/{id}/graph | What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two. |
| [**knowledgeList**](KnowledgeApi.md#knowledgeList) | **GET** /v1/kb | The knowledge bases on this machine. |
| [**knowledgeListWithHttpInfo**](KnowledgeApi.md#knowledgeListWithHttpInfo) | **GET** /v1/kb | The knowledge bases on this machine. |
| [**knowledgeNote**](KnowledgeApi.md#knowledgeNote) | **POST** /v1/kb/{id}/notes | File a note — a fact, a summary, a correction — cited to passages; proposed until accepted. |
| [**knowledgeNoteWithHttpInfo**](KnowledgeApi.md#knowledgeNoteWithHttpInfo) | **POST** /v1/kb/{id}/notes | File a note — a fact, a summary, a correction — cited to passages; proposed until accepted. |
| [**knowledgeNoteStatus**](KnowledgeApi.md#knowledgeNoteStatus) | **POST** /v1/kb/{id}/notes/{note} | Accept a proposed note, withdraw it to proposed, or remove it. |
| [**knowledgeNoteStatusWithHttpInfo**](KnowledgeApi.md#knowledgeNoteStatusWithHttpInfo) | **POST** /v1/kb/{id}/notes/{note} | Accept a proposed note, withdraw it to proposed, or remove it. |
| [**knowledgeNotes**](KnowledgeApi.md#knowledgeNotes) | **GET** /v1/kb/{id}/notes | The notes filed into a base. |
| [**knowledgeNotesWithHttpInfo**](KnowledgeApi.md#knowledgeNotesWithHttpInfo) | **GET** /v1/kb/{id}/notes | The notes filed into a base. |
| [**knowledgeOutline**](KnowledgeApi.md#knowledgeOutline) | **GET** /v1/kb/{id}/outline | The table of contents a document&#39;s headings imply — every section once, with where it starts. |
| [**knowledgeOutlineWithHttpInfo**](KnowledgeApi.md#knowledgeOutlineWithHttpInfo) | **GET** /v1/kb/{id}/outline | The table of contents a document&#39;s headings imply — every section once, with where it starts. |
| [**knowledgePage**](KnowledgeApi.md#knowledgePage) | **GET** /v1/kb/{id}/documents/{doc} | One page of a document, from the index. |
| [**knowledgePageWithHttpInfo**](KnowledgeApi.md#knowledgePageWithHttpInfo) | **GET** /v1/kb/{id}/documents/{doc} | One page of a document, from the index. |
| [**knowledgePassage**](KnowledgeApi.md#knowledgePassage) | **GET** /v1/kb/{id}/passages/{passage} | One passage by id, with its citation. |
| [**knowledgePassageWithHttpInfo**](KnowledgeApi.md#knowledgePassageWithHttpInfo) | **GET** /v1/kb/{id}/passages/{passage} | One passage by id, with its citation. |
| [**knowledgeRemoveDocument**](KnowledgeApi.md#knowledgeRemoveDocument) | **DELETE** /v1/kb/{id}/documents/{doc} | Remove a document, its passages and vectors (notes keep their text and lose the cite). |
| [**knowledgeRemoveDocumentWithHttpInfo**](KnowledgeApi.md#knowledgeRemoveDocumentWithHttpInfo) | **DELETE** /v1/kb/{id}/documents/{doc} | Remove a document, its passages and vectors (notes keep their text and lose the cite). |
| [**knowledgeReport**](KnowledgeApi.md#knowledgeReport) | **GET** /v1/kb/{id}/report | The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes. |
| [**knowledgeReportWithHttpInfo**](KnowledgeApi.md#knowledgeReportWithHttpInfo) | **GET** /v1/kb/{id}/report | The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes. |
| [**knowledgeResearch**](KnowledgeApi.md#knowledgeResearch) | **POST** /v1/kb/{id}/research | The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model. |
| [**knowledgeResearchWithHttpInfo**](KnowledgeApi.md#knowledgeResearchWithHttpInfo) | **POST** /v1/kb/{id}/research | The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model. |
| [**knowledgeSearch**](KnowledgeApi.md#knowledgeSearch) | **POST** /v1/kb/{id}/search | The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation. |
| [**knowledgeSearchWithHttpInfo**](KnowledgeApi.md#knowledgeSearchWithHttpInfo) | **POST** /v1/kb/{id}/search | The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation. |
| [**knowledgeSetAccess**](KnowledgeApi.md#knowledgeSetAccess) | **POST** /v1/kb/{id}/access | Grant a base to every agent or to the ones named — the owner&#39;s act. |
| [**knowledgeSetAccessWithHttpInfo**](KnowledgeApi.md#knowledgeSetAccessWithHttpInfo) | **POST** /v1/kb/{id}/access | Grant a base to every agent or to the ones named — the owner&#39;s act. |
| [**knowledgeStatus**](KnowledgeApi.md#knowledgeStatus) | **GET** /v1/kb/{id} | What a base holds — its documents, passages, notes, vectors, entities and connections. |
| [**knowledgeStatusWithHttpInfo**](KnowledgeApi.md#knowledgeStatusWithHttpInfo) | **GET** /v1/kb/{id} | What a base holds — its documents, passages, notes, vectors, entities and connections. |



## knowledgeAccess

> KbAccessResponse knowledgeAccess(id)

Who may use a base — every agent, or the ones named.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            KbAccessResponse result = apiInstance.knowledgeAccess(id);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeAccess");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

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

## knowledgeAccessWithHttpInfo

> ApiResponse<KbAccessResponse> knowledgeAccessWithHttpInfo(id)

Who may use a base — every agent, or the ones named.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            ApiResponse<KbAccessResponse> response = apiInstance.knowledgeAccessWithHttpInfo(id);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeAccess");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

### Return type

ApiResponse<[**KbAccessResponse**](KbAccessResponse.md)>


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


## knowledgeAdd

> KbAddResponse knowledgeAdd(id, kbAddRequest)

Add a document — bytes, a path on this machine, a URL, or text — and index it.

One of four sources: &#x60;name&#x60; + &#x60;data&#x60; (the file, base64, up to 64 MB — a PDF, DOCX, XLSX, PPTX, ODF, Markdown or text, parsed in the extract worker); &#x60;path&#x60; (a file or folder on this machine, walked with the same refusals the &#x60;files&#x60; tool applies — credential stores withheld and named, &#x60;node_modules&#x60; and hidden folders skipped, documents up to 64 MB; TOKEN-GATED: a path is a read on the machine, so it is 403 to a caller without the token or the extension origin); &#x60;url&#x60; (a public page through the &#x60;read&#x60; capability); &#x60;text&#x60;. The same bytes added again REPLACE the document. Passages are chunked by the document&#39;s own headings with page citations, indexed by words and in the graph, and embedded when the embedder&#39;s model is on disk (&#x60;embedded&#x60; says how many); the report is rewritten. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbAddRequest kbAddRequest = new KbAddRequest(); // KbAddRequest | 
        try {
            KbAddResponse result = apiInstance.knowledgeAdd(id, kbAddRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeAdd");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbAddRequest** | [**KbAddRequest**](KbAddRequest.md)|  | |

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

## knowledgeAddWithHttpInfo

> ApiResponse<KbAddResponse> knowledgeAddWithHttpInfo(id, kbAddRequest)

Add a document — bytes, a path on this machine, a URL, or text — and index it.

One of four sources: &#x60;name&#x60; + &#x60;data&#x60; (the file, base64, up to 64 MB — a PDF, DOCX, XLSX, PPTX, ODF, Markdown or text, parsed in the extract worker); &#x60;path&#x60; (a file or folder on this machine, walked with the same refusals the &#x60;files&#x60; tool applies — credential stores withheld and named, &#x60;node_modules&#x60; and hidden folders skipped, documents up to 64 MB; TOKEN-GATED: a path is a read on the machine, so it is 403 to a caller without the token or the extension origin); &#x60;url&#x60; (a public page through the &#x60;read&#x60; capability); &#x60;text&#x60;. The same bytes added again REPLACE the document. Passages are chunked by the document&#39;s own headings with page citations, indexed by words and in the graph, and embedded when the embedder&#39;s model is on disk (&#x60;embedded&#x60; says how many); the report is rewritten. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbAddRequest kbAddRequest = new KbAddRequest(); // KbAddRequest | 
        try {
            ApiResponse<KbAddResponse> response = apiInstance.knowledgeAddWithHttpInfo(id, kbAddRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeAdd");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbAddRequest** | [**KbAddRequest**](KbAddRequest.md)|  | |

### Return type

ApiResponse<[**KbAddResponse**](KbAddResponse.md)>


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


## knowledgeCreate

> KbStatusResponse knowledgeCreate(kbCreateRequest)

Create a knowledge base (or return the one with that id).

A base is a folder under &#x60;~/.chatpanel/kb/&lt;id&gt;/&#x60; (manifest, passages, notes, vectors, a Markdown report) — a projection over the documents added to it, rebuildable from them. &#x60;embed: off&#x60; keeps it on words and the graph only. 201 when created, 200 with &#x60;existed&#x60; when the id was already there. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        KbCreateRequest kbCreateRequest = new KbCreateRequest(); // KbCreateRequest | 
        try {
            KbStatusResponse result = apiInstance.knowledgeCreate(kbCreateRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeCreate");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **kbCreateRequest** | [**KbCreateRequest**](KbCreateRequest.md)|  | |

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

## knowledgeCreateWithHttpInfo

> ApiResponse<KbStatusResponse> knowledgeCreateWithHttpInfo(kbCreateRequest)

Create a knowledge base (or return the one with that id).

A base is a folder under &#x60;~/.chatpanel/kb/&lt;id&gt;/&#x60; (manifest, passages, notes, vectors, a Markdown report) — a projection over the documents added to it, rebuildable from them. &#x60;embed: off&#x60; keeps it on words and the graph only. 201 when created, 200 with &#x60;existed&#x60; when the id was already there. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        KbCreateRequest kbCreateRequest = new KbCreateRequest(); // KbCreateRequest | 
        try {
            ApiResponse<KbStatusResponse> response = apiInstance.knowledgeCreateWithHttpInfo(kbCreateRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeCreate");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **kbCreateRequest** | [**KbCreateRequest**](KbCreateRequest.md)|  | |

### Return type

ApiResponse<[**KbStatusResponse**](KbStatusResponse.md)>


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


## knowledgeDelete

> KbOkResponse knowledgeDelete(id)

Delete a base and its folder.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure API key authorization: tokenHeader
        ApiKeyAuth tokenHeader = (ApiKeyAuth) defaultClient.getAuthentication("tokenHeader");
        tokenHeader.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //tokenHeader.setApiKeyPrefix("Token");

        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            KbOkResponse result = apiInstance.knowledgeDelete(id);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeDelete");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

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

## knowledgeDeleteWithHttpInfo

> ApiResponse<KbOkResponse> knowledgeDeleteWithHttpInfo(id)

Delete a base and its folder.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure API key authorization: tokenHeader
        ApiKeyAuth tokenHeader = (ApiKeyAuth) defaultClient.getAuthentication("tokenHeader");
        tokenHeader.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //tokenHeader.setApiKeyPrefix("Token");

        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            ApiResponse<KbOkResponse> response = apiInstance.knowledgeDeleteWithHttpInfo(id);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeDelete");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

### Return type

ApiResponse<[**KbOkResponse**](KbOkResponse.md)>


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


## knowledgeDocuments

> KbDocuments knowledgeDocuments(id)

The documents in a base.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            KbDocuments result = apiInstance.knowledgeDocuments(id);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeDocuments");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

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

## knowledgeDocumentsWithHttpInfo

> ApiResponse<KbDocuments> knowledgeDocumentsWithHttpInfo(id)

The documents in a base.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            ApiResponse<KbDocuments> response = apiInstance.knowledgeDocumentsWithHttpInfo(id);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeDocuments");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

### Return type

ApiResponse<[**KbDocuments**](KbDocuments.md)>


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


## knowledgeEmbed

> KbEmbedResponse knowledgeEmbed(id, body)

Embed every passage that has no vector yet, and say where the embedder stands.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        Object body = null; // Object | 
        try {
            KbEmbedResponse result = apiInstance.knowledgeEmbed(id, body);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeEmbed");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **body** | **Object**|  | [optional] |

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

## knowledgeEmbedWithHttpInfo

> ApiResponse<KbEmbedResponse> knowledgeEmbedWithHttpInfo(id, body)

Embed every passage that has no vector yet, and say where the embedder stands.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        Object body = null; // Object | 
        try {
            ApiResponse<KbEmbedResponse> response = apiInstance.knowledgeEmbedWithHttpInfo(id, body);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeEmbed");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **body** | **Object**|  | [optional] |

### Return type

ApiResponse<[**KbEmbedResponse**](KbEmbedResponse.md)>


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


## knowledgeGraph

> KbGraphResponse knowledgeGraph(id, kbGraphRequest)

What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbGraphRequest kbGraphRequest = new KbGraphRequest(); // KbGraphRequest | 
        try {
            KbGraphResponse result = apiInstance.knowledgeGraph(id, kbGraphRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeGraph");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbGraphRequest** | [**KbGraphRequest**](KbGraphRequest.md)|  | |

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

## knowledgeGraphWithHttpInfo

> ApiResponse<KbGraphResponse> knowledgeGraphWithHttpInfo(id, kbGraphRequest)

What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbGraphRequest kbGraphRequest = new KbGraphRequest(); // KbGraphRequest | 
        try {
            ApiResponse<KbGraphResponse> response = apiInstance.knowledgeGraphWithHttpInfo(id, kbGraphRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeGraph");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbGraphRequest** | [**KbGraphRequest**](KbGraphRequest.md)|  | |

### Return type

ApiResponse<[**KbGraphResponse**](KbGraphResponse.md)>


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


## knowledgeList

> KbList knowledgeList()

The knowledge bases on this machine.

Each base with its id, name, document count, vector count and model. Loads no passages.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        try {
            KbList result = apiInstance.knowledgeList();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeList");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The bases. |  -  |

## knowledgeListWithHttpInfo

> ApiResponse<KbList> knowledgeListWithHttpInfo()

The knowledge bases on this machine.

Each base with its id, name, document count, vector count and model. Loads no passages.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        try {
            ApiResponse<KbList> response = apiInstance.knowledgeListWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeList");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiResponse<[**KbList**](KbList.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The bases. |  -  |


## knowledgeNote

> KbNoteResponse knowledgeNote(id, kbNoteRequest)

File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.

How a base improves over time. A note is indexed and searched as its own lane and shown with its status; &#x60;status: accepted&#x60; is honoured only from a caller with the token (the person, or a client acting for them) — any other caller&#39;s note is filed as &#x60;proposed&#x60;. Unknown cites are dropped. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbNoteRequest kbNoteRequest = new KbNoteRequest(); // KbNoteRequest | 
        try {
            KbNoteResponse result = apiInstance.knowledgeNote(id, kbNoteRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeNote");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbNoteRequest** | [**KbNoteRequest**](KbNoteRequest.md)|  | |

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

## knowledgeNoteWithHttpInfo

> ApiResponse<KbNoteResponse> knowledgeNoteWithHttpInfo(id, kbNoteRequest)

File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.

How a base improves over time. A note is indexed and searched as its own lane and shown with its status; &#x60;status: accepted&#x60; is honoured only from a caller with the token (the person, or a client acting for them) — any other caller&#39;s note is filed as &#x60;proposed&#x60;. Unknown cites are dropped. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbNoteRequest kbNoteRequest = new KbNoteRequest(); // KbNoteRequest | 
        try {
            ApiResponse<KbNoteResponse> response = apiInstance.knowledgeNoteWithHttpInfo(id, kbNoteRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeNote");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbNoteRequest** | [**KbNoteRequest**](KbNoteRequest.md)|  | |

### Return type

ApiResponse<[**KbNoteResponse**](KbNoteResponse.md)>


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


## knowledgeNoteStatus

> KbNoteResponse knowledgeNoteStatus(id, note, kbNoteStatusRequest)

Accept a proposed note, withdraw it to proposed, or remove it.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure API key authorization: tokenHeader
        ApiKeyAuth tokenHeader = (ApiKeyAuth) defaultClient.getAuthentication("tokenHeader");
        tokenHeader.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //tokenHeader.setApiKeyPrefix("Token");

        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        String note = "note_example"; // String | The note id.
        KbNoteStatusRequest kbNoteStatusRequest = new KbNoteStatusRequest(); // KbNoteStatusRequest | 
        try {
            KbNoteResponse result = apiInstance.knowledgeNoteStatus(id, note, kbNoteStatusRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeNoteStatus");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **note** | **String**| The note id. | |
| **kbNoteStatusRequest** | [**KbNoteStatusRequest**](KbNoteStatusRequest.md)|  | |

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

## knowledgeNoteStatusWithHttpInfo

> ApiResponse<KbNoteResponse> knowledgeNoteStatusWithHttpInfo(id, note, kbNoteStatusRequest)

Accept a proposed note, withdraw it to proposed, or remove it.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure API key authorization: tokenHeader
        ApiKeyAuth tokenHeader = (ApiKeyAuth) defaultClient.getAuthentication("tokenHeader");
        tokenHeader.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //tokenHeader.setApiKeyPrefix("Token");

        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        String note = "note_example"; // String | The note id.
        KbNoteStatusRequest kbNoteStatusRequest = new KbNoteStatusRequest(); // KbNoteStatusRequest | 
        try {
            ApiResponse<KbNoteResponse> response = apiInstance.knowledgeNoteStatusWithHttpInfo(id, note, kbNoteStatusRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeNoteStatus");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **note** | **String**| The note id. | |
| **kbNoteStatusRequest** | [**KbNoteStatusRequest**](KbNoteStatusRequest.md)|  | |

### Return type

ApiResponse<[**KbNoteResponse**](KbNoteResponse.md)>


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


## knowledgeNotes

> KbNotes knowledgeNotes(id)

The notes filed into a base.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            KbNotes result = apiInstance.knowledgeNotes(id);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeNotes");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

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

## knowledgeNotesWithHttpInfo

> ApiResponse<KbNotes> knowledgeNotesWithHttpInfo(id)

The notes filed into a base.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            ApiResponse<KbNotes> response = apiInstance.knowledgeNotesWithHttpInfo(id);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeNotes");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

### Return type

ApiResponse<[**KbNotes**](KbNotes.md)>


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


## knowledgeOutline

> KbOutline knowledgeOutline(id, doc)

The table of contents a document&#39;s headings imply — every section once, with where it starts.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        String doc = "doc_example"; // String | One document; omit for all.
        try {
            KbOutline result = apiInstance.knowledgeOutline(id, doc);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeOutline");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **doc** | **String**| One document; omit for all. | [optional] |

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

## knowledgeOutlineWithHttpInfo

> ApiResponse<KbOutline> knowledgeOutlineWithHttpInfo(id, doc)

The table of contents a document&#39;s headings imply — every section once, with where it starts.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        String doc = "doc_example"; // String | One document; omit for all.
        try {
            ApiResponse<KbOutline> response = apiInstance.knowledgeOutlineWithHttpInfo(id, doc);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeOutline");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **doc** | **String**| One document; omit for all. | [optional] |

### Return type

ApiResponse<[**KbOutline**](KbOutline.md)>


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


## knowledgePage

> KbPage knowledgePage(id, doc, page)

One page of a document, from the index.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        String doc = "doc_example"; // String | The document id.
        Integer page = 1; // Integer | The page to read.
        try {
            KbPage result = apiInstance.knowledgePage(id, doc, page);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgePage");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **doc** | **String**| The document id. | |
| **page** | **Integer**| The page to read. | [optional] [default to 1] |

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

## knowledgePageWithHttpInfo

> ApiResponse<KbPage> knowledgePageWithHttpInfo(id, doc, page)

One page of a document, from the index.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        String doc = "doc_example"; // String | The document id.
        Integer page = 1; // Integer | The page to read.
        try {
            ApiResponse<KbPage> response = apiInstance.knowledgePageWithHttpInfo(id, doc, page);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgePage");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **doc** | **String**| The document id. | |
| **page** | **Integer**| The page to read. | [optional] [default to 1] |

### Return type

ApiResponse<[**KbPage**](KbPage.md)>


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


## knowledgePassage

> KbPassage knowledgePassage(id, passage)

One passage by id, with its citation.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        String passage = "passage_example"; // String | A passage id (`<doc>#<n>`) or a note id (`note:<id>`).
        try {
            KbPassage result = apiInstance.knowledgePassage(id, passage);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgePassage");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **passage** | **String**| A passage id (&#x60;&lt;doc&gt;#&lt;n&gt;&#x60;) or a note id (&#x60;note:&lt;id&gt;&#x60;). | |

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

## knowledgePassageWithHttpInfo

> ApiResponse<KbPassage> knowledgePassageWithHttpInfo(id, passage)

One passage by id, with its citation.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        String passage = "passage_example"; // String | A passage id (`<doc>#<n>`) or a note id (`note:<id>`).
        try {
            ApiResponse<KbPassage> response = apiInstance.knowledgePassageWithHttpInfo(id, passage);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgePassage");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **passage** | **String**| A passage id (&#x60;&lt;doc&gt;#&lt;n&gt;&#x60;) or a note id (&#x60;note:&lt;id&gt;&#x60;). | |

### Return type

ApiResponse<[**KbPassage**](KbPassage.md)>


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


## knowledgeRemoveDocument

> KbStatusResponse knowledgeRemoveDocument(id, doc)

Remove a document, its passages and vectors (notes keep their text and lose the cite).

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure API key authorization: tokenHeader
        ApiKeyAuth tokenHeader = (ApiKeyAuth) defaultClient.getAuthentication("tokenHeader");
        tokenHeader.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //tokenHeader.setApiKeyPrefix("Token");

        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        String doc = "doc_example"; // String | The document id.
        try {
            KbStatusResponse result = apiInstance.knowledgeRemoveDocument(id, doc);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeRemoveDocument");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **doc** | **String**| The document id. | |

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

## knowledgeRemoveDocumentWithHttpInfo

> ApiResponse<KbStatusResponse> knowledgeRemoveDocumentWithHttpInfo(id, doc)

Remove a document, its passages and vectors (notes keep their text and lose the cite).

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure API key authorization: tokenHeader
        ApiKeyAuth tokenHeader = (ApiKeyAuth) defaultClient.getAuthentication("tokenHeader");
        tokenHeader.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //tokenHeader.setApiKeyPrefix("Token");

        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        String doc = "doc_example"; // String | The document id.
        try {
            ApiResponse<KbStatusResponse> response = apiInstance.knowledgeRemoveDocumentWithHttpInfo(id, doc);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeRemoveDocument");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **doc** | **String**| The document id. | |

### Return type

ApiResponse<[**KbStatusResponse**](KbStatusResponse.md)>


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


## knowledgeReport

> String knowledgeReport(id)

The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            String result = apiInstance.knowledgeReport(id);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeReport");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

### Return type

**String**


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

## knowledgeReportWithHttpInfo

> ApiResponse<String> knowledgeReportWithHttpInfo(id)

The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            ApiResponse<String> response = apiInstance.knowledgeReportWithHttpInfo(id);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeReport");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

### Return type

ApiResponse<**String**>


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


## knowledgeResearch

> KbResearchResponse knowledgeResearch(id, kbResearchRequest)

The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.

The harness&#39;s loop (events kb-research.js), not a model&#39;s tool calls: a whole-document ask (\&quot;what is this about\&quot;) reads the outline and the opening of each section; a focused one searches, reads the best passages grouped by document in page order, and — with &#x60;model&#x60; (TOKEN-GATED: the check runs on this gateway&#39;s own chat route) — asks that model once whether what was read answers it, then searches once more for what it says is missing. When the hits split evenly across documents and the question names none, the answer is &#x60;ask&#x60; (which document?) instead of a guess; call again with &#x60;answer&#x60; to go on, or &#x60;ask: false&#x60; to never pause. &#x60;attachment&#x60; is the block a client attaches before the question (&#x60;kind: prefetch&#x60;), &#x60;null&#x60; when nothing matched beyond the plain statement. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbResearchRequest kbResearchRequest = new KbResearchRequest(); // KbResearchRequest | 
        try {
            KbResearchResponse result = apiInstance.knowledgeResearch(id, kbResearchRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeResearch");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbResearchRequest** | [**KbResearchRequest**](KbResearchRequest.md)|  | |

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

## knowledgeResearchWithHttpInfo

> ApiResponse<KbResearchResponse> knowledgeResearchWithHttpInfo(id, kbResearchRequest)

The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.

The harness&#39;s loop (events kb-research.js), not a model&#39;s tool calls: a whole-document ask (\&quot;what is this about\&quot;) reads the outline and the opening of each section; a focused one searches, reads the best passages grouped by document in page order, and — with &#x60;model&#x60; (TOKEN-GATED: the check runs on this gateway&#39;s own chat route) — asks that model once whether what was read answers it, then searches once more for what it says is missing. When the hits split evenly across documents and the question names none, the answer is &#x60;ask&#x60; (which document?) instead of a guess; call again with &#x60;answer&#x60; to go on, or &#x60;ask: false&#x60; to never pause. &#x60;attachment&#x60; is the block a client attaches before the question (&#x60;kind: prefetch&#x60;), &#x60;null&#x60; when nothing matched beyond the plain statement. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbResearchRequest kbResearchRequest = new KbResearchRequest(); // KbResearchRequest | 
        try {
            ApiResponse<KbResearchResponse> response = apiInstance.knowledgeResearchWithHttpInfo(id, kbResearchRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeResearch");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbResearchRequest** | [**KbResearchRequest**](KbResearchRequest.md)|  | |

### Return type

ApiResponse<[**KbResearchResponse**](KbResearchResponse.md)>


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


## knowledgeSearch

> KbSearchResponse knowledgeSearch(id, kbSearchRequest)

The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.

The words in up to four query shapes (BM25), the meaning when the base has vectors (the query embedded by the same model), the graph&#39;s one-hop expansion of the best hits (a passage sharing a name or a section with a hit, and &#x60;via&#x60; says which), and the notes as their own lane — fused by Reciprocal Rank Fusion with the graph at half weight, then the gateway&#39;s reranker fused in (never substituted). Each result carries &#x60;lanes&#x60; (which found it), &#x60;scores&#x60; (each lane&#39;s own, comparable within one query) and &#x60;cite&#x60; as the model is told to write it (&#x60;[report.pdf p.12]&#x60;). &#x60;docs&#x60; scopes to documents; &#x60;queries&#x60; adds the caller&#39;s own phrasings. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbSearchRequest kbSearchRequest = new KbSearchRequest(); // KbSearchRequest | 
        try {
            KbSearchResponse result = apiInstance.knowledgeSearch(id, kbSearchRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeSearch");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbSearchRequest** | [**KbSearchRequest**](KbSearchRequest.md)|  | |

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

## knowledgeSearchWithHttpInfo

> ApiResponse<KbSearchResponse> knowledgeSearchWithHttpInfo(id, kbSearchRequest)

The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.

The words in up to four query shapes (BM25), the meaning when the base has vectors (the query embedded by the same model), the graph&#39;s one-hop expansion of the best hits (a passage sharing a name or a section with a hit, and &#x60;via&#x60; says which), and the notes as their own lane — fused by Reciprocal Rank Fusion with the graph at half weight, then the gateway&#39;s reranker fused in (never substituted). Each result carries &#x60;lanes&#x60; (which found it), &#x60;scores&#x60; (each lane&#39;s own, comparable within one query) and &#x60;cite&#x60; as the model is told to write it (&#x60;[report.pdf p.12]&#x60;). &#x60;docs&#x60; scopes to documents; &#x60;queries&#x60; adds the caller&#39;s own phrasings. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbSearchRequest kbSearchRequest = new KbSearchRequest(); // KbSearchRequest | 
        try {
            ApiResponse<KbSearchResponse> response = apiInstance.knowledgeSearchWithHttpInfo(id, kbSearchRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeSearch");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbSearchRequest** | [**KbSearchRequest**](KbSearchRequest.md)|  | |

### Return type

ApiResponse<[**KbSearchResponse**](KbSearchResponse.md)>


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


## knowledgeSetAccess

> KbAccessResponse knowledgeSetAccess(id, kbAccessRequest)

Grant a base to every agent or to the ones named — the owner&#39;s act.

Grants (docs/knowledge-base.md §3, \&quot;knowledge is granted like skills\&quot;): a caller with the token or the extension&#39;s origin is the owner and reaches every base; any other caller names itself (&#x60;X-ChatPanel-Agent: claude&#x60;, or &#x60;?agent&#x3D;&#x60;) — the gateway&#39;s own MCP server sends the connected client&#39;s name — and reaches the bases whose &#x60;access.agents&#x60; is &#x60;all&#x60; (the default) or names it. &#x60;GET /v1/kb&#x60; lists only those; a base not granted reads as 404 to that caller. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure API key authorization: tokenHeader
        ApiKeyAuth tokenHeader = (ApiKeyAuth) defaultClient.getAuthentication("tokenHeader");
        tokenHeader.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //tokenHeader.setApiKeyPrefix("Token");

        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbAccessRequest kbAccessRequest = new KbAccessRequest(); // KbAccessRequest | 
        try {
            KbAccessResponse result = apiInstance.knowledgeSetAccess(id, kbAccessRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeSetAccess");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbAccessRequest** | [**KbAccessRequest**](KbAccessRequest.md)|  | |

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

## knowledgeSetAccessWithHttpInfo

> ApiResponse<KbAccessResponse> knowledgeSetAccessWithHttpInfo(id, kbAccessRequest)

Grant a base to every agent or to the ones named — the owner&#39;s act.

Grants (docs/knowledge-base.md §3, \&quot;knowledge is granted like skills\&quot;): a caller with the token or the extension&#39;s origin is the owner and reaches every base; any other caller names itself (&#x60;X-ChatPanel-Agent: claude&#x60;, or &#x60;?agent&#x3D;&#x60;) — the gateway&#39;s own MCP server sends the connected client&#39;s name — and reaches the bases whose &#x60;access.agents&#x60; is &#x60;all&#x60; (the default) or names it. &#x60;GET /v1/kb&#x60; lists only those; a base not granted reads as 404 to that caller. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure API key authorization: tokenHeader
        ApiKeyAuth tokenHeader = (ApiKeyAuth) defaultClient.getAuthentication("tokenHeader");
        tokenHeader.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //tokenHeader.setApiKeyPrefix("Token");

        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        KbAccessRequest kbAccessRequest = new KbAccessRequest(); // KbAccessRequest | 
        try {
            ApiResponse<KbAccessResponse> response = apiInstance.knowledgeSetAccessWithHttpInfo(id, kbAccessRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeSetAccess");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |
| **kbAccessRequest** | [**KbAccessRequest**](KbAccessRequest.md)|  | |

### Return type

ApiResponse<[**KbAccessResponse**](KbAccessResponse.md)>


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


## knowledgeStatus

> KbStatusResponse knowledgeStatus(id)

What a base holds — its documents, passages, notes, vectors, entities and connections.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            KbStatusResponse result = apiInstance.knowledgeStatus(id);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeStatus");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

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

## knowledgeStatusWithHttpInfo

> ApiResponse<KbStatusResponse> knowledgeStatusWithHttpInfo(id)

What a base holds — its documents, passages, notes, vectors, entities and connections.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.KnowledgeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        KnowledgeApi apiInstance = new KnowledgeApi(defaultClient);
        String id = "id_example"; // String | The base id.
        try {
            ApiResponse<KbStatusResponse> response = apiInstance.knowledgeStatusWithHttpInfo(id);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling KnowledgeApi#knowledgeStatus");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The base id. | |

### Return type

ApiResponse<[**KbStatusResponse**](KbStatusResponse.md)>


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

