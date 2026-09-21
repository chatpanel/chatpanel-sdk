# \EventsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EventsCursor**](EventsAPI.md#EventsCursor) | **Get** /v1/events/cursor | The gateway&#39;s highest &#x60;seq&#x60; per host — what a client asks for before it pushes.
[**EventsPush**](EventsAPI.md#EventsPush) | **Post** /v1/events | Push a batch of this client&#39;s durable log as CloudEvents; each event is appended once, each refusal is named.
[**EventsSince**](EventsAPI.md#EventsSince) | **Get** /v1/events | The merged log above a cursor — host by host in &#x60;seq&#x60; order, as CloudEvents, paged.
[**EventsStream**](EventsAPI.md#EventsStream) | **Get** /v1/events/stream | Tail the merged log — &#x60;hello&#x60; once, then a &#x60;cloudevent&#x60; frame per appended event; with &#x60;cursor&#x60;, the backlog above it first.



## EventsCursor

> EventsCursor EventsCursor(ctx).Execute()

The gateway's highest `seq` per host — what a client asks for before it pushes.

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
	resp, r, err := apiClient.EventsAPI.EventsCursor(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `EventsAPI.EventsCursor``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EventsCursor`: EventsCursor
	fmt.Fprintf(os.Stdout, "Response from `EventsAPI.EventsCursor`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiEventsCursorRequest struct via the builder pattern


### Return type

[**EventsCursor**](EventsCursor.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EventsPush

> PushEventsResponse EventsPush(ctx).PushEventsRequest(pushEventsRequest).Execute()

Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {
	pushEventsRequest := *openapiclient.NewPushEventsRequest([]openapiclient.CloudEvent{*openapiclient.NewCloudEvent("Specversion_example", "Id_example", "Source_example", "Type_example", time.Now(), int32(123), "Host_example", int32(123))}) // PushEventsRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.EventsAPI.EventsPush(context.Background()).PushEventsRequest(pushEventsRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `EventsAPI.EventsPush``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EventsPush`: PushEventsResponse
	fmt.Fprintf(os.Stdout, "Response from `EventsAPI.EventsPush`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiEventsPushRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pushEventsRequest** | [**PushEventsRequest**](PushEventsRequest.md) |  | 

### Return type

[**PushEventsResponse**](PushEventsResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EventsSince

> EventsPage EventsSince(ctx).Cursor(cursor).Limit(limit).Host(host).Execute()

The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged.

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
	cursor := "cursor_example" // string | JSON `{ host: seq }` — the highest seq per host you already hold. Absent means everything. (optional)
	limit := int32(56) // int32 |  (optional) (default to 1000)
	host := "host_example" // string | One host's slice only. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.EventsAPI.EventsSince(context.Background()).Cursor(cursor).Limit(limit).Host(host).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `EventsAPI.EventsSince``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EventsSince`: EventsPage
	fmt.Fprintf(os.Stdout, "Response from `EventsAPI.EventsSince`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiEventsSinceRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **string** | JSON &#x60;{ host: seq }&#x60; — the highest seq per host you already hold. Absent means everything. | 
 **limit** | **int32** |  | [default to 1000]
 **host** | **string** | One host&#39;s slice only. | 

### Return type

[**EventsPage**](EventsPage.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EventsStream

> string EventsStream(ctx).Cursor(cursor).Execute()

Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first.

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
	cursor := "cursor_example" // string | JSON `{ host: seq }`; when present the events above it are replayed before live frames. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.EventsAPI.EventsStream(context.Background()).Cursor(cursor).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `EventsAPI.EventsStream``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EventsStream`: string
	fmt.Fprintf(os.Stdout, "Response from `EventsAPI.EventsStream`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiEventsStreamRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **string** | JSON &#x60;{ host: seq }&#x60;; when present the events above it are replayed before live frames. | 

### Return type

**string**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

