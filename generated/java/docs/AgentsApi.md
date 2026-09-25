# AgentsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**agentsExportDef**](AgentsApi.md#agentsExportDef) | **POST** /agent-defs/export | Write an agent definition into another tool&#39;s folder. |
| [**agentsExportDefWithHttpInfo**](AgentsApi.md#agentsExportDefWithHttpInfo) | **POST** /agent-defs/export | Write an agent definition into another tool&#39;s folder. |
| [**agentsExportPlan**](AgentsApi.md#agentsExportPlan) | **POST** /agent-defs/export-plan | What an export would write, and what the target cannot carry — without writing it. |
| [**agentsExportPlanWithHttpInfo**](AgentsApi.md#agentsExportPlanWithHttpInfo) | **POST** /agent-defs/export-plan | What an export would write, and what the target cannot carry — without writing it. |
| [**agentsGetDef**](AgentsApi.md#agentsGetDef) | **GET** /agent-defs/{agentId} | One agent definition, prompt included. |
| [**agentsGetDefWithHttpInfo**](AgentsApi.md#agentsGetDefWithHttpInfo) | **GET** /agent-defs/{agentId} | One agent definition, prompt included. |
| [**agentsListDefs**](AgentsApi.md#agentsListDefs) | **GET** /agent-defs | The agent definitions on this machine, from every tool that writes one. |
| [**agentsListDefsWithHttpInfo**](AgentsApi.md#agentsListDefsWithHttpInfo) | **GET** /agent-defs | The agent definitions on this machine, from every tool that writes one. |
| [**agentsRate**](AgentsApi.md#agentsRate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job. |
| [**agentsRateWithHttpInfo**](AgentsApi.md#agentsRateWithHttpInfo) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job. |
| [**agentsScorecard**](AgentsApi.md#agentsScorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard. |
| [**agentsScorecardWithHttpInfo**](AgentsApi.md#agentsScorecardWithHttpInfo) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard. |
| [**agentsScorecards**](AgentsApi.md#agentsScorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard. |
| [**agentsScorecardsWithHttpInfo**](AgentsApi.md#agentsScorecardsWithHttpInfo) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard. |



## agentsExportDef

> AgentsExportDef200Response agentsExportDef(agentExportRequest)

Write an agent definition into another tool&#39;s folder.

Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with &#x60;NOT_OURS&#x60; unless &#x60;overwrite&#x60; is set. Which of those applies is what &#x60;export-plan&#x60; reports as &#x60;status&#x60;.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

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

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        AgentExportRequest agentExportRequest = new AgentExportRequest(); // AgentExportRequest | 
        try {
            AgentsExportDef200Response result = apiInstance.agentsExportDef(agentExportRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsExportDef");
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
| **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md)|  | |

### Return type

[**AgentsExportDef200Response**](AgentsExportDef200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Written. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

## agentsExportDefWithHttpInfo

> ApiResponse<AgentsExportDef200Response> agentsExportDefWithHttpInfo(agentExportRequest)

Write an agent definition into another tool&#39;s folder.

Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with &#x60;NOT_OURS&#x60; unless &#x60;overwrite&#x60; is set. Which of those applies is what &#x60;export-plan&#x60; reports as &#x60;status&#x60;.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

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

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        AgentExportRequest agentExportRequest = new AgentExportRequest(); // AgentExportRequest | 
        try {
            ApiResponse<AgentsExportDef200Response> response = apiInstance.agentsExportDefWithHttpInfo(agentExportRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsExportDef");
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
| **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md)|  | |

### Return type

ApiResponse<[**AgentsExportDef200Response**](AgentsExportDef200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Written. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |


## agentsExportPlan

> AgentExportPlan agentsExportPlan(agentExportRequest)

What an export would write, and what the target cannot carry — without writing it.

A separate call from the export itself, deliberately: \&quot;show me what you are about to do to my Claude Code directory\&quot; is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

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

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        AgentExportRequest agentExportRequest = new AgentExportRequest(); // AgentExportRequest | 
        try {
            AgentExportPlan result = apiInstance.agentsExportPlan(agentExportRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsExportPlan");
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
| **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md)|  | |

### Return type

[**AgentExportPlan**](AgentExportPlan.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The plan. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

## agentsExportPlanWithHttpInfo

> ApiResponse<AgentExportPlan> agentsExportPlanWithHttpInfo(agentExportRequest)

What an export would write, and what the target cannot carry — without writing it.

A separate call from the export itself, deliberately: \&quot;show me what you are about to do to my Claude Code directory\&quot; is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

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

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        AgentExportRequest agentExportRequest = new AgentExportRequest(); // AgentExportRequest | 
        try {
            ApiResponse<AgentExportPlan> response = apiInstance.agentsExportPlanWithHttpInfo(agentExportRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsExportPlan");
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
| **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md)|  | |

### Return type

ApiResponse<[**AgentExportPlan**](AgentExportPlan.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The plan. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |


## agentsGetDef

> AgentsGetDef200Response agentsGetDef(agentId, workdir)

One agent definition, prompt included.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        String agentId = "agentId_example"; // String | One path segment; slashes and `..` are refused.
        String workdir = "workdir_example"; // String | 
        try {
            AgentsGetDef200Response result = apiInstance.agentsGetDef(agentId, workdir);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsGetDef");
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
| **agentId** | **String**| One path segment; slashes and &#x60;..&#x60; are refused. | |
| **workdir** | **String**|  | [optional] |

### Return type

[**AgentsGetDef200Response**](AgentsGetDef200Response.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The definition. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

## agentsGetDefWithHttpInfo

> ApiResponse<AgentsGetDef200Response> agentsGetDefWithHttpInfo(agentId, workdir)

One agent definition, prompt included.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        String agentId = "agentId_example"; // String | One path segment; slashes and `..` are refused.
        String workdir = "workdir_example"; // String | 
        try {
            ApiResponse<AgentsGetDef200Response> response = apiInstance.agentsGetDefWithHttpInfo(agentId, workdir);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsGetDef");
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
| **agentId** | **String**| One path segment; slashes and &#x60;..&#x60; are refused. | |
| **workdir** | **String**|  | [optional] |

### Return type

ApiResponse<[**AgentsGetDef200Response**](AgentsGetDef200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The definition. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |


## agentsListDefs

> AgentsListDefs200Response agentsListDefs(workdir, dir)

The agent definitions on this machine, from every tool that writes one.

&#x60;.claude/agents/_*.md&#x60;, &#x60;.codex/agents/_*.toml&#x60;, &#x60;~/.chatpanel/agents/_*.json&#x60; and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — &#x60;promptChars&#x60; only, for the same reason &#x60;GET /skills&#x60; omits them.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        String workdir = "workdir_example"; // String | Also read this project's own agent folders, ahead of the home ones.
        String dir = "dir_example"; // String | An extra absolute folder to scan. Repeatable.
        try {
            AgentsListDefs200Response result = apiInstance.agentsListDefs(workdir, dir);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsListDefs");
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
| **workdir** | **String**| Also read this project&#39;s own agent folders, ahead of the home ones. | [optional] |
| **dir** | **String**| An extra absolute folder to scan. Repeatable. | [optional] |

### Return type

[**AgentsListDefs200Response**](AgentsListDefs200Response.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The definitions. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |

## agentsListDefsWithHttpInfo

> ApiResponse<AgentsListDefs200Response> agentsListDefsWithHttpInfo(workdir, dir)

The agent definitions on this machine, from every tool that writes one.

&#x60;.claude/agents/_*.md&#x60;, &#x60;.codex/agents/_*.toml&#x60;, &#x60;~/.chatpanel/agents/_*.json&#x60; and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — &#x60;promptChars&#x60; only, for the same reason &#x60;GET /skills&#x60; omits them.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        String workdir = "workdir_example"; // String | Also read this project's own agent folders, ahead of the home ones.
        String dir = "dir_example"; // String | An extra absolute folder to scan. Repeatable.
        try {
            ApiResponse<AgentsListDefs200Response> response = apiInstance.agentsListDefsWithHttpInfo(workdir, dir);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsListDefs");
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
| **workdir** | **String**| Also read this project&#39;s own agent folders, ahead of the home ones. | [optional] |
| **dir** | **String**| An extra absolute folder to scan. Repeatable. | [optional] |

### Return type

ApiResponse<[**AgentsListDefs200Response**](AgentsListDefs200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The definitions. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |


## agentsRate

> Map<String, Object> agentsRate(agentId, agentsRateRequest)

A person rates the agent&#39;s work on a run, task or job.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        String agentId = "agentId_example"; // String | 
        AgentsRateRequest agentsRateRequest = new AgentsRateRequest(); // AgentsRateRequest | 
        try {
            Map<String, Object> result = apiInstance.agentsRate(agentId, agentsRateRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsRate");
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
| **agentId** | **String**|  | |
| **agentsRateRequest** | [**AgentsRateRequest**](AgentsRateRequest.md)|  | |

### Return type

**Map&lt;String, Object&gt;**


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The entry. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

## agentsRateWithHttpInfo

> ApiResponse<Map<String, Object>> agentsRateWithHttpInfo(agentId, agentsRateRequest)

A person rates the agent&#39;s work on a run, task or job.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        String agentId = "agentId_example"; // String | 
        AgentsRateRequest agentsRateRequest = new AgentsRateRequest(); // AgentsRateRequest | 
        try {
            ApiResponse<Map<String, Object>> response = apiInstance.agentsRateWithHttpInfo(agentId, agentsRateRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsRate");
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
| **agentId** | **String**|  | |
| **agentsRateRequest** | [**AgentsRateRequest**](AgentsRateRequest.md)|  | |

### Return type

ApiResponse<**Map&lt;String, Object&gt;**>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The entry. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |


## agentsScorecard

> Map<String, Object> agentsScorecard(agentId)

One agent&#39;s attested scorecard.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        String agentId = "agentId_example"; // String | 
        try {
            Map<String, Object> result = apiInstance.agentsScorecard(agentId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsScorecard");
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
| **agentId** | **String**|  | |

### Return type

**Map&lt;String, Object&gt;**


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The card. |  -  |

## agentsScorecardWithHttpInfo

> ApiResponse<Map<String, Object>> agentsScorecardWithHttpInfo(agentId)

One agent&#39;s attested scorecard.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        String agentId = "agentId_example"; // String | 
        try {
            ApiResponse<Map<String, Object>> response = apiInstance.agentsScorecardWithHttpInfo(agentId);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsScorecard");
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
| **agentId** | **String**|  | |

### Return type

ApiResponse<**Map&lt;String, Object&gt;**>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The card. |  -  |


## agentsScorecards

> AgentsScorecards200Response agentsScorecards()

Every agent&#39;s scorecard.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        try {
            AgentsScorecards200Response result = apiInstance.agentsScorecards();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsScorecards");
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

[**AgentsScorecards200Response**](AgentsScorecards200Response.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Scorecards. |  -  |

## agentsScorecardsWithHttpInfo

> ApiResponse<AgentsScorecards200Response> agentsScorecardsWithHttpInfo()

Every agent&#39;s scorecard.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AgentsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AgentsApi apiInstance = new AgentsApi(defaultClient);
        try {
            ApiResponse<AgentsScorecards200Response> response = apiInstance.agentsScorecardsWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling AgentsApi#agentsScorecards");
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

ApiResponse<[**AgentsScorecards200Response**](AgentsScorecards200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Scorecards. |  -  |

