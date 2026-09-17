# TeamsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**teamsAnswer**](TeamsApi.md#teamsAnswer) | **POST** /v1/teams/runs/{runId}/answer | A person answers an ask on the board. |
| [**teamsAnswerWithHttpInfo**](TeamsApi.md#teamsAnswerWithHttpInfo) | **POST** /v1/teams/runs/{runId}/answer | A person answers an ask on the board. |
| [**teamsAppendRunEvents**](TeamsApi.md#teamsAppendRunEvents) | **POST** /v1/teams/runs/{runId}/events | The running client appends events. |
| [**teamsAppendRunEventsWithHttpInfo**](TeamsApi.md#teamsAppendRunEventsWithHttpInfo) | **POST** /v1/teams/runs/{runId}/events | The running client appends events. |
| [**teamsCheckpoint**](TeamsApi.md#teamsCheckpoint) | **GET** /v1/teams/runs/{runId}/checkpoint | What a client needs to resume a run whose client went away. |
| [**teamsCheckpointWithHttpInfo**](TeamsApi.md#teamsCheckpointWithHttpInfo) | **GET** /v1/teams/runs/{runId}/checkpoint | What a client needs to resume a run whose client went away. |
| [**teamsClaim**](TeamsApi.md#teamsClaim) | **POST** /v1/teams/runs/{runId}/claim | A client takes a stopped or stale run over. |
| [**teamsClaimWithHttpInfo**](TeamsApi.md#teamsClaimWithHttpInfo) | **POST** /v1/teams/runs/{runId}/claim | A client takes a stopped or stale run over. |
| [**teamsCreateRun**](TeamsApi.md#teamsCreateRun) | **POST** /v1/teams/runs | Open a run record. |
| [**teamsCreateRunWithHttpInfo**](TeamsApi.md#teamsCreateRunWithHttpInfo) | **POST** /v1/teams/runs | Open a run record. |
| [**teamsDecide**](TeamsApi.md#teamsDecide) | **POST** /v1/teams/runs/{runId}/decide | Approve or reject a post. |
| [**teamsDecideWithHttpInfo**](TeamsApi.md#teamsDecideWithHttpInfo) | **POST** /v1/teams/runs/{runId}/decide | Approve or reject a post. |
| [**teamsDeleteRun**](TeamsApi.md#teamsDeleteRun) | **DELETE** /v1/teams/runs/{runId} | Remove a run; a live one is stopped first. |
| [**teamsDeleteRunWithHttpInfo**](TeamsApi.md#teamsDeleteRunWithHttpInfo) | **DELETE** /v1/teams/runs/{runId} | Remove a run; a live one is stopped first. |
| [**teamsGetRun**](TeamsApi.md#teamsGetRun) | **GET** /v1/teams/runs/{runId} | One run, optionally with its events. |
| [**teamsGetRunWithHttpInfo**](TeamsApi.md#teamsGetRunWithHttpInfo) | **GET** /v1/teams/runs/{runId} | One run, optionally with its events. |
| [**teamsHandoff**](TeamsApi.md#teamsHandoff) | **POST** /v1/teams/runs/{runId}/handoff | Continue a task on another model. |
| [**teamsHandoffWithHttpInfo**](TeamsApi.md#teamsHandoffWithHttpInfo) | **POST** /v1/teams/runs/{runId}/handoff | Continue a task on another model. |
| [**teamsListRuns**](TeamsApi.md#teamsListRuns) | **GET** /v1/teams/runs | The board — recent runs, newest first. |
| [**teamsListRunsWithHttpInfo**](TeamsApi.md#teamsListRunsWithHttpInfo) | **GET** /v1/teams/runs | The board — recent runs, newest first. |
| [**teamsPost**](TeamsApi.md#teamsPost) | **POST** /v1/teams/runs/{runId}/post | Post a note to a thread. |
| [**teamsPostWithHttpInfo**](TeamsApi.md#teamsPostWithHttpInfo) | **POST** /v1/teams/runs/{runId}/post | Post a note to a thread. |
| [**teamsRemoveThread**](TeamsApi.md#teamsRemoveThread) | **DELETE** /v1/teams/runs/{runId}/threads/{threadId} | A person removes a thread from the board. |
| [**teamsRemoveThreadWithHttpInfo**](TeamsApi.md#teamsRemoveThreadWithHttpInfo) | **DELETE** /v1/teams/runs/{runId}/threads/{threadId} | A person removes a thread from the board. |
| [**teamsRunEvents**](TeamsApi.md#teamsRunEvents) | **GET** /v1/teams/runs/{runId}/events | Tail a run — the record first, replay from &#x60;after&#x60;, then live. |
| [**teamsRunEventsWithHttpInfo**](TeamsApi.md#teamsRunEventsWithHttpInfo) | **GET** /v1/teams/runs/{runId}/events | Tail a run — the record first, replay from &#x60;after&#x60;, then live. |
| [**teamsStopRun**](TeamsApi.md#teamsStopRun) | **POST** /v1/teams/runs/{runId}/stop | Ask the running client to stop. |
| [**teamsStopRunWithHttpInfo**](TeamsApi.md#teamsStopRunWithHttpInfo) | **POST** /v1/teams/runs/{runId}/stop | Ask the running client to stop. |



## teamsAnswer

> InlineObject teamsAnswer(runId, teamsAnswerRequest)

A person answers an ask on the board.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsAnswerRequest teamsAnswerRequest = new TeamsAnswerRequest(); // TeamsAnswerRequest | 
        try {
            InlineObject result = apiInstance.teamsAnswer(runId, teamsAnswerRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsAnswer");
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
| **runId** | **String**|  | |
| **teamsAnswerRequest** | [**TeamsAnswerRequest**](TeamsAnswerRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## teamsAnswerWithHttpInfo

> ApiResponse<InlineObject> teamsAnswerWithHttpInfo(runId, teamsAnswerRequest)

A person answers an ask on the board.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsAnswerRequest teamsAnswerRequest = new TeamsAnswerRequest(); // TeamsAnswerRequest | 
        try {
            ApiResponse<InlineObject> response = apiInstance.teamsAnswerWithHttpInfo(runId, teamsAnswerRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsAnswer");
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
| **runId** | **String**|  | |
| **teamsAnswerRequest** | [**TeamsAnswerRequest**](TeamsAnswerRequest.md)|  | |

### Return type

ApiResponse<[**InlineObject**](InlineObject.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## teamsAppendRunEvents

> InlineObject teamsAppendRunEvents(runId, teamsAppendRunEventsRequest)

The running client appends events.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsAppendRunEventsRequest teamsAppendRunEventsRequest = new TeamsAppendRunEventsRequest(); // TeamsAppendRunEventsRequest | 
        try {
            InlineObject result = apiInstance.teamsAppendRunEvents(runId, teamsAppendRunEventsRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsAppendRunEvents");
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
| **runId** | **String**|  | |
| **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## teamsAppendRunEventsWithHttpInfo

> ApiResponse<InlineObject> teamsAppendRunEventsWithHttpInfo(runId, teamsAppendRunEventsRequest)

The running client appends events.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsAppendRunEventsRequest teamsAppendRunEventsRequest = new TeamsAppendRunEventsRequest(); // TeamsAppendRunEventsRequest | 
        try {
            ApiResponse<InlineObject> response = apiInstance.teamsAppendRunEventsWithHttpInfo(runId, teamsAppendRunEventsRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsAppendRunEvents");
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
| **runId** | **String**|  | |
| **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md)|  | |

### Return type

ApiResponse<[**InlineObject**](InlineObject.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## teamsCheckpoint

> TeamsCheckpoint200Response teamsCheckpoint(runId)

What a client needs to resume a run whose client went away.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        try {
            TeamsCheckpoint200Response result = apiInstance.teamsCheckpoint(runId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsCheckpoint");
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
| **runId** | **String**|  | |

### Return type

[**TeamsCheckpoint200Response**](TeamsCheckpoint200Response.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The checkpoint. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## teamsCheckpointWithHttpInfo

> ApiResponse<TeamsCheckpoint200Response> teamsCheckpointWithHttpInfo(runId)

What a client needs to resume a run whose client went away.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        try {
            ApiResponse<TeamsCheckpoint200Response> response = apiInstance.teamsCheckpointWithHttpInfo(runId);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsCheckpoint");
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
| **runId** | **String**|  | |

### Return type

ApiResponse<[**TeamsCheckpoint200Response**](TeamsCheckpoint200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The checkpoint. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## teamsClaim

> InlineObject teamsClaim(runId, teamsClaimRequest)

A client takes a stopped or stale run over.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsClaimRequest teamsClaimRequest = new TeamsClaimRequest(); // TeamsClaimRequest | 
        try {
            InlineObject result = apiInstance.teamsClaim(runId, teamsClaimRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsClaim");
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
| **runId** | **String**|  | |
| **teamsClaimRequest** | [**TeamsClaimRequest**](TeamsClaimRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## teamsClaimWithHttpInfo

> ApiResponse<InlineObject> teamsClaimWithHttpInfo(runId, teamsClaimRequest)

A client takes a stopped or stale run over.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsClaimRequest teamsClaimRequest = new TeamsClaimRequest(); // TeamsClaimRequest | 
        try {
            ApiResponse<InlineObject> response = apiInstance.teamsClaimWithHttpInfo(runId, teamsClaimRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsClaim");
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
| **runId** | **String**|  | |
| **teamsClaimRequest** | [**TeamsClaimRequest**](TeamsClaimRequest.md)|  | |

### Return type

ApiResponse<[**InlineObject**](InlineObject.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## teamsCreateRun

> InlineObject teamsCreateRun(teamRunCreate)

Open a run record.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        TeamRunCreate teamRunCreate = new TeamRunCreate(); // TeamRunCreate | 
        try {
            InlineObject result = apiInstance.teamsCreateRun(teamRunCreate);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsCreateRun");
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
| **teamRunCreate** | [**TeamRunCreate**](TeamRunCreate.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

## teamsCreateRunWithHttpInfo

> ApiResponse<InlineObject> teamsCreateRunWithHttpInfo(teamRunCreate)

Open a run record.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        TeamRunCreate teamRunCreate = new TeamRunCreate(); // TeamRunCreate | 
        try {
            ApiResponse<InlineObject> response = apiInstance.teamsCreateRunWithHttpInfo(teamRunCreate);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsCreateRun");
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
| **teamRunCreate** | [**TeamRunCreate**](TeamRunCreate.md)|  | |

### Return type

ApiResponse<[**InlineObject**](InlineObject.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |


## teamsDecide

> InlineObject teamsDecide(runId, teamsDecideRequest)

Approve or reject a post.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsDecideRequest teamsDecideRequest = new TeamsDecideRequest(); // TeamsDecideRequest | 
        try {
            InlineObject result = apiInstance.teamsDecide(runId, teamsDecideRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsDecide");
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
| **runId** | **String**|  | |
| **teamsDecideRequest** | [**TeamsDecideRequest**](TeamsDecideRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## teamsDecideWithHttpInfo

> ApiResponse<InlineObject> teamsDecideWithHttpInfo(runId, teamsDecideRequest)

Approve or reject a post.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsDecideRequest teamsDecideRequest = new TeamsDecideRequest(); // TeamsDecideRequest | 
        try {
            ApiResponse<InlineObject> response = apiInstance.teamsDecideWithHttpInfo(runId, teamsDecideRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsDecide");
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
| **runId** | **String**|  | |
| **teamsDecideRequest** | [**TeamsDecideRequest**](TeamsDecideRequest.md)|  | |

### Return type

ApiResponse<[**InlineObject**](InlineObject.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## teamsDeleteRun

> PrefsDelete200Response teamsDeleteRun(runId)

Remove a run; a live one is stopped first.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        try {
            PrefsDelete200Response result = apiInstance.teamsDeleteRun(runId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsDeleteRun");
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
| **runId** | **String**|  | |

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Whether the record existed. |  -  |

## teamsDeleteRunWithHttpInfo

> ApiResponse<PrefsDelete200Response> teamsDeleteRunWithHttpInfo(runId)

Remove a run; a live one is stopped first.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        try {
            ApiResponse<PrefsDelete200Response> response = apiInstance.teamsDeleteRunWithHttpInfo(runId);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsDeleteRun");
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
| **runId** | **String**|  | |

### Return type

ApiResponse<[**PrefsDelete200Response**](PrefsDelete200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Whether the record existed. |  -  |


## teamsGetRun

> InlineObject teamsGetRun(runId, events)

One run, optionally with its events.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        Boolean events = true; // Boolean | 
        try {
            InlineObject result = apiInstance.teamsGetRun(runId, events);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsGetRun");
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
| **runId** | **String**|  | |
| **events** | **Boolean**|  | [optional] |

### Return type

[**InlineObject**](InlineObject.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## teamsGetRunWithHttpInfo

> ApiResponse<InlineObject> teamsGetRunWithHttpInfo(runId, events)

One run, optionally with its events.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        Boolean events = true; // Boolean | 
        try {
            ApiResponse<InlineObject> response = apiInstance.teamsGetRunWithHttpInfo(runId, events);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsGetRun");
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
| **runId** | **String**|  | |
| **events** | **Boolean**|  | [optional] |

### Return type

ApiResponse<[**InlineObject**](InlineObject.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## teamsHandoff

> InlineObject teamsHandoff(runId, teamsHandoffRequest)

Continue a task on another model.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsHandoffRequest teamsHandoffRequest = new TeamsHandoffRequest(); // TeamsHandoffRequest | 
        try {
            InlineObject result = apiInstance.teamsHandoff(runId, teamsHandoffRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsHandoff");
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
| **runId** | **String**|  | |
| **teamsHandoffRequest** | [**TeamsHandoffRequest**](TeamsHandoffRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## teamsHandoffWithHttpInfo

> ApiResponse<InlineObject> teamsHandoffWithHttpInfo(runId, teamsHandoffRequest)

Continue a task on another model.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsHandoffRequest teamsHandoffRequest = new TeamsHandoffRequest(); // TeamsHandoffRequest | 
        try {
            ApiResponse<InlineObject> response = apiInstance.teamsHandoffWithHttpInfo(runId, teamsHandoffRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsHandoff");
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
| **runId** | **String**|  | |
| **teamsHandoffRequest** | [**TeamsHandoffRequest**](TeamsHandoffRequest.md)|  | |

### Return type

ApiResponse<[**InlineObject**](InlineObject.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## teamsListRuns

> TeamsListRuns200Response teamsListRuns(limit, team)

The board — recent runs, newest first.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        Integer limit = 50; // Integer | 
        String team = "team_example"; // String | 
        try {
            TeamsListRuns200Response result = apiInstance.teamsListRuns(limit, team);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsListRuns");
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
| **limit** | **Integer**|  | [optional] [default to 50] |
| **team** | **String**|  | [optional] |

### Return type

[**TeamsListRuns200Response**](TeamsListRuns200Response.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Runs. |  -  |

## teamsListRunsWithHttpInfo

> ApiResponse<TeamsListRuns200Response> teamsListRunsWithHttpInfo(limit, team)

The board — recent runs, newest first.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        Integer limit = 50; // Integer | 
        String team = "team_example"; // String | 
        try {
            ApiResponse<TeamsListRuns200Response> response = apiInstance.teamsListRunsWithHttpInfo(limit, team);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsListRuns");
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
| **limit** | **Integer**|  | [optional] [default to 50] |
| **team** | **String**|  | [optional] |

### Return type

ApiResponse<[**TeamsListRuns200Response**](TeamsListRuns200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Runs. |  -  |


## teamsPost

> InlineObject teamsPost(runId, teamsPostRequest)

Post a note to a thread.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsPostRequest teamsPostRequest = new TeamsPostRequest(); // TeamsPostRequest | 
        try {
            InlineObject result = apiInstance.teamsPost(runId, teamsPostRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsPost");
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
| **runId** | **String**|  | |
| **teamsPostRequest** | [**TeamsPostRequest**](TeamsPostRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## teamsPostWithHttpInfo

> ApiResponse<InlineObject> teamsPostWithHttpInfo(runId, teamsPostRequest)

Post a note to a thread.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        TeamsPostRequest teamsPostRequest = new TeamsPostRequest(); // TeamsPostRequest | 
        try {
            ApiResponse<InlineObject> response = apiInstance.teamsPostWithHttpInfo(runId, teamsPostRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsPost");
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
| **runId** | **String**|  | |
| **teamsPostRequest** | [**TeamsPostRequest**](TeamsPostRequest.md)|  | |

### Return type

ApiResponse<[**InlineObject**](InlineObject.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## teamsRemoveThread

> InlineObject teamsRemoveThread(runId, threadId)

A person removes a thread from the board.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        String threadId = "threadId_example"; // String | 
        try {
            InlineObject result = apiInstance.teamsRemoveThread(runId, threadId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsRemoveThread");
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
| **runId** | **String**|  | |
| **threadId** | **String**|  | |

### Return type

[**InlineObject**](InlineObject.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## teamsRemoveThreadWithHttpInfo

> ApiResponse<InlineObject> teamsRemoveThreadWithHttpInfo(runId, threadId)

A person removes a thread from the board.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        String threadId = "threadId_example"; // String | 
        try {
            ApiResponse<InlineObject> response = apiInstance.teamsRemoveThreadWithHttpInfo(runId, threadId);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsRemoveThread");
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
| **runId** | **String**|  | |
| **threadId** | **String**|  | |

### Return type

ApiResponse<[**InlineObject**](InlineObject.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## teamsRunEvents

> String teamsRunEvents(runId, after)

Tail a run — the record first, replay from &#x60;after&#x60;, then live.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        Integer after = 56; // Integer | Replay events with seq greater than this; absent means from the start.
        try {
            String result = apiInstance.teamsRunEvents(runId, after);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsRunEvents");
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
| **runId** | **String**|  | |
| **after** | **Integer**| Replay events with seq greater than this; absent means from the start. | [optional] |

### Return type

**String**


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;{ seq, type, at, payload }&#x60; frames; the first is &#x60;hello&#x60; with the run. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## teamsRunEventsWithHttpInfo

> ApiResponse<String> teamsRunEventsWithHttpInfo(runId, after)

Tail a run — the record first, replay from &#x60;after&#x60;, then live.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        Integer after = 56; // Integer | Replay events with seq greater than this; absent means from the start.
        try {
            ApiResponse<String> response = apiInstance.teamsRunEventsWithHttpInfo(runId, after);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsRunEvents");
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
| **runId** | **String**|  | |
| **after** | **Integer**| Replay events with seq greater than this; absent means from the start. | [optional] |

### Return type

ApiResponse<**String**>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;{ seq, type, at, payload }&#x60; frames; the first is &#x60;hello&#x60; with the run. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## teamsStopRun

> InlineObject teamsStopRun(runId)

Ask the running client to stop.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        try {
            InlineObject result = apiInstance.teamsStopRun(runId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsStopRun");
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
| **runId** | **String**|  | |

### Return type

[**InlineObject**](InlineObject.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## teamsStopRunWithHttpInfo

> ApiResponse<InlineObject> teamsStopRunWithHttpInfo(runId)

Ask the running client to stop.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.TeamsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        TeamsApi apiInstance = new TeamsApi(defaultClient);
        String runId = "runId_example"; // String | 
        try {
            ApiResponse<InlineObject> response = apiInstance.teamsStopRunWithHttpInfo(runId);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling TeamsApi#teamsStopRun");
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
| **runId** | **String**|  | |

### Return type

ApiResponse<[**InlineObject**](InlineObject.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

