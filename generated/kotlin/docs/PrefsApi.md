# PrefsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**prefsDelete**](PrefsApi.md#prefsDelete) | **DELETE** /v1/prefs | Remove one section. |
| [**prefsEvents**](PrefsApi.md#prefsEvents) | **GET** /v1/prefs/events | Live — which sections another client wrote. |
| [**prefsGet**](PrefsApi.md#prefsGet) | **GET** /v1/prefs | The shared sections, or only their stamps. |
| [**prefsPut**](PrefsApi.md#prefsPut) | **POST** /v1/prefs | Write sections; per-section last-writer-wins by stamp. |


<a id="prefsDelete"></a>
# **prefsDelete**
> PrefsDelete200Response prefsDelete(section)

Remove one section.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = PrefsApi()
val section : kotlin.String = section_example // kotlin.String | 
try {
    val result : PrefsDelete200Response = apiInstance.prefsDelete(section)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PrefsApi#prefsDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PrefsApi#prefsDelete")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **section** | **kotlin.String**|  | |

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

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

<a id="prefsEvents"></a>
# **prefsEvents**
> kotlin.String prefsEvents()

Live — which sections another client wrote.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = PrefsApi()
try {
    val result : kotlin.String = apiInstance.prefsEvents()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PrefsApi#prefsEvents")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PrefsApi#prefsEvents")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**kotlin.String**

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
 - **Accept**: Not defined

<a id="prefsGet"></a>
# **prefsGet**
> Prefs prefsGet(section, stamps)

The shared sections, or only their stamps.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = PrefsApi()
val section : kotlin.String = section_example // kotlin.String | 
val stamps : kotlin.Boolean = true // kotlin.Boolean | Only `{ revision, stamps }`.
try {
    val result : Prefs = apiInstance.prefsGet(section, stamps)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PrefsApi#prefsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PrefsApi#prefsGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **section** | **kotlin.String**|  | [optional] |
| **stamps** | **kotlin.Boolean**| Only &#x60;{ revision, stamps }&#x60;. | [optional] |

### Return type

[**Prefs**](Prefs.md)

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

<a id="prefsPut"></a>
# **prefsPut**
> PrefsWriteResult prefsPut(prefsWrite)

Write sections; per-section last-writer-wins by stamp.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = PrefsApi()
val prefsWrite : PrefsWrite =  // PrefsWrite | 
try {
    val result : PrefsWriteResult = apiInstance.prefsPut(prefsWrite)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PrefsApi#prefsPut")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PrefsApi#prefsPut")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **prefsWrite** | [**PrefsWrite**](PrefsWrite.md)|  | |

### Return type

[**PrefsWriteResult**](PrefsWriteResult.md)

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

