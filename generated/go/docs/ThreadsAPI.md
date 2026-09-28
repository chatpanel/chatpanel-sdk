# \ThreadsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ThreadsSend**](ThreadsAPI.md#ThreadsSend) | **Post** /v1/threads/send | Ask one of the person&#39;s chats and get its answer; the exchange is added to that chat.



## ThreadsSend

> ThreadsSend200Response ThreadsSend(ctx).ThreadsSendRequest(threadsSendRequest).Execute()

Ask one of the person's chats and get its answer; the exchange is added to that chat.



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
	threadsSendRequest := *openapiclient.NewThreadsSendRequest("To_example", "Message_example") // ThreadsSendRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ThreadsAPI.ThreadsSend(context.Background()).ThreadsSendRequest(threadsSendRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ThreadsAPI.ThreadsSend``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ThreadsSend`: ThreadsSend200Response
	fmt.Fprintf(os.Stdout, "Response from `ThreadsAPI.ThreadsSend`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiThreadsSendRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadsSendRequest** | [**ThreadsSendRequest**](ThreadsSendRequest.md) |  | 

### Return type

[**ThreadsSend200Response**](ThreadsSend200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

