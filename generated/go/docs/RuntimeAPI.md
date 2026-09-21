# \RuntimeAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RuntimeEngine**](RuntimeAPI.md#RuntimeEngine) | **Post** /v1/runtime/engines/{name} | Start the container engine (Podman — creates and starts its machine where one is needed).
[**RuntimeService**](RuntimeAPI.md#RuntimeService) | **Post** /v1/runtime/services/{id} | Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it.
[**RuntimeStatus**](RuntimeAPI.md#RuntimeStatus) | **Get** /v1/runtime | The runtime — the process sandbox, what is running now, the container engine, the services.



## RuntimeEngine

> RuntimeActionResult RuntimeEngine(ctx, name).RuntimeEngineRequest(runtimeEngineRequest).Execute()

Start the container engine (Podman — creates and starts its machine where one is needed).



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
	name := "name_example" // string | 
	runtimeEngineRequest := *openapiclient.NewRuntimeEngineRequest() // RuntimeEngineRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RuntimeAPI.RuntimeEngine(context.Background(), name).RuntimeEngineRequest(runtimeEngineRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RuntimeAPI.RuntimeEngine``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RuntimeEngine`: RuntimeActionResult
	fmt.Fprintf(os.Stdout, "Response from `RuntimeAPI.RuntimeEngine`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRuntimeEngineRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **runtimeEngineRequest** | [**RuntimeEngineRequest**](RuntimeEngineRequest.md) |  | 

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RuntimeService

> RuntimeActionResult RuntimeService(ctx, id).RuntimeServiceRequest(runtimeServiceRequest).Execute()

Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it.



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
	id := "id_example" // string | 
	runtimeServiceRequest := *openapiclient.NewRuntimeServiceRequest() // RuntimeServiceRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RuntimeAPI.RuntimeService(context.Background(), id).RuntimeServiceRequest(runtimeServiceRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RuntimeAPI.RuntimeService``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RuntimeService`: RuntimeActionResult
	fmt.Fprintf(os.Stdout, "Response from `RuntimeAPI.RuntimeService`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRuntimeServiceRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **runtimeServiceRequest** | [**RuntimeServiceRequest**](RuntimeServiceRequest.md) |  | 

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RuntimeStatus

> RuntimeDocument RuntimeStatus(ctx).Execute()

The runtime — the process sandbox, what is running now, the container engine, the services.



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
	resp, r, err := apiClient.RuntimeAPI.RuntimeStatus(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RuntimeAPI.RuntimeStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RuntimeStatus`: RuntimeDocument
	fmt.Fprintf(os.Stdout, "Response from `RuntimeAPI.RuntimeStatus`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiRuntimeStatusRequest struct via the builder pattern


### Return type

[**RuntimeDocument**](RuntimeDocument.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

