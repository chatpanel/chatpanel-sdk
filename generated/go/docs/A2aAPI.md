# \A2aAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**A2aAgents**](A2aAPI.md#A2aAgents) | **Get** /a2a/agents | Every remote agent this gateway has spoken to.
[**A2aCard**](A2aAPI.md#A2aCard) | **Post** /a2a/card | Fetch a remote agent&#39;s card, revalidating the one already held.
[**A2aMessage**](A2aAPI.md#A2aMessage) | **Post** /a2a/message | Send a message to a remote agent and wait for the answer.
[**A2aStream**](A2aAPI.md#A2aStream) | **Post** /a2a/message/stream | Send a message and stream the answer as it is produced.
[**A2aTask**](A2aAPI.md#A2aTask) | **Post** /a2a/task | Poll or cancel a task on a remote agent.



## A2aAgents

> A2aAgents200Response A2aAgents(ctx).Execute()

Every remote agent this gateway has spoken to.



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
	resp, r, err := apiClient.A2aAPI.A2aAgents(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `A2aAPI.A2aAgents``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `A2aAgents`: A2aAgents200Response
	fmt.Fprintf(os.Stdout, "Response from `A2aAPI.A2aAgents`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiA2aAgentsRequest struct via the builder pattern


### Return type

[**A2aAgents200Response**](A2aAgents200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## A2aCard

> A2aCard200Response A2aCard(ctx).A2aCardRequest(a2aCardRequest).Execute()

Fetch a remote agent's card, revalidating the one already held.



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
	a2aCardRequest := *openapiclient.NewA2aCardRequest("Url_example") // A2aCardRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.A2aAPI.A2aCard(context.Background()).A2aCardRequest(a2aCardRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `A2aAPI.A2aCard``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `A2aCard`: A2aCard200Response
	fmt.Fprintf(os.Stdout, "Response from `A2aAPI.A2aCard`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiA2aCardRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2aCardRequest** | [**A2aCardRequest**](A2aCardRequest.md) |  | 

### Return type

[**A2aCard200Response**](A2aCard200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## A2aMessage

> A2AResult A2aMessage(ctx).A2ASendRequest(a2ASendRequest).Execute()

Send a message to a remote agent and wait for the answer.



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
	a2ASendRequest := *openapiclient.NewA2ASendRequest() // A2ASendRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.A2aAPI.A2aMessage(context.Background()).A2ASendRequest(a2ASendRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `A2aAPI.A2aMessage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `A2aMessage`: A2AResult
	fmt.Fprintf(os.Stdout, "Response from `A2aAPI.A2aMessage`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiA2aMessageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md) |  | 

### Return type

[**A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## A2aStream

> string A2aStream(ctx).A2ASendRequest(a2ASendRequest).Execute()

Send a message and stream the answer as it is produced.



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
	a2ASendRequest := *openapiclient.NewA2ASendRequest() // A2ASendRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.A2aAPI.A2aStream(context.Background()).A2ASendRequest(a2ASendRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `A2aAPI.A2aStream``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `A2aStream`: string
	fmt.Fprintf(os.Stdout, "Response from `A2aAPI.A2aStream`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiA2aStreamRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md) |  | 

### Return type

**string**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## A2aTask

> A2AResult A2aTask(ctx).A2aTaskRequest(a2aTaskRequest).Execute()

Poll or cancel a task on a remote agent.

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
	a2aTaskRequest := *openapiclient.NewA2aTaskRequest("Id_example") // A2aTaskRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.A2aAPI.A2aTask(context.Background()).A2aTaskRequest(a2aTaskRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `A2aAPI.A2aTask``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `A2aTask`: A2AResult
	fmt.Fprintf(os.Stdout, "Response from `A2aAPI.A2aTask`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiA2aTaskRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2aTaskRequest** | [**A2aTaskRequest**](A2aTaskRequest.md) |  | 

### Return type

[**A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

