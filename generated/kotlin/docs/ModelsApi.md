# ModelsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**modelsList**](ModelsApi.md#modelsList) | **GET** /v1/models | Every model the gateway can route to. |


<a id="modelsList"></a>
# **modelsList**
> ModelList modelsList()

Every model the gateway can route to.

Describes the routing table, not the disk: a bridge agent is listed whether or not the CLI is installed. From 0.6.64 each agent carries &#x60;available&#x60;; from 0.6.66 a cloud model carries &#x60;configured: false&#x60; when a turn is known to fail for something the user can fix. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ModelsApi()
try {
    val result : ModelList = apiInstance.modelsList()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ModelsApi#modelsList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ModelsApi#modelsList")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ModelList**](ModelList.md)

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

