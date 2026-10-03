# LinkApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**linkPair**](LinkApi.md#linkPair) | **POST** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first. |
| [**linkPairWithHttpInfo**](LinkApi.md#linkPairWithHttpInfo) | **POST** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first. |
| [**linkRemoveDevice**](LinkApi.md#linkRemoveDevice) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection. |
| [**linkRemoveDeviceWithHttpInfo**](LinkApi.md#linkRemoveDeviceWithHttpInfo) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection. |
| [**linkRoute**](LinkApi.md#linkRoute) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel. |
| [**linkRouteWithHttpInfo**](LinkApi.md#linkRouteWithHttpInfo) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel. |
| [**linkStatus**](LinkApi.md#linkStatus) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach. |
| [**linkStatusWithHttpInfo**](LinkApi.md#linkStatusWithHttpInfo) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach. |



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

