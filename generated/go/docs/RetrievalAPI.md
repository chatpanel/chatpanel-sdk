# \RetrievalAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RetrievalExtract**](RetrievalAPI.md#RetrievalExtract) | **Post** /v1/extract | A document&#39;s pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash.
[**RetrievalRead**](RetrievalAPI.md#RetrievalRead) | **Post** /v1/read | Read one public page as LLM-ready Markdown, cited where it landed, with its sections.
[**RetrievalReadAlias**](RetrievalAPI.md#RetrievalReadAlias) | **Get** /v1/read/{url} | The r.jina.ai-shaped alias — &#x60;GET /v1/read/https://…&#x60; — for clients that already speak it.
[**RetrievalSearch**](RetrievalAPI.md#RetrievalSearch) | **Post** /v1/search | Search the web through the provider this gateway is configured with; optionally read the top results in the same request.
[**RetrievalSearchAlias**](RetrievalAPI.md#RetrievalSearchAlias) | **Get** /v1/search/{q} | The s.jina.ai-shaped alias — &#x60;GET /v1/search/&lt;query&gt;&#x60; — the top results WITH their content.



## RetrievalExtract

> ExtractResponse RetrievalExtract(ctx).ExtractRequest(extractRequest).Execute()

A document's pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash.



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
	extractRequest := *openapiclient.NewExtractRequest() // ExtractRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RetrievalAPI.RetrievalExtract(context.Background()).ExtractRequest(extractRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RetrievalAPI.RetrievalExtract``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrievalExtract`: ExtractResponse
	fmt.Fprintf(os.Stdout, "Response from `RetrievalAPI.RetrievalExtract`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRetrievalExtractRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extractRequest** | [**ExtractRequest**](ExtractRequest.md) |  | 

### Return type

[**ExtractResponse**](ExtractResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RetrievalRead

> ReadResponse RetrievalRead(ctx).ReadRequest(readRequest).Execute()

Read one public page as LLM-ready Markdown, cited where it landed, with its sections.



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
	readRequest := *openapiclient.NewReadRequest("Url_example") // ReadRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RetrievalAPI.RetrievalRead(context.Background()).ReadRequest(readRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RetrievalAPI.RetrievalRead``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrievalRead`: ReadResponse
	fmt.Fprintf(os.Stdout, "Response from `RetrievalAPI.RetrievalRead`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRetrievalReadRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **readRequest** | [**ReadRequest**](ReadRequest.md) |  | 

### Return type

[**ReadResponse**](ReadResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RetrievalReadAlias

> string RetrievalReadAlias(ctx, url).Accept(accept).XReturnFormat(xReturnFormat).Execute()

The r.jina.ai-shaped alias — `GET /v1/read/https://…` — for clients that already speak it.



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
	url := "url_example" // string | The page URL, as is or percent-encoded.
	accept := "accept_example" // string | `application/json` for the document; text otherwise. (optional)
	xReturnFormat := "xReturnFormat_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RetrievalAPI.RetrievalReadAlias(context.Background(), url).Accept(accept).XReturnFormat(xReturnFormat).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RetrievalAPI.RetrievalReadAlias``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrievalReadAlias`: string
	fmt.Fprintf(os.Stdout, "Response from `RetrievalAPI.RetrievalReadAlias`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**url** | **string** | The page URL, as is or percent-encoded. | 

### Other Parameters

Other parameters are passed through a pointer to a apiRetrievalReadAliasRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **accept** | **string** | &#x60;application/json&#x60; for the document; text otherwise. | 
 **xReturnFormat** | **string** |  | 

### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RetrievalSearch

> WebSearchResponse RetrievalSearch(ctx).WebSearchRequest(webSearchRequest).Execute()

Search the web through the provider this gateway is configured with; optionally read the top results in the same request.



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
	webSearchRequest := *openapiclient.NewWebSearchRequest("Q_example") // WebSearchRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RetrievalAPI.RetrievalSearch(context.Background()).WebSearchRequest(webSearchRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RetrievalAPI.RetrievalSearch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrievalSearch`: WebSearchResponse
	fmt.Fprintf(os.Stdout, "Response from `RetrievalAPI.RetrievalSearch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRetrievalSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webSearchRequest** | [**WebSearchRequest**](WebSearchRequest.md) |  | 

### Return type

[**WebSearchResponse**](WebSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RetrievalSearchAlias

> RetrievalSearchAlias200Response RetrievalSearchAlias(ctx, q).Read(read).Execute()

The s.jina.ai-shaped alias — `GET /v1/search/<query>` — the top results WITH their content.



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
	q := "q_example" // string | The query, percent-encoded.
	read := int32(56) // int32 |  (optional) (default to 5)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RetrievalAPI.RetrievalSearchAlias(context.Background(), q).Read(read).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RetrievalAPI.RetrievalSearchAlias``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrievalSearchAlias`: RetrievalSearchAlias200Response
	fmt.Fprintf(os.Stdout, "Response from `RetrievalAPI.RetrievalSearchAlias`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**q** | **string** | The query, percent-encoded. | 

### Other Parameters

Other parameters are passed through a pointer to a apiRetrievalSearchAliasRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **read** | **int32** |  | [default to 5]

### Return type

[**RetrievalSearchAlias200Response**](RetrievalSearchAlias200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

