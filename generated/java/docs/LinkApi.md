# LinkApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**linkAnswerApproval**](LinkApi.md#linkAnswerApproval) | **POST** /v1/link/approvals/{approvalId} | The owner&#39;s answer — once, this action for the rest of the conversation, everything in it, or no. |
| [**linkAnswerApprovalWithHttpInfo**](LinkApi.md#linkAnswerApprovalWithHttpInfo) | **POST** /v1/link/approvals/{approvalId} | The owner&#39;s answer — once, this action for the rest of the conversation, everything in it, or no. |
| [**linkApprovals**](LinkApi.md#linkApprovals) | **GET** /v1/link/approvals | What partners&#39; agents are waiting on the owner for — each request a partner&#39;s coding agent made that the owner&#39;s settings do not already allow. |
| [**linkApprovalsWithHttpInfo**](LinkApi.md#linkApprovalsWithHttpInfo) | **GET** /v1/link/approvals | What partners&#39; agents are waiting on the owner for — each request a partner&#39;s coding agent made that the owner&#39;s settings do not already allow. |
| [**linkApprovalsStream**](LinkApi.md#linkApprovalsStream) | **GET** /v1/link/approvals/stream | The waiting requests as they change — one &#x60;approvals&#x60; event with the whole list on each change, and at connect. |
| [**linkApprovalsStreamWithHttpInfo**](LinkApi.md#linkApprovalsStreamWithHttpInfo) | **GET** /v1/link/approvals/stream | The waiting requests as they change — one &#x60;approvals&#x60; event with the whole list on each change, and at connect. |
| [**linkDeleteFile**](LinkApi.md#linkDeleteFile) | **DELETE** /v1/link/files/{path} | Remove a file from the partner&#39;s folder (never a folder). |
| [**linkDeleteFileWithHttpInfo**](LinkApi.md#linkDeleteFileWithHttpInfo) | **DELETE** /v1/link/files/{path} | Remove a file from the partner&#39;s folder (never a folder). |
| [**linkListFiles**](LinkApi.md#linkListFiles) | **GET** /v1/link/files | A partner&#39;s own folder, from its side — every file it may hold there, with size and last change. |
| [**linkListFilesWithHttpInfo**](LinkApi.md#linkListFilesWithHttpInfo) | **GET** /v1/link/files | A partner&#39;s own folder, from its side — every file it may hold there, with size and last change. |
| [**linkPair**](LinkApi.md#linkPair) | **POST** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first. |
| [**linkPairWithHttpInfo**](LinkApi.md#linkPairWithHttpInfo) | **POST** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first. |
| [**linkReadFile**](LinkApi.md#linkReadFile) | **GET** /v1/link/files/{path} | Read back a file from the partner&#39;s folder — what its agents wrote there. |
| [**linkReadFileWithHttpInfo**](LinkApi.md#linkReadFileWithHttpInfo) | **GET** /v1/link/files/{path} | Read back a file from the partner&#39;s folder — what its agents wrote there. |
| [**linkRemoveDevice**](LinkApi.md#linkRemoveDevice) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection. |
| [**linkRemoveDeviceWithHttpInfo**](LinkApi.md#linkRemoveDeviceWithHttpInfo) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection. |
| [**linkRoute**](LinkApi.md#linkRoute) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel. |
| [**linkRouteWithHttpInfo**](LinkApi.md#linkRouteWithHttpInfo) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel. |
| [**linkStatus**](LinkApi.md#linkStatus) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach. |
| [**linkStatusWithHttpInfo**](LinkApi.md#linkStatusWithHttpInfo) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach. |
| [**linkWriteFile**](LinkApi.md#linkWriteFile) | **PUT** /v1/link/files/{path} | Put a file in the partner&#39;s folder — its data, a skill, a subagent or instructions. |
| [**linkWriteFileWithHttpInfo**](LinkApi.md#linkWriteFileWithHttpInfo) | **PUT** /v1/link/files/{path} | Put a file in the partner&#39;s folder — its data, a skill, a subagent or instructions. |



## linkAnswerApproval

> BrowserAnnounce200Response linkAnswerApproval(approvalId, linkAnswerApprovalRequest)

The owner&#39;s answer — once, this action for the rest of the conversation, everything in it, or no.

No answer within the agent&#39;s own wait (10 minutes) is a no; revoking the partner denies what it waits on.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        String approvalId = "approvalId_example"; // String | 
        LinkAnswerApprovalRequest linkAnswerApprovalRequest = new LinkAnswerApprovalRequest(); // LinkAnswerApprovalRequest | 
        try {
            BrowserAnnounce200Response result = apiInstance.linkAnswerApproval(approvalId, linkAnswerApprovalRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkAnswerApproval");
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
| **approvalId** | **String**|  | |
| **linkAnswerApprovalRequest** | [**LinkAnswerApprovalRequest**](LinkAnswerApprovalRequest.md)|  | |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Answered; the agent carries on. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## linkAnswerApprovalWithHttpInfo

> ApiResponse<BrowserAnnounce200Response> linkAnswerApprovalWithHttpInfo(approvalId, linkAnswerApprovalRequest)

The owner&#39;s answer — once, this action for the rest of the conversation, everything in it, or no.

No answer within the agent&#39;s own wait (10 minutes) is a no; revoking the partner denies what it waits on.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        String approvalId = "approvalId_example"; // String | 
        LinkAnswerApprovalRequest linkAnswerApprovalRequest = new LinkAnswerApprovalRequest(); // LinkAnswerApprovalRequest | 
        try {
            ApiResponse<BrowserAnnounce200Response> response = apiInstance.linkAnswerApprovalWithHttpInfo(approvalId, linkAnswerApprovalRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkAnswerApproval");
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
| **approvalId** | **String**|  | |
| **linkAnswerApprovalRequest** | [**LinkAnswerApprovalRequest**](LinkAnswerApprovalRequest.md)|  | |

### Return type

ApiResponse<[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Answered; the agent carries on. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## linkApprovals

> LinkApprovals200Response linkApprovals()

What partners&#39; agents are waiting on the owner for — each request a partner&#39;s coding agent made that the owner&#39;s settings do not already allow.

A partner granted &#x60;agents&#x60; (gateway 0.90.0+) runs them as the owner&#39;s own turn does, and never answers their permission prompts: the request waits here for the OWNER (0.91.0+). Nothing that arrives over Link may list or answer these — 403 for a partner and a phone alike. In memory only. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        try {
            LinkApprovals200Response result = apiInstance.linkApprovals();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkApprovals");
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

[**LinkApprovals200Response**](LinkApprovals200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The waiting requests, oldest first. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

## linkApprovalsWithHttpInfo

> ApiResponse<LinkApprovals200Response> linkApprovalsWithHttpInfo()

What partners&#39; agents are waiting on the owner for — each request a partner&#39;s coding agent made that the owner&#39;s settings do not already allow.

A partner granted &#x60;agents&#x60; (gateway 0.90.0+) runs them as the owner&#39;s own turn does, and never answers their permission prompts: the request waits here for the OWNER (0.91.0+). Nothing that arrives over Link may list or answer these — 403 for a partner and a phone alike. In memory only. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        try {
            ApiResponse<LinkApprovals200Response> response = apiInstance.linkApprovalsWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkApprovals");
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

ApiResponse<[**LinkApprovals200Response**](LinkApprovals200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The waiting requests, oldest first. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |


## linkApprovalsStream

> String linkApprovalsStream()

The waiting requests as they change — one &#x60;approvals&#x60; event with the whole list on each change, and at connect.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        try {
            String result = apiInstance.linkApprovalsStream();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkApprovalsStream");
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

**String**


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Server-sent events: &#x60;event: approvals&#x60;, &#x60;data: { pending: LinkApproval[] }&#x60;. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

## linkApprovalsStreamWithHttpInfo

> ApiResponse<String> linkApprovalsStreamWithHttpInfo()

The waiting requests as they change — one &#x60;approvals&#x60; event with the whole list on each change, and at connect.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        try {
            ApiResponse<String> response = apiInstance.linkApprovalsStreamWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkApprovalsStream");
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

ApiResponse<**String**>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Server-sent events: &#x60;event: approvals&#x60;, &#x60;data: { pending: LinkApproval[] }&#x60;. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |


## linkDeleteFile

> BrowserAnnounce200Response linkDeleteFile(path)

Remove a file from the partner&#39;s folder (never a folder).

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        String path = "path_example"; // String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
        try {
            BrowserAnnounce200Response result = apiInstance.linkDeleteFile(path);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkDeleteFile");
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
| **path** | **String**| Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Removed. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## linkDeleteFileWithHttpInfo

> ApiResponse<BrowserAnnounce200Response> linkDeleteFileWithHttpInfo(path)

Remove a file from the partner&#39;s folder (never a folder).

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        String path = "path_example"; // String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
        try {
            ApiResponse<BrowserAnnounce200Response> response = apiInstance.linkDeleteFileWithHttpInfo(path);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkDeleteFile");
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
| **path** | **String**| Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | |

### Return type

ApiResponse<[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Removed. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## linkListFiles

> LinkListFiles200Response linkListFiles()

A partner&#39;s own folder, from its side — every file it may hold there, with size and last change.

Called BY A PARTNER over Link (&#x60;createLinkFetch&#x60;), granted &#x60;files&#x60; (0.92.0+; needs &#x60;agents&#x60;). The folder is the one the owner chose at pairing, where its agents work; a partner may hold its data (&#x60;data/&#x60;), skills (&#x60;.claude/skills/&#x60;, &#x60;.agents/skills/&#x60;), subagents (&#x60;.claude/agents/_*.md&#x60;) and instructions (&#x60;CLAUDE.md&#x60;, &#x60;AGENTS.md&#x60;) — never what configures the agent. &#x60;GET /v1/link/files/data&#x60; lists one root. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        try {
            LinkListFiles200Response result = apiInstance.linkListFiles();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkListFiles");
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

[**LinkListFiles200Response**](LinkListFiles200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The files. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

## linkListFilesWithHttpInfo

> ApiResponse<LinkListFiles200Response> linkListFilesWithHttpInfo()

A partner&#39;s own folder, from its side — every file it may hold there, with size and last change.

Called BY A PARTNER over Link (&#x60;createLinkFetch&#x60;), granted &#x60;files&#x60; (0.92.0+; needs &#x60;agents&#x60;). The folder is the one the owner chose at pairing, where its agents work; a partner may hold its data (&#x60;data/&#x60;), skills (&#x60;.claude/skills/&#x60;, &#x60;.agents/skills/&#x60;), subagents (&#x60;.claude/agents/_*.md&#x60;) and instructions (&#x60;CLAUDE.md&#x60;, &#x60;AGENTS.md&#x60;) — never what configures the agent. &#x60;GET /v1/link/files/data&#x60; lists one root. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        try {
            ApiResponse<LinkListFiles200Response> response = apiInstance.linkListFilesWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkListFiles");
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

ApiResponse<[**LinkListFiles200Response**](LinkListFiles200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The files. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |


## linkPair

> LinkPairResult linkPair(linkPairRequest)

Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first.

**A phone** (no &#x60;kind&#x60;, or &#x60;kind: phone&#x60;): a room on the route&#39;s relay and the QR the phone scans; the answer carries &#x60;uri&#x60;, &#x60;svg&#x60;, &#x60;expiresAt&#x60;, &#x60;room&#x60;.  **A partner server** (&#x60;kind: partner&#x60;, gateway 0.89.0+): nothing is issued without the owner&#39;s yes. Without &#x60;confirm: true&#x60; the answer is &#x60;{ confirmed: false, preview }&#x60; — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With &#x60;confirm: true&#x60; the answer adds the &#x60;code&#x60; (&#x60;cplink1.…&#x60;, one use, 10 minutes), &#x60;room&#x60;, &#x60;route&#x60; and &#x60;host&#x60;. The route is the gateway&#39;s own unless &#x60;route&#x60; names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel&#39;s hosted relay is used only for &#x60;link&#x60;. Refused with 403 from a device on Link: a paired device never pairs another. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        LinkPairRequest linkPairRequest = new LinkPairRequest(); // LinkPairRequest | 
        try {
            LinkPairResult result = apiInstance.linkPair(linkPairRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkPair");
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
| **linkPairRequest** | [**LinkPairRequest**](LinkPairRequest.md)|  | [optional] |

### Return type

[**LinkPairResult**](LinkPairResult.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The phone&#39;s code, or the partner&#39;s preview (and, once confirmed, its code). |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

## linkPairWithHttpInfo

> ApiResponse<LinkPairResult> linkPairWithHttpInfo(linkPairRequest)

Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first.

**A phone** (no &#x60;kind&#x60;, or &#x60;kind: phone&#x60;): a room on the route&#39;s relay and the QR the phone scans; the answer carries &#x60;uri&#x60;, &#x60;svg&#x60;, &#x60;expiresAt&#x60;, &#x60;room&#x60;.  **A partner server** (&#x60;kind: partner&#x60;, gateway 0.89.0+): nothing is issued without the owner&#39;s yes. Without &#x60;confirm: true&#x60; the answer is &#x60;{ confirmed: false, preview }&#x60; — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With &#x60;confirm: true&#x60; the answer adds the &#x60;code&#x60; (&#x60;cplink1.…&#x60;, one use, 10 minutes), &#x60;room&#x60;, &#x60;route&#x60; and &#x60;host&#x60;. The route is the gateway&#39;s own unless &#x60;route&#x60; names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel&#39;s hosted relay is used only for &#x60;link&#x60;. Refused with 403 from a device on Link: a paired device never pairs another. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        LinkPairRequest linkPairRequest = new LinkPairRequest(); // LinkPairRequest | 
        try {
            ApiResponse<LinkPairResult> response = apiInstance.linkPairWithHttpInfo(linkPairRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkPair");
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
| **linkPairRequest** | [**LinkPairRequest**](LinkPairRequest.md)|  | [optional] |

### Return type

ApiResponse<[**LinkPairResult**](LinkPairResult.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The phone&#39;s code, or the partner&#39;s preview (and, once confirmed, its code). |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |


## linkReadFile

> File linkReadFile(path)

Read back a file from the partner&#39;s folder — what its agents wrote there.

The raw bytes (&#x60;application/octet-stream&#x60;). &#x60;path&#x60; is relative to the folder; slashes may be sent encoded.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        String path = "path_example"; // String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
        try {
            File result = apiInstance.linkReadFile(path);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkReadFile");
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
| **path** | **String**| Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | |

### Return type

[**File**](File.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The file. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## linkReadFileWithHttpInfo

> ApiResponse<File> linkReadFileWithHttpInfo(path)

Read back a file from the partner&#39;s folder — what its agents wrote there.

The raw bytes (&#x60;application/octet-stream&#x60;). &#x60;path&#x60; is relative to the folder; slashes may be sent encoded.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        String path = "path_example"; // String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
        try {
            ApiResponse<File> response = apiInstance.linkReadFileWithHttpInfo(path);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkReadFile");
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
| **path** | **String**| Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | |

### Return type

ApiResponse<[**File**](File.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The file. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## linkRemoveDevice

> BrowserAnnounce200Response linkRemoveDevice(deviceId)

Remove a paired device now — its relay room, its key and its open connection.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        String deviceId = "deviceId_example"; // String | The device's `id` from `link.status`.
        try {
            BrowserAnnounce200Response result = apiInstance.linkRemoveDevice(deviceId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkRemoveDevice");
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
| **deviceId** | **String**| The device&#39;s &#x60;id&#x60; from &#x60;link.status&#x60;. | |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Removed. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## linkRemoveDeviceWithHttpInfo

> ApiResponse<BrowserAnnounce200Response> linkRemoveDeviceWithHttpInfo(deviceId)

Remove a paired device now — its relay room, its key and its open connection.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        String deviceId = "deviceId_example"; // String | The device's `id` from `link.status`.
        try {
            ApiResponse<BrowserAnnounce200Response> response = apiInstance.linkRemoveDeviceWithHttpInfo(deviceId);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkRemoveDevice");
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
| **deviceId** | **String**| The device&#39;s &#x60;id&#x60; from &#x60;link.status&#x60;. | |

### Return type

ApiResponse<[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Removed. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## linkRoute

> LinkStatus linkRoute(linkRouteRequest)

How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel.

Checked, saved in the gateway&#39;s config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        LinkRouteRequest linkRouteRequest = new LinkRouteRequest(); // LinkRouteRequest | 
        try {
            LinkStatus result = apiInstance.linkRoute(linkRouteRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkRoute");
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
| **linkRouteRequest** | [**LinkRouteRequest**](LinkRouteRequest.md)|  | |

### Return type

[**LinkStatus**](LinkStatus.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The route now in effect, and the devices. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |

## linkRouteWithHttpInfo

> ApiResponse<LinkStatus> linkRouteWithHttpInfo(linkRouteRequest)

How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel.

Checked, saved in the gateway&#39;s config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        LinkRouteRequest linkRouteRequest = new LinkRouteRequest(); // LinkRouteRequest | 
        try {
            ApiResponse<LinkStatus> response = apiInstance.linkRouteWithHttpInfo(linkRouteRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkRoute");
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
| **linkRouteRequest** | [**LinkRouteRequest**](LinkRouteRequest.md)|  | |

### Return type

ApiResponse<[**LinkStatus**](LinkStatus.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The route now in effect, and the devices. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |


## linkStatus

> LinkStatus linkStatus()

The Link route and every paired device — phones and partner servers — with what each may reach.

No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries &#x60;kind: partner&#x60;, its &#x60;partner.name&#x60;, &#x60;scopes&#x60;, the &#x60;route&#x60; it was paired on and the &#x60;host&#x60; it connects to; a phone carries &#x60;kind: phone&#x60; and follows the gateway&#39;s route. Changing the route never moves a partner: one whose tunnel door shut with the route says &#x60;routeClosed&#x60;. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        try {
            LinkStatus result = apiInstance.linkStatus();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkStatus");
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

[**LinkStatus**](LinkStatus.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The route and the devices. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

## linkStatusWithHttpInfo

> ApiResponse<LinkStatus> linkStatusWithHttpInfo()

The Link route and every paired device — phones and partner servers — with what each may reach.

No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries &#x60;kind: partner&#x60;, its &#x60;partner.name&#x60;, &#x60;scopes&#x60;, the &#x60;route&#x60; it was paired on and the &#x60;host&#x60; it connects to; a phone carries &#x60;kind: phone&#x60; and follows the gateway&#39;s route. Changing the route never moves a partner: one whose tunnel door shut with the route says &#x60;routeClosed&#x60;. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        try {
            ApiResponse<LinkStatus> response = apiInstance.linkStatusWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkStatus");
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

ApiResponse<[**LinkStatus**](LinkStatus.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The route and the devices. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |


## linkWriteFile

> LinkPartnerFile linkWriteFile(path, body)

Put a file in the partner&#39;s folder — its data, a skill, a subagent or instructions.

The body is the file&#39;s bytes. Refused (400): a path outside what a partner may hold (&#x60;.claude/settings*.json&#x60;, hooks, &#x60;.mcp.json&#x60;, &#x60;.codex/&#x60; among them), and a skill or subagent whose front matter would widen what the agent may do (&#x60;allowed-tools&#x60;, &#x60;hooks&#x60;, &#x60;permissionMode&#x60;, &#x60;mcpServers&#x60;). Refused (403): a path through a link in the folder. Written atomically, readable by the owner alone. Up to the gateway&#39;s body limit (413 past it). 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        String path = "path_example"; // String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
        File body = new File("/path/to/file"); // File | 
        try {
            LinkPartnerFile result = apiInstance.linkWriteFile(path, body);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkWriteFile");
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
| **path** | **String**| Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | |
| **body** | **File**|  | |

### Return type

[**LinkPartnerFile**](LinkPartnerFile.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/octet-stream
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Written. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **413** | An error, in the gateway&#39;s words. |  -  |

## linkWriteFileWithHttpInfo

> ApiResponse<LinkPartnerFile> linkWriteFileWithHttpInfo(path, body)

Put a file in the partner&#39;s folder — its data, a skill, a subagent or instructions.

The body is the file&#39;s bytes. Refused (400): a path outside what a partner may hold (&#x60;.claude/settings*.json&#x60;, hooks, &#x60;.mcp.json&#x60;, &#x60;.codex/&#x60; among them), and a skill or subagent whose front matter would widen what the agent may do (&#x60;allowed-tools&#x60;, &#x60;hooks&#x60;, &#x60;permissionMode&#x60;, &#x60;mcpServers&#x60;). Refused (403): a path through a link in the folder. Written atomically, readable by the owner alone. Up to the gateway&#39;s body limit (413 past it). 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.LinkApi;

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

        LinkApi apiInstance = new LinkApi(defaultClient);
        String path = "path_example"; // String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
        File body = new File("/path/to/file"); // File | 
        try {
            ApiResponse<LinkPartnerFile> response = apiInstance.linkWriteFileWithHttpInfo(path, body);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling LinkApi#linkWriteFile");
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
| **path** | **String**| Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | |
| **body** | **File**|  | |

### Return type

ApiResponse<[**LinkPartnerFile**](LinkPartnerFile.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/octet-stream
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Written. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **413** | An error, in the gateway&#39;s words. |  -  |

