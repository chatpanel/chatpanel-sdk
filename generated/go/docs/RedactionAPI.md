# \RedactionAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RedactionPreview**](RedactionAPI.md#RedactionPreview) | **Post** /redact | What the model would receive if this text were sent now.



## RedactionPreview

> RedactionPreview RedactionPreview(ctx).RedactionPreviewRequest(redactionPreviewRequest).Execute()

What the model would receive if this text were sent now.



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
	redactionPreviewRequest := *openapiclient.NewRedactionPreviewRequest("Text_example") // RedactionPreviewRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RedactionAPI.RedactionPreview(context.Background()).RedactionPreviewRequest(redactionPreviewRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RedactionAPI.RedactionPreview``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RedactionPreview`: RedactionPreview
	fmt.Fprintf(os.Stdout, "Response from `RedactionAPI.RedactionPreview`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRedactionPreviewRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redactionPreviewRequest** | [**RedactionPreviewRequest**](RedactionPreviewRequest.md) |  | 

### Return type

[**RedactionPreview**](RedactionPreview.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

