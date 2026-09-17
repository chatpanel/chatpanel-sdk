# \ChatAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChatCompletions**](ChatAPI.md#ChatCompletions) | **Post** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible).



## ChatCompletions

> ChatCompletion ChatCompletions(ctx).ChatCompletionRequest(chatCompletionRequest).XChatPanelRedaction(xChatPanelRedaction).XChatPanelRun(xChatPanelRun).Execute()

One chat turn through the gateway (OpenAI-compatible).



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
	chatCompletionRequest := *openapiclient.NewChatCompletionRequest("Model_example", []openapiclient.ChatMessage{*openapiclient.NewChatMessage("Role_example")}) // ChatCompletionRequest | 
	xChatPanelRedaction := "xChatPanelRedaction_example" // string | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. (optional)
	xChatPanelRun := "xChatPanelRun_example" // string | A team role's run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ChatAPI.ChatCompletions(context.Background()).ChatCompletionRequest(chatCompletionRequest).XChatPanelRedaction(xChatPanelRedaction).XChatPanelRun(xChatPanelRun).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ChatAPI.ChatCompletions``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ChatCompletions`: ChatCompletion
	fmt.Fprintf(os.Stdout, "Response from `ChatAPI.ChatCompletions`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiChatCompletionsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatCompletionRequest** | [**ChatCompletionRequest**](ChatCompletionRequest.md) |  | 
 **xChatPanelRedaction** | **string** | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. | 
 **xChatPanelRun** | **string** | A team role&#39;s run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. | 

### Return type

[**ChatCompletion**](ChatCompletion.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

