# \EnginesAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EnginesAppendEntry**](EnginesAPI.md#EnginesAppendEntry) | **Post** /v1/engines/{engineKey}/entries | Append a ledger entry for an engine.
[**EnginesCard**](EnginesAPI.md#EnginesCard) | **Get** /v1/engines/{engineKey}/card | One engine&#39;s card, optionally with entries.
[**EnginesList**](EnginesAPI.md#EnginesList) | **Get** /v1/engines | Every engine&#39;s card.



## EnginesAppendEntry

> map[string]interface{} EnginesAppendEntry(ctx, engineKey).RequestBody(requestBody).Execute()

Append a ledger entry for an engine.

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
	engineKey := "engineKey_example" // string | 
	requestBody := map[string]interface{}{"key": interface{}(123)} // map[string]interface{} | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.EnginesAPI.EnginesAppendEntry(context.Background(), engineKey).RequestBody(requestBody).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `EnginesAPI.EnginesAppendEntry``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EnginesAppendEntry`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `EnginesAPI.EnginesAppendEntry`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**engineKey** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiEnginesAppendEntryRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **requestBody** | **map[string]interface{}** |  | 

### Return type

**map[string]interface{}**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EnginesCard

> map[string]interface{} EnginesCard(ctx, engineKey).Entries(entries).MinCalls(minCalls).Execute()

One engine's card, optionally with entries.

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
	engineKey := "engineKey_example" // string | 
	entries := true // bool |  (optional)
	minCalls := int32(56) // int32 |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.EnginesAPI.EnginesCard(context.Background(), engineKey).Entries(entries).MinCalls(minCalls).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `EnginesAPI.EnginesCard``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EnginesCard`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `EnginesAPI.EnginesCard`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**engineKey** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiEnginesCardRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **entries** | **bool** |  | 
 **minCalls** | **int32** |  | 

### Return type

**map[string]interface{}**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EnginesList

> EnginesList200Response EnginesList(ctx).MinCalls(minCalls).Execute()

Every engine's card.

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
	minCalls := int32(56) // int32 |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.EnginesAPI.EnginesList(context.Background()).MinCalls(minCalls).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `EnginesAPI.EnginesList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EnginesList`: EnginesList200Response
	fmt.Fprintf(os.Stdout, "Response from `EnginesAPI.EnginesList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiEnginesListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCalls** | **int32** |  | 

### Return type

[**EnginesList200Response**](EnginesList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

