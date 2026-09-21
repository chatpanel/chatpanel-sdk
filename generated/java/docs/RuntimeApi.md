# RuntimeApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**runtimeEngine**](RuntimeApi.md#runtimeEngine) | **POST** /v1/runtime/engines/{name} | Start the container engine (Podman — creates and starts its machine where one is needed). |
| [**runtimeEngineWithHttpInfo**](RuntimeApi.md#runtimeEngineWithHttpInfo) | **POST** /v1/runtime/engines/{name} | Start the container engine (Podman — creates and starts its machine where one is needed). |
| [**runtimeService**](RuntimeApi.md#runtimeService) | **POST** /v1/runtime/services/{id} | Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it. |
| [**runtimeServiceWithHttpInfo**](RuntimeApi.md#runtimeServiceWithHttpInfo) | **POST** /v1/runtime/services/{id} | Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it. |
| [**runtimeStatus**](RuntimeApi.md#runtimeStatus) | **GET** /v1/runtime | The runtime — the process sandbox, what is running now, the container engine, the services. |
| [**runtimeStatusWithHttpInfo**](RuntimeApi.md#runtimeStatusWithHttpInfo) | **GET** /v1/runtime | The runtime — the process sandbox, what is running now, the container engine, the services. |



## runtimeEngine

> RuntimeActionResult runtimeEngine(name, runtimeEngineRequest)

Start the container engine (Podman — creates and starts its machine where one is needed).

&#x60;{ action: &#39;start&#39; }&#x60;. Podman on macOS and Windows runs containers in a machine: made on first start (&#x60;podman machine init&#x60;), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.RuntimeApi;

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

        RuntimeApi apiInstance = new RuntimeApi(defaultClient);
        String name = "podman"; // String | 
        RuntimeEngineRequest runtimeEngineRequest = new RuntimeEngineRequest(); // RuntimeEngineRequest | 
        try {
            RuntimeActionResult result = apiInstance.runtimeEngine(name, runtimeEngineRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling RuntimeApi#runtimeEngine");
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
| **name** | **String**|  | [enum: podman, docker] |
| **runtimeEngineRequest** | [**RuntimeEngineRequest**](RuntimeEngineRequest.md)|  | [optional] |

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Started |  -  |
| **400** | Could not start; &#x60;install&#x60; when the engine is not installed. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

## runtimeEngineWithHttpInfo

> ApiResponse<RuntimeActionResult> runtimeEngineWithHttpInfo(name, runtimeEngineRequest)

Start the container engine (Podman — creates and starts its machine where one is needed).

&#x60;{ action: &#39;start&#39; }&#x60;. Podman on macOS and Windows runs containers in a machine: made on first start (&#x60;podman machine init&#x60;), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.RuntimeApi;

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

        RuntimeApi apiInstance = new RuntimeApi(defaultClient);
        String name = "podman"; // String | 
        RuntimeEngineRequest runtimeEngineRequest = new RuntimeEngineRequest(); // RuntimeEngineRequest | 
        try {
            ApiResponse<RuntimeActionResult> response = apiInstance.runtimeEngineWithHttpInfo(name, runtimeEngineRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling RuntimeApi#runtimeEngine");
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
| **name** | **String**|  | [enum: podman, docker] |
| **runtimeEngineRequest** | [**RuntimeEngineRequest**](RuntimeEngineRequest.md)|  | [optional] |

### Return type

ApiResponse<[**RuntimeActionResult**](RuntimeActionResult.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Started |  -  |
| **400** | Could not start; &#x60;install&#x60; when the engine is not installed. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |


## runtimeService

> RuntimeActionResult runtimeService(id, runtimeServiceRequest)

Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it.

&#x60;{ action: &#39;start&#39; | &#39;stop&#39; }&#x60;. &#x60;start&#x60; brings the engine up if it is not, runs the service&#39;s container from its kit (SearXNG: &#x60;127.0.0.1:8888&#x60;, JSON on, the limiter off, a random secret, capabilities dropped; &#x60;reranker&#x60; on 8889 and &#x60;opendecision&#x60; on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (&#x60;search.searxng.url&#x60;; &#x60;capabilities.rerank&#x60; / &#x60;capabilities.decide&#x60;, so &#x60;/v1/rerank&#x60; and &#x60;/v1/decide&#x60; are served and listed). &#x60;stop&#x60; stops the container and clears what it set. &#x60;{ action: &#39;model&#39;, model }&#x60; (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (&#x60;GET /v1/runtime&#x60; &#x60;services.&lt;id&gt;.models&#x60;) or a Hugging Face &#x60;owner/name&#x60; — gated by the container ENGINE&#39;s memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.RuntimeApi;

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

        RuntimeApi apiInstance = new RuntimeApi(defaultClient);
        String id = "searxng"; // String | 
        RuntimeServiceRequest runtimeServiceRequest = new RuntimeServiceRequest(); // RuntimeServiceRequest | 
        try {
            RuntimeActionResult result = apiInstance.runtimeService(id, runtimeServiceRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling RuntimeApi#runtimeService");
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
| **id** | **String**|  | [enum: searxng, reranker, opendecision] |
| **runtimeServiceRequest** | [**RuntimeServiceRequest**](RuntimeServiceRequest.md)|  | [optional] |

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Done; &#x60;url&#x60; and &#x60;answering&#x60; on a start. |  -  |
| **400** | Could not; &#x60;install&#x60; when there is no engine. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

## runtimeServiceWithHttpInfo

> ApiResponse<RuntimeActionResult> runtimeServiceWithHttpInfo(id, runtimeServiceRequest)

Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it.

&#x60;{ action: &#39;start&#39; | &#39;stop&#39; }&#x60;. &#x60;start&#x60; brings the engine up if it is not, runs the service&#39;s container from its kit (SearXNG: &#x60;127.0.0.1:8888&#x60;, JSON on, the limiter off, a random secret, capabilities dropped; &#x60;reranker&#x60; on 8889 and &#x60;opendecision&#x60; on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (&#x60;search.searxng.url&#x60;; &#x60;capabilities.rerank&#x60; / &#x60;capabilities.decide&#x60;, so &#x60;/v1/rerank&#x60; and &#x60;/v1/decide&#x60; are served and listed). &#x60;stop&#x60; stops the container and clears what it set. &#x60;{ action: &#39;model&#39;, model }&#x60; (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (&#x60;GET /v1/runtime&#x60; &#x60;services.&lt;id&gt;.models&#x60;) or a Hugging Face &#x60;owner/name&#x60; — gated by the container ENGINE&#39;s memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.RuntimeApi;

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

        RuntimeApi apiInstance = new RuntimeApi(defaultClient);
        String id = "searxng"; // String | 
        RuntimeServiceRequest runtimeServiceRequest = new RuntimeServiceRequest(); // RuntimeServiceRequest | 
        try {
            ApiResponse<RuntimeActionResult> response = apiInstance.runtimeServiceWithHttpInfo(id, runtimeServiceRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling RuntimeApi#runtimeService");
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
| **id** | **String**|  | [enum: searxng, reranker, opendecision] |
| **runtimeServiceRequest** | [**RuntimeServiceRequest**](RuntimeServiceRequest.md)|  | [optional] |

### Return type

ApiResponse<[**RuntimeActionResult**](RuntimeActionResult.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Done; &#x60;url&#x60; and &#x60;answering&#x60; on a start. |  -  |
| **400** | Could not; &#x60;install&#x60; when there is no engine. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |


## runtimeStatus

> RuntimeDocument runtimeStatus()

The runtime — the process sandbox, what is running now, the container engine, the services.

One document for Settings › Runtime. &#x60;sandbox&#x60; is the bridge&#39;s own (&#x60;/health.sandbox&#x60;: enabled, mode &#x60;open&#x60; | &#x60;allowlist&#x60; | &#x60;none&#x60;, the runtime found, the reason when none, the global &#x60;extras&#x60;, whether a process can get a session of its own, and &#x60;refused&#x60; — the last hosts any process was refused, names only). &#x60;processes&#x60; lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. &#x60;engines&#x60; says which container engine exists (&#x60;podman&#x60; first, &#x60;docker&#x60;) and whether it can run a container now; when none does, &#x60;install&#x60; carries the command for this platform — shown to the person, never run by the gateway. &#x60;services&#x60; is the catalogue: &#x60;searxng&#x60; with its state (&#x60;no-engine&#x60; | &#x60;engine-stopped&#x60; | &#x60;absent&#x60; | &#x60;stopped&#x60; | &#x60;running&#x60;), its loopback URL and whether it answers. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.RuntimeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        RuntimeApi apiInstance = new RuntimeApi(defaultClient);
        try {
            RuntimeDocument result = apiInstance.runtimeStatus();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling RuntimeApi#runtimeStatus");
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

[**RuntimeDocument**](RuntimeDocument.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The runtime document. |  -  |

## runtimeStatusWithHttpInfo

> ApiResponse<RuntimeDocument> runtimeStatusWithHttpInfo()

The runtime — the process sandbox, what is running now, the container engine, the services.

One document for Settings › Runtime. &#x60;sandbox&#x60; is the bridge&#39;s own (&#x60;/health.sandbox&#x60;: enabled, mode &#x60;open&#x60; | &#x60;allowlist&#x60; | &#x60;none&#x60;, the runtime found, the reason when none, the global &#x60;extras&#x60;, whether a process can get a session of its own, and &#x60;refused&#x60; — the last hosts any process was refused, names only). &#x60;processes&#x60; lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. &#x60;engines&#x60; says which container engine exists (&#x60;podman&#x60; first, &#x60;docker&#x60;) and whether it can run a container now; when none does, &#x60;install&#x60; carries the command for this platform — shown to the person, never run by the gateway. &#x60;services&#x60; is the catalogue: &#x60;searxng&#x60; with its state (&#x60;no-engine&#x60; | &#x60;engine-stopped&#x60; | &#x60;absent&#x60; | &#x60;stopped&#x60; | &#x60;running&#x60;), its loopback URL and whether it answers. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.RuntimeApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        RuntimeApi apiInstance = new RuntimeApi(defaultClient);
        try {
            ApiResponse<RuntimeDocument> response = apiInstance.runtimeStatusWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling RuntimeApi#runtimeStatus");
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

ApiResponse<[**RuntimeDocument**](RuntimeDocument.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The runtime document. |  -  |

