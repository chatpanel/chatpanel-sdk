# GatewayApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**gatewayAudit**](GatewayApi.md#gatewayAudit) | **GET** /audit | The egress audit — which hosts this gateway has contacted and which its config allows. |
| [**gatewayHealth**](GatewayApi.md#gatewayHealth) | **GET** /health | Liveness, version and capabilities. |
| [**gatewayPair**](GatewayApi.md#gatewayPair) | **POST** /pair | Exchange a pairing code for the gateway token. |
| [**gatewayPairCode**](GatewayApi.md#gatewayPairCode) | **POST** /pair/code | Mint a one-time pairing code (5 minutes, one use, 5 attempts). |
| [**gatewayWhoami**](GatewayApi.md#gatewayWhoami) | **POST** /whoami | What the gateway makes of this caller. |


<a id="gatewayAudit"></a>
# **gatewayAudit**
> Audit gatewayAudit()

The egress audit — which hosts this gateway has contacted and which its config allows.

The checkable claim behind \&quot;nothing leaves the machine\&quot;. Admin-gated because it names the user&#39;s model endpoints.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = GatewayApi()
try {
    val result : Audit = apiInstance.gatewayAudit()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GatewayApi#gatewayAudit")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GatewayApi#gatewayAudit")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Audit**](Audit.md)

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

<a id="gatewayHealth"></a>
# **gatewayHealth**
> Health gatewayHealth()

Liveness, version and capabilities.

Additive fields only. &#x60;version&#x60; is what every version gate reads.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = GatewayApi()
try {
    val result : Health = apiInstance.gatewayHealth()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GatewayApi#gatewayHealth")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GatewayApi#gatewayHealth")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Health**](Health.md)

### Authorization


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

<a id="gatewayPair"></a>
# **gatewayPair**
> Paired gatewayPair(gatewayPairRequest)

Exchange a pairing code for the gateway token.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = GatewayApi()
val gatewayPairRequest : GatewayPairRequest =  // GatewayPairRequest | 
try {
    val result : Paired = apiInstance.gatewayPair(gatewayPairRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GatewayApi#gatewayPair")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GatewayApi#gatewayPair")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **gatewayPairRequest** | [**GatewayPairRequest**](GatewayPairRequest.md)|  | |

### Return type

[**Paired**](Paired.md)

### Authorization


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

<a id="gatewayPairCode"></a>
# **gatewayPairCode**
> PairingCode gatewayPairCode()

Mint a one-time pairing code (5 minutes, one use, 5 attempts).

Only a caller that already holds the token may mint one — pairing widens nothing.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = GatewayApi()
try {
    val result : PairingCode = apiInstance.gatewayPairCode()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GatewayApi#gatewayPairCode")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GatewayApi#gatewayPairCode")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PairingCode**](PairingCode.md)

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

<a id="gatewayWhoami"></a>
# **gatewayWhoami**
> WhoAmI gatewayWhoami()

What the gateway makes of this caller.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = GatewayApi()
try {
    val result : WhoAmI = apiInstance.gatewayWhoami()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GatewayApi#gatewayWhoami")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GatewayApi#gatewayWhoami")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WhoAmI**](WhoAmI.md)

### Authorization


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

