# \CapabilitiesAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CapabilitiesDetect**](CapabilitiesAPI.md#CapabilitiesDetect) | **Post** /v1/detect | Find entities in text — the model&#39;s own labels, with offsets and scores.
[**CapabilitiesList**](CapabilitiesAPI.md#CapabilitiesList) | **Get** /v1/capabilities | What this provider can do — which capabilities, models, measured cost and runtime state.



## CapabilitiesDetect

> DetectResponse CapabilitiesDetect(ctx).DetectRequest(detectRequest).Execute()

Find entities in text — the model's own labels, with offsets and scores.



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
	detectRequest := *openapiclient.NewDetectRequest("Text_example") // DetectRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CapabilitiesAPI.CapabilitiesDetect(context.Background()).DetectRequest(detectRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CapabilitiesAPI.CapabilitiesDetect``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CapabilitiesDetect`: DetectResponse
	fmt.Fprintf(os.Stdout, "Response from `CapabilitiesAPI.CapabilitiesDetect`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCapabilitiesDetectRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **detectRequest** | [**DetectRequest**](DetectRequest.md) |  | 

### Return type

[**DetectResponse**](DetectResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CapabilitiesList

> CapabilitiesDocument CapabilitiesList(ctx).Execute()

What this provider can do — which capabilities, models, measured cost and runtime state.



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
	resp, r, err := apiClient.CapabilitiesAPI.CapabilitiesList(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CapabilitiesAPI.CapabilitiesList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CapabilitiesList`: CapabilitiesDocument
	fmt.Fprintf(os.Stdout, "Response from `CapabilitiesAPI.CapabilitiesList`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCapabilitiesListRequest struct via the builder pattern


### Return type

[**CapabilitiesDocument**](CapabilitiesDocument.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

