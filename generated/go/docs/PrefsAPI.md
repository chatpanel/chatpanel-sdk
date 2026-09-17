# \PrefsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PrefsDelete**](PrefsAPI.md#PrefsDelete) | **Delete** /v1/prefs | Remove one section.
[**PrefsEvents**](PrefsAPI.md#PrefsEvents) | **Get** /v1/prefs/events | Live — which sections another client wrote.
[**PrefsGet**](PrefsAPI.md#PrefsGet) | **Get** /v1/prefs | The shared sections, or only their stamps.
[**PrefsPut**](PrefsAPI.md#PrefsPut) | **Post** /v1/prefs | Write sections; per-section last-writer-wins by stamp.



## PrefsDelete

> PrefsDelete200Response PrefsDelete(ctx).Section(section).Execute()

Remove one section.

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
	section := "section_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PrefsAPI.PrefsDelete(context.Background()).Section(section).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PrefsAPI.PrefsDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PrefsDelete`: PrefsDelete200Response
	fmt.Fprintf(os.Stdout, "Response from `PrefsAPI.PrefsDelete`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPrefsDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **section** | **string** |  | 

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PrefsEvents

> string PrefsEvents(ctx).Execute()

Live — which sections another client wrote.

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
	resp, r, err := apiClient.PrefsAPI.PrefsEvents(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PrefsAPI.PrefsEvents``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PrefsEvents`: string
	fmt.Fprintf(os.Stdout, "Response from `PrefsAPI.PrefsEvents`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiPrefsEventsRequest struct via the builder pattern


### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PrefsGet

> Prefs PrefsGet(ctx).Section(section).Stamps(stamps).Execute()

The shared sections, or only their stamps.

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
	section := "section_example" // string |  (optional)
	stamps := true // bool | Only `{ revision, stamps }`. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PrefsAPI.PrefsGet(context.Background()).Section(section).Stamps(stamps).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PrefsAPI.PrefsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PrefsGet`: Prefs
	fmt.Fprintf(os.Stdout, "Response from `PrefsAPI.PrefsGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPrefsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **section** | **string** |  | 
 **stamps** | **bool** | Only &#x60;{ revision, stamps }&#x60;. | 

### Return type

[**Prefs**](Prefs.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PrefsPut

> PrefsWriteResult PrefsPut(ctx).PrefsWrite(prefsWrite).Execute()

Write sections; per-section last-writer-wins by stamp.

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
	prefsWrite := *openapiclient.NewPrefsWrite(map[string]PrefSection{"key": *openapiclient.NewPrefSection(interface{}(123))}) // PrefsWrite | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.PrefsAPI.PrefsPut(context.Background()).PrefsWrite(prefsWrite).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `PrefsAPI.PrefsPut``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PrefsPut`: PrefsWriteResult
	fmt.Fprintf(os.Stdout, "Response from `PrefsAPI.PrefsPut`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPrefsPutRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefsWrite** | [**PrefsWrite**](PrefsWrite.md) |  | 

### Return type

[**PrefsWriteResult**](PrefsWriteResult.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

