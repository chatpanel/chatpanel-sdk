# EnginesApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**enginesAppendEntry**](EnginesApi.md#enginesAppendEntry) | **POST** /v1/engines/{engineKey}/entries | Append a ledger entry for an engine. |
| [**enginesCard**](EnginesApi.md#enginesCard) | **GET** /v1/engines/{engineKey}/card | One engine&#39;s card, optionally with entries. |
| [**enginesList**](EnginesApi.md#enginesList) | **GET** /v1/engines | Every engine&#39;s card. |


<a id="enginesAppendEntry"></a>
# **enginesAppendEntry**
> kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt; enginesAppendEntry(engineKey, requestBody)

Append a ledger entry for an engine.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = EnginesApi()
val engineKey : kotlin.String = engineKey_example // kotlin.String | 
val requestBody : kotlin.collections.Map<kotlin.String, kotlin.Any> = Object // kotlin.collections.Map<kotlin.String, kotlin.Any> | 
try {
    val result : kotlin.collections.Map<kotlin.String, kotlin.Any> = apiInstance.enginesAppendEntry(engineKey, requestBody)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EnginesApi#enginesAppendEntry")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EnginesApi#enginesAppendEntry")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **engineKey** | **kotlin.String**|  | |
| **requestBody** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md)|  | |

### Return type

[**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md)

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

<a id="enginesCard"></a>
# **enginesCard**
> kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt; enginesCard(engineKey, entries, minCalls)

One engine&#39;s card, optionally with entries.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = EnginesApi()
val engineKey : kotlin.String = engineKey_example // kotlin.String | 
val entries : kotlin.Boolean = true // kotlin.Boolean | 
val minCalls : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.collections.Map<kotlin.String, kotlin.Any> = apiInstance.enginesCard(engineKey, entries, minCalls)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EnginesApi#enginesCard")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EnginesApi#enginesCard")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **engineKey** | **kotlin.String**|  | |
| **entries** | **kotlin.Boolean**|  | [optional] |
| **minCalls** | **kotlin.Int**|  | [optional] |

### Return type

[**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md)

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

<a id="enginesList"></a>
# **enginesList**
> EnginesList200Response enginesList(minCalls)

Every engine&#39;s card.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = EnginesApi()
val minCalls : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : EnginesList200Response = apiInstance.enginesList(minCalls)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EnginesApi#enginesList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EnginesApi#enginesList")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **minCalls** | **kotlin.Int**|  | [optional] |

### Return type

[**EnginesList200Response**](EnginesList200Response.md)

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

