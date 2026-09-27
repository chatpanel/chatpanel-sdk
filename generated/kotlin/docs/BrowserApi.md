# BrowserApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**browserAnnounce**](BrowserApi.md#browserAnnounce) | **POST** /v1/browser/announce | The browser says what it offers — its page tool spec and guidance. |
| [**browserCall**](BrowserApi.md#browserCall) | **POST** /v1/browser/call | Run one page action in the person&#39;s browser and wait for its result. |
| [**browserResult**](BrowserApi.md#browserResult) | **POST** /v1/browser/result | The browser answers a call it ran. Only the session the call went to may answer it. |
| [**browserStatus**](BrowserApi.md#browserStatus) | **GET** /v1/browser | Is a browser connected, which one, and the page tool it offers. |
| [**browserStream**](BrowserApi.md#browserStream) | **GET** /v1/browser/stream | The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run. |


<a id="browserAnnounce"></a>
# **browserAnnounce**
> BrowserAnnounce200Response browserAnnounce(browserAnnounce)

The browser says what it offers — its page tool spec and guidance.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = BrowserApi()
val browserAnnounce : BrowserAnnounce =  // BrowserAnnounce | 
try {
    val result : BrowserAnnounce200Response = apiInstance.browserAnnounce(browserAnnounce)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BrowserApi#browserAnnounce")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BrowserApi#browserAnnounce")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **browserAnnounce** | [**BrowserAnnounce**](BrowserAnnounce.md)|  | |

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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="browserCall"></a>
# **browserCall**
> BrowserCallResult browserCall(browserCall)

Run one page action in the person&#39;s browser and wait for its result.

Carried to the connected browser, which runs it on the task&#39;s own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to &#x60;timeoutMs&#x60; (default 120 s) because a confirmation is a person deciding. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = BrowserApi()
val browserCall : BrowserCall =  // BrowserCall | 
try {
    val result : BrowserCallResult = apiInstance.browserCall(browserCall)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BrowserApi#browserCall")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BrowserApi#browserCall")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **browserCall** | [**BrowserCall**](BrowserCall.md)|  | |

### Return type

[**BrowserCallResult**](BrowserCallResult.md)

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

<a id="browserResult"></a>
# **browserResult**
> BrowserAnnounce200Response browserResult(browserResult)

The browser answers a call it ran. Only the session the call went to may answer it.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = BrowserApi()
val browserResult : BrowserResult =  // BrowserResult | 
try {
    val result : BrowserAnnounce200Response = apiInstance.browserResult(browserResult)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BrowserApi#browserResult")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BrowserApi#browserResult")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **browserResult** | [**BrowserResult**](BrowserResult.md)|  | |

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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="browserStatus"></a>
# **browserStatus**
> BrowserStatus browserStatus()

Is a browser connected, which one, and the page tool it offers.

The spec and guidance are the extension&#39;s own — a client hands them to its model as they are.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = BrowserApi()
try {
    val result : BrowserStatus = apiInstance.browserStatus()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BrowserApi#browserStatus")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BrowserApi#browserStatus")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BrowserStatus**](BrowserStatus.md)

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

<a id="browserStream"></a>
# **browserStream**
> kotlin.String browserStream()

The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = BrowserApi()
try {
    val result : kotlin.String = apiInstance.browserStream()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BrowserApi#browserStream")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BrowserApi#browserStream")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**kotlin.String**

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

