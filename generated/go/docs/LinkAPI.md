# \LinkAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinkPair**](LinkAPI.md#LinkPair) | **Post** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first.
[**LinkRemoveDevice**](LinkAPI.md#LinkRemoveDevice) | **Delete** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection.
[**LinkRoute**](LinkAPI.md#LinkRoute) | **Post** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel.
[**LinkStatus**](LinkAPI.md#LinkStatus) | **Get** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach.



## LinkPair

> LinkPairResult LinkPair(ctx).LinkPairRequest(linkPairRequest).Execute()

Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.



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
	linkPairRequest := *openapiclient.NewLinkPairRequest() // LinkPairRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.LinkAPI.LinkPair(context.Background()).LinkPairRequest(linkPairRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkPair``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkPair`: LinkPairResult
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkPair`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiLinkPairRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkPairRequest** | [**LinkPairRequest**](LinkPairRequest.md) |  | 

### Return type

[**LinkPairResult**](LinkPairResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkRemoveDevice

> BrowserAnnounce200Response LinkRemoveDevice(ctx, deviceId).Execute()

Remove a paired device now — its relay room, its key and its open connection.

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
	deviceId := "deviceId_example" // string | The device's `id` from `link.status`.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.LinkAPI.LinkRemoveDevice(context.Background(), deviceId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkRemoveDevice``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkRemoveDevice`: BrowserAnnounce200Response
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkRemoveDevice`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**deviceId** | **string** | The device&#39;s &#x60;id&#x60; from &#x60;link.status&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiLinkRemoveDeviceRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkRoute

> LinkStatus LinkRoute(ctx).LinkRouteRequest(linkRouteRequest).Execute()

How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.



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
	linkRouteRequest := *openapiclient.NewLinkRouteRequest("Route_example") // LinkRouteRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.LinkAPI.LinkRoute(context.Background()).LinkRouteRequest(linkRouteRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkRoute``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkRoute`: LinkStatus
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkRoute`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiLinkRouteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkRouteRequest** | [**LinkRouteRequest**](LinkRouteRequest.md) |  | 

### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkStatus

> LinkStatus LinkStatus(ctx).Execute()

The Link route and every paired device — phones and partner servers — with what each may reach.



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
	resp, r, err := apiClient.LinkAPI.LinkStatus(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkStatus`: LinkStatus
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkStatus`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiLinkStatusRequest struct via the builder pattern


### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

