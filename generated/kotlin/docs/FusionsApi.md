# FusionsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**fusionsList**](FusionsApi.md#fusionsList) | **GET** /v1/fusions | Several models as one — the fusions this gateway has. |


<a id="fusionsList"></a>
# **fusionsList**
> FusionList fusionsList()

Several models as one — the fusions this gateway has.

Derived from state (the entity detector&#39;s union once a companion is ready, an engine drafting with a second model) and composed by the user (&#x60;POST /config { fusions }&#x60;, a chat fallback in order). A chat turn names a fallback as &#x60;model: \&quot;fusion:&lt;id&gt;\&quot;&#x60; and is routed to the first member that is up; &#x60;x-chatpanel-fusion&#x60; on the response says which. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = FusionsApi()
try {
    val result : FusionList = apiInstance.fusionsList()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FusionsApi#fusionsList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FusionsApi#fusionsList")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FusionList**](FusionList.md)

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

