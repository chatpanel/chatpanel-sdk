# LinkApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**linkPair**](LinkApi.md#linkPair) | **POST** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first. |
| [**linkRemoveDevice**](LinkApi.md#linkRemoveDevice) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection. |
| [**linkRoute**](LinkApi.md#linkRoute) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel. |
| [**linkStatus**](LinkApi.md#linkStatus) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach. |


<a id="linkPair"></a>
# **linkPair**
> LinkPairResult linkPair(linkPairRequest)

Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first.

**A phone** (no &#x60;kind&#x60;, or &#x60;kind: phone&#x60;): a room on the route&#39;s relay and the QR the phone scans; the answer carries &#x60;uri&#x60;, &#x60;svg&#x60;, &#x60;expiresAt&#x60;, &#x60;room&#x60;.  **A partner server** (&#x60;kind: partner&#x60;, gateway 0.89.0+): nothing is issued without the owner&#39;s yes. Without &#x60;confirm: true&#x60; the answer is &#x60;{ confirmed: false, preview }&#x60; — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With &#x60;confirm: true&#x60; the answer adds the &#x60;code&#x60; (&#x60;cplink1.…&#x60;, one use, 10 minutes), &#x60;room&#x60;, &#x60;route&#x60; and &#x60;host&#x60;. The route is the gateway&#39;s own unless &#x60;route&#x60; names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel&#39;s hosted relay is used only for &#x60;link&#x60;. Refused with 403 from a device on Link: a paired device never pairs another. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
val linkPairRequest : LinkPairRequest =  // LinkPairRequest | 
try {
    val result : LinkPairResult = apiInstance.linkPair(linkPairRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkPair")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkPair")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **linkPairRequest** | [**LinkPairRequest**](LinkPairRequest.md)|  | [optional] |

### Return type

[**LinkPairResult**](LinkPairResult.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="linkRemoveDevice"></a>
# **linkRemoveDevice**
> BrowserAnnounce200Response linkRemoveDevice(deviceId)

Remove a paired device now — its relay room, its key and its open connection.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
val deviceId : kotlin.String = deviceId_example // kotlin.String | The device's `id` from `link.status`.
try {
    val result : BrowserAnnounce200Response = apiInstance.linkRemoveDevice(deviceId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkRemoveDevice")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkRemoveDevice")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **deviceId** | **kotlin.String**| The device&#39;s &#x60;id&#x60; from &#x60;link.status&#x60;. | |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="linkRoute"></a>
# **linkRoute**
> LinkStatus linkRoute(linkRouteRequest)

How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel.

Checked, saved in the gateway&#39;s config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
val linkRouteRequest : LinkRouteRequest =  // LinkRouteRequest | 
try {
    val result : LinkStatus = apiInstance.linkRoute(linkRouteRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkRoute")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkRoute")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **linkRouteRequest** | [**LinkRouteRequest**](LinkRouteRequest.md)|  | |

### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="linkStatus"></a>
# **linkStatus**
> LinkStatus linkStatus()

The Link route and every paired device — phones and partner servers — with what each may reach.

No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries &#x60;kind: partner&#x60;, its &#x60;partner.name&#x60;, &#x60;scopes&#x60;, the &#x60;route&#x60; it was paired on and the &#x60;host&#x60; it connects to; a phone carries &#x60;kind: phone&#x60; and follows the gateway&#39;s route. Changing the route never moves a partner: one whose tunnel door shut with the route says &#x60;routeClosed&#x60;. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
try {
    val result : LinkStatus = apiInstance.linkStatus()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkStatus")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkStatus")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

