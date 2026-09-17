# MemoryApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**memoryForget**](MemoryApi.md#memoryForget) | **POST** /v1/memory/forget | Forget memories matching an id or words. |
| [**memoryList**](MemoryApi.md#memoryList) | **GET** /v1/memory/list | Every memory. |
| [**memoryRecall**](MemoryApi.md#memoryRecall) | **POST** /v1/memory/recall | The memories relevant to a text, and a prompt block that carries them. |
| [**memoryRemember**](MemoryApi.md#memoryRemember) | **POST** /v1/memory/remember | Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded. |
| [**memorySync**](MemoryApi.md#memorySync) | **POST** /v1/memory/sync | Two-way merge in one round trip — push what you have, receive the full set. |


<a id="memoryForget"></a>
# **memoryForget**
> MemoryForget200Response memoryForget(memoryForgetRequest)

Forget memories matching an id or words.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = MemoryApi()
val memoryForgetRequest : MemoryForgetRequest =  // MemoryForgetRequest | 
try {
    val result : MemoryForget200Response = apiInstance.memoryForget(memoryForgetRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MemoryApi#memoryForget")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MemoryApi#memoryForget")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **memoryForgetRequest** | [**MemoryForgetRequest**](MemoryForgetRequest.md)|  | |

### Return type

[**MemoryForget200Response**](MemoryForget200Response.md)

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

<a id="memoryList"></a>
# **memoryList**
> MemoryList memoryList()

Every memory.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = MemoryApi()
try {
    val result : MemoryList = apiInstance.memoryList()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MemoryApi#memoryList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MemoryApi#memoryList")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MemoryList**](MemoryList.md)

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

<a id="memoryRecall"></a>
# **memoryRecall**
> RecallResponse memoryRecall(recallRequest)

The memories relevant to a text, and a prompt block that carries them.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = MemoryApi()
val recallRequest : RecallRequest =  // RecallRequest | 
try {
    val result : RecallResponse = apiInstance.memoryRecall(recallRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MemoryApi#memoryRecall")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MemoryApi#memoryRecall")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **recallRequest** | [**RecallRequest**](RecallRequest.md)|  | |

### Return type

[**RecallResponse**](RecallResponse.md)

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

<a id="memoryRemember"></a>
# **memoryRemember**
> RememberResponse memoryRemember(rememberRequest)

Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = MemoryApi()
val rememberRequest : RememberRequest =  // RememberRequest | 
try {
    val result : RememberResponse = apiInstance.memoryRemember(rememberRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MemoryApi#memoryRemember")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MemoryApi#memoryRemember")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **rememberRequest** | [**RememberRequest**](RememberRequest.md)|  | |

### Return type

[**RememberResponse**](RememberResponse.md)

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

<a id="memorySync"></a>
# **memorySync**
> MemorySyncResponse memorySync(memorySyncRequest)

Two-way merge in one round trip — push what you have, receive the full set.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = MemoryApi()
val memorySyncRequest : MemorySyncRequest =  // MemorySyncRequest | 
try {
    val result : MemorySyncResponse = apiInstance.memorySync(memorySyncRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MemoryApi#memorySync")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MemoryApi#memorySync")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **memorySyncRequest** | [**MemorySyncRequest**](MemorySyncRequest.md)|  | |

### Return type

[**MemorySyncResponse**](MemorySyncResponse.md)

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

