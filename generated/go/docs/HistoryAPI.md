# \HistoryAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**HistoryGet**](HistoryAPI.md#HistoryGet) | **Get** /v1/history/get | One full warm record, optionally paged by characters.
[**HistoryIngest**](HistoryAPI.md#HistoryIngest) | **Post** /v1/history/ingest | Push flattened (lossy) records into the warm index.
[**HistoryList**](HistoryAPI.md#HistoryList) | **Get** /v1/history/list | A page of the warm index — metadata only, no bodies.
[**HistoryPutRecords**](HistoryAPI.md#HistoryPutRecords) | **Put** /v1/history/records | Push whole records; the gateway derives the searchable text itself.
[**HistoryRecords**](HistoryAPI.md#HistoryRecords) | **Get** /v1/history/records | WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.
[**HistoryRelated**](HistoryAPI.md#HistoryRelated) | **Get** /v1/history/related | The records most connected to one record.
[**HistorySearch**](HistoryAPI.md#HistorySearch) | **Post** /v1/history/search | One keyword query over the warm index.
[**HistorySmartSearch**](HistoryAPI.md#HistorySmartSearch) | **Post** /v1/history/smart-search | Several phrasings at once, rank-fused; briefs lead.
[**HistoryStatus**](HistoryAPI.md#HistoryStatus) | **Get** /v1/history/status | Size and freshness of the warm index (and the lossless tier from 0.10.0).
[**HistoryStream**](HistoryAPI.md#HistoryStream) | **Get** /v1/history/stream | Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change.



## HistoryGet

> HistoryGet200Response HistoryGet(ctx).Id(id).MaxChars(maxChars).Offset(offset).Execute()

One full warm record, optionally paged by characters.

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
	maxChars := int32(56) // int32 | Page a long transcript instead of pulling it all. (optional)
	offset := int32(56) // int32 |  (optional) (default to 0)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HistoryAPI.HistoryGet(context.Background()).Id(id).MaxChars(maxChars).Offset(offset).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HistoryAPI.HistoryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `HistoryGet`: HistoryGet200Response
	fmt.Fprintf(os.Stdout, "Response from `HistoryAPI.HistoryGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiHistoryGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | 
 **maxChars** | **int32** | Page a long transcript instead of pulling it all. | 
 **offset** | **int32** |  | [default to 0]

### Return type

[**HistoryGet200Response**](HistoryGet200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HistoryIngest

> HistoryIngest200Response HistoryIngest(ctx).IngestRequest(ingestRequest).Execute()

Push flattened (lossy) records into the warm index.

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
	ingestRequest := *openapiclient.NewIngestRequest() // IngestRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HistoryAPI.HistoryIngest(context.Background()).IngestRequest(ingestRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HistoryAPI.HistoryIngest``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `HistoryIngest`: HistoryIngest200Response
	fmt.Fprintf(os.Stdout, "Response from `HistoryAPI.HistoryIngest`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiHistoryIngestRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingestRequest** | [**IngestRequest**](IngestRequest.md) |  | 

### Return type

[**HistoryIngest200Response**](HistoryIngest200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HistoryList

> HistoryPage HistoryList(ctx).Limit(limit).Offset(offset).Type_(type_).Execute()

A page of the warm index — metadata only, no bodies.

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
	limit := int32(56) // int32 |  (optional) (default to 50)
	offset := int32(56) // int32 |  (optional) (default to 0)
	type_ := openapiclient.RecordType("chat") // RecordType |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HistoryAPI.HistoryList(context.Background()).Limit(limit).Offset(offset).Type_(type_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HistoryAPI.HistoryList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `HistoryList`: HistoryPage
	fmt.Fprintf(os.Stdout, "Response from `HistoryAPI.HistoryList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiHistoryListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int32** |  | [default to 50]
 **offset** | **int32** |  | [default to 0]
 **type_** | [**RecordType**](RecordType.md) |  | 

### Return type

[**HistoryPage**](HistoryPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HistoryPutRecords

> PutRecordsResponse HistoryPutRecords(ctx).PutRecordsRequest(putRecordsRequest).Execute()

Push whole records; the gateway derives the searchable text itself.

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
	putRecordsRequest := *openapiclient.NewPutRecordsRequest() // PutRecordsRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HistoryAPI.HistoryPutRecords(context.Background()).PutRecordsRequest(putRecordsRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HistoryAPI.HistoryPutRecords``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `HistoryPutRecords`: PutRecordsResponse
	fmt.Fprintf(os.Stdout, "Response from `HistoryAPI.HistoryPutRecords`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiHistoryPutRecordsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **putRecordsRequest** | [**PutRecordsRequest**](PutRecordsRequest.md) |  | 

### Return type

[**PutRecordsResponse**](PutRecordsResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HistoryRecords

> RecordsPage HistoryRecords(ctx).Since(since).Cursor(cursor).Limit(limit).Kind(kind).Execute()

WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.



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
	since := int64(789) // int64 | A stamp (ms since epoch) from a previous page's `newest`. (optional) (default to 0)
	cursor := "cursor_example" // string | Opaque; from the previous page. (optional)
	limit := int32(56) // int32 |  (optional) (default to 200)
	kind := "kind_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HistoryAPI.HistoryRecords(context.Background()).Since(since).Cursor(cursor).Limit(limit).Kind(kind).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HistoryAPI.HistoryRecords``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `HistoryRecords`: RecordsPage
	fmt.Fprintf(os.Stdout, "Response from `HistoryAPI.HistoryRecords`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiHistoryRecordsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **int64** | A stamp (ms since epoch) from a previous page&#39;s &#x60;newest&#x60;. | [default to 0]
 **cursor** | **string** | Opaque; from the previous page. | 
 **limit** | **int32** |  | [default to 200]
 **kind** | **string** |  | 

### Return type

[**RecordsPage**](RecordsPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HistoryRelated

> HistoryRelated200Response HistoryRelated(ctx).Id(id).Limit(limit).Execute()

The records most connected to one record.

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
	limit := int32(56) // int32 |  (optional) (default to 5)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HistoryAPI.HistoryRelated(context.Background()).Id(id).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HistoryAPI.HistoryRelated``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `HistoryRelated`: HistoryRelated200Response
	fmt.Fprintf(os.Stdout, "Response from `HistoryAPI.HistoryRelated`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiHistoryRelatedRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | 
 **limit** | **int32** |  | [default to 5]

### Return type

[**HistoryRelated200Response**](HistoryRelated200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HistorySearch

> SearchResponse HistorySearch(ctx).SearchRequest(searchRequest).Execute()

One keyword query over the warm index.

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
	searchRequest := *openapiclient.NewSearchRequest("Query_example") // SearchRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HistoryAPI.HistorySearch(context.Background()).SearchRequest(searchRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HistoryAPI.HistorySearch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `HistorySearch`: SearchResponse
	fmt.Fprintf(os.Stdout, "Response from `HistoryAPI.HistorySearch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiHistorySearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchRequest** | [**SearchRequest**](SearchRequest.md) |  | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HistorySmartSearch

> SmartSearchResponse HistorySmartSearch(ctx).SmartSearchRequest(smartSearchRequest).Execute()

Several phrasings at once, rank-fused; briefs lead.

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
	smartSearchRequest := *openapiclient.NewSmartSearchRequest("Question_example") // SmartSearchRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HistoryAPI.HistorySmartSearch(context.Background()).SmartSearchRequest(smartSearchRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HistoryAPI.HistorySmartSearch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `HistorySmartSearch`: SmartSearchResponse
	fmt.Fprintf(os.Stdout, "Response from `HistoryAPI.HistorySmartSearch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiHistorySmartSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smartSearchRequest** | [**SmartSearchRequest**](SmartSearchRequest.md) |  | 

### Return type

[**SmartSearchResponse**](SmartSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HistoryStatus

> HistoryStatus HistoryStatus(ctx).Execute()

Size and freshness of the warm index (and the lossless tier from 0.10.0).

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
	resp, r, err := apiClient.HistoryAPI.HistoryStatus(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HistoryAPI.HistoryStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `HistoryStatus`: HistoryStatus
	fmt.Fprintf(os.Stdout, "Response from `HistoryAPI.HistoryStatus`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiHistoryStatusRequest struct via the builder pattern


### Return type

[**HistoryStatus**](HistoryStatus.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HistoryStream

> string HistoryStream(ctx).Execute()

Live record changes — `hello` once, then a `records` event per change.

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
	resp, r, err := apiClient.HistoryAPI.HistoryStream(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HistoryAPI.HistoryStream``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `HistoryStream`: string
	fmt.Fprintf(os.Stdout, "Response from `HistoryAPI.HistoryStream`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiHistoryStreamRequest struct via the builder pattern


### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

