# \MemoryAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MemoryForget**](MemoryAPI.md#MemoryForget) | **Post** /v1/memory/forget | Forget memories matching an id or words.
[**MemoryList**](MemoryAPI.md#MemoryList) | **Get** /v1/memory/list | Every memory.
[**MemoryRecall**](MemoryAPI.md#MemoryRecall) | **Post** /v1/memory/recall | The memories relevant to a text, and a prompt block that carries them.
[**MemoryRemember**](MemoryAPI.md#MemoryRemember) | **Post** /v1/memory/remember | Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded.
[**MemorySync**](MemoryAPI.md#MemorySync) | **Post** /v1/memory/sync | Two-way merge in one round trip — push what you have, receive the full set.



## MemoryForget

> MemoryForget200Response MemoryForget(ctx).MemoryForgetRequest(memoryForgetRequest).Execute()

Forget memories matching an id or words.

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {
	memoryForgetRequest := *openapiclient.NewMemoryForgetRequest("Query_example") // MemoryForgetRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MemoryAPI.MemoryForget(context.Background()).MemoryForgetRequest(memoryForgetRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MemoryAPI.MemoryForget``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MemoryForget`: MemoryForget200Response
	fmt.Fprintf(os.Stdout, "Response from `MemoryAPI.MemoryForget`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiMemoryForgetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **memoryForgetRequest** | [**MemoryForgetRequest**](MemoryForgetRequest.md) |  | 

### Return type

[**MemoryForget200Response**](MemoryForget200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MemoryList

> MemoryList MemoryList(ctx).Execute()

Every memory.

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MemoryAPI.MemoryList(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MemoryAPI.MemoryList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MemoryList`: MemoryList
	fmt.Fprintf(os.Stdout, "Response from `MemoryAPI.MemoryList`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiMemoryListRequest struct via the builder pattern


### Return type

[**MemoryList**](MemoryList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MemoryRecall

> RecallResponse MemoryRecall(ctx).RecallRequest(recallRequest).Execute()

The memories relevant to a text, and a prompt block that carries them.

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {
	recallRequest := *openapiclient.NewRecallRequest("Text_example") // RecallRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MemoryAPI.MemoryRecall(context.Background()).RecallRequest(recallRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MemoryAPI.MemoryRecall``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MemoryRecall`: RecallResponse
	fmt.Fprintf(os.Stdout, "Response from `MemoryAPI.MemoryRecall`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiMemoryRecallRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recallRequest** | [**RecallRequest**](RecallRequest.md) |  | 

### Return type

[**RecallResponse**](RecallResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MemoryRemember

> RememberResponse MemoryRemember(ctx).RememberRequest(rememberRequest).Execute()

Save a durable fact. Never anonymous — `source` is recorded.

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {
	rememberRequest := *openapiclient.NewRememberRequest("Text_example") // RememberRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MemoryAPI.MemoryRemember(context.Background()).RememberRequest(rememberRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MemoryAPI.MemoryRemember``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MemoryRemember`: RememberResponse
	fmt.Fprintf(os.Stdout, "Response from `MemoryAPI.MemoryRemember`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiMemoryRememberRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rememberRequest** | [**RememberRequest**](RememberRequest.md) |  | 

### Return type

[**RememberResponse**](RememberResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MemorySync

> MemorySyncResponse MemorySync(ctx).MemorySyncRequest(memorySyncRequest).Execute()

Two-way merge in one round trip — push what you have, receive the full set.

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {
	memorySyncRequest := *openapiclient.NewMemorySyncRequest() // MemorySyncRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MemoryAPI.MemorySync(context.Background()).MemorySyncRequest(memorySyncRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MemoryAPI.MemorySync``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MemorySync`: MemorySyncResponse
	fmt.Fprintf(os.Stdout, "Response from `MemoryAPI.MemorySync`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiMemorySyncRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **memorySyncRequest** | [**MemorySyncRequest**](MemorySyncRequest.md) |  | 

### Return type

[**MemorySyncResponse**](MemorySyncResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

