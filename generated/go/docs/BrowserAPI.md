# \BrowserAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BrowserAnnounce**](BrowserAPI.md#BrowserAnnounce) | **Post** /v1/browser/announce | The browser says what it offers — its page tool spec and guidance.
[**BrowserCall**](BrowserAPI.md#BrowserCall) | **Post** /v1/browser/call | Run one page action in the person&#39;s browser and wait for its result.
[**BrowserResult**](BrowserAPI.md#BrowserResult) | **Post** /v1/browser/result | The browser answers a call it ran. Only the session the call went to may answer it.
[**BrowserStatus**](BrowserAPI.md#BrowserStatus) | **Get** /v1/browser | Is a browser connected, which one, and the page tool it offers.
[**BrowserStream**](BrowserAPI.md#BrowserStream) | **Get** /v1/browser/stream | The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run.



## BrowserAnnounce

> BrowserAnnounce200Response BrowserAnnounce(ctx).BrowserAnnounce(browserAnnounce).Execute()

The browser says what it offers — its page tool spec and guidance.

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
	browserAnnounce := *openapiclient.NewBrowserAnnounce("Session_example", map[string]interface{}{"key": interface{}(123)}) // BrowserAnnounce | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BrowserAPI.BrowserAnnounce(context.Background()).BrowserAnnounce(browserAnnounce).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BrowserAPI.BrowserAnnounce``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `BrowserAnnounce`: BrowserAnnounce200Response
	fmt.Fprintf(os.Stdout, "Response from `BrowserAPI.BrowserAnnounce`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiBrowserAnnounceRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **browserAnnounce** | [**BrowserAnnounce**](BrowserAnnounce.md) |  | 

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## BrowserCall

> BrowserCallResult BrowserCall(ctx).BrowserCall(browserCall).Execute()

Run one page action in the person's browser and wait for its result.



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
	browserCall := *openapiclient.NewBrowserCall("Action_example") // BrowserCall | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BrowserAPI.BrowserCall(context.Background()).BrowserCall(browserCall).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BrowserAPI.BrowserCall``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `BrowserCall`: BrowserCallResult
	fmt.Fprintf(os.Stdout, "Response from `BrowserAPI.BrowserCall`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiBrowserCallRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **browserCall** | [**BrowserCall**](BrowserCall.md) |  | 

### Return type

[**BrowserCallResult**](BrowserCallResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## BrowserResult

> BrowserAnnounce200Response BrowserResult(ctx).BrowserResult(browserResult).Execute()

The browser answers a call it ran. Only the session the call went to may answer it.

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
	browserResult := *openapiclient.NewBrowserResult("Session_example", "Id_example", openapiclient.BrowserResult_result{BrowserResultResultOneOf: openapiclient.NewBrowserResultResultOneOf("Text_example")}) // BrowserResult | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BrowserAPI.BrowserResult(context.Background()).BrowserResult(browserResult).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BrowserAPI.BrowserResult``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `BrowserResult`: BrowserAnnounce200Response
	fmt.Fprintf(os.Stdout, "Response from `BrowserAPI.BrowserResult`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiBrowserResultRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **browserResult** | [**BrowserResult**](BrowserResult.md) |  | 

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## BrowserStatus

> BrowserStatus BrowserStatus(ctx).Execute()

Is a browser connected, which one, and the page tool it offers.



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
	resp, r, err := apiClient.BrowserAPI.BrowserStatus(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BrowserAPI.BrowserStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `BrowserStatus`: BrowserStatus
	fmt.Fprintf(os.Stdout, "Response from `BrowserAPI.BrowserStatus`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiBrowserStatusRequest struct via the builder pattern


### Return type

[**BrowserStatus**](BrowserStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## BrowserStream

> string BrowserStream(ctx).Execute()

The browser's end — `hello` with its session, then a `call` frame per action to run.

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
	resp, r, err := apiClient.BrowserAPI.BrowserStream(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BrowserAPI.BrowserStream``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `BrowserStream`: string
	fmt.Fprintf(os.Stdout, "Response from `BrowserAPI.BrowserStream`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiBrowserStreamRequest struct via the builder pattern


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

