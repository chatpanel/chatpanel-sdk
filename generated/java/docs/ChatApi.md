# ChatApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**chatCompletions**](ChatApi.md#chatCompletions) | **POST** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible). |
| [**chatCompletionsWithHttpInfo**](ChatApi.md#chatCompletionsWithHttpInfo) | **POST** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible). |



## chatCompletions

> ChatCompletion chatCompletions(chatCompletionRequest, xChatPanelRedaction, xChatPanelRun)

One chat turn through the gateway (OpenAI-compatible).

Redacted on the way out, restored on the way back, routed by &#x60;model&#x60;. With &#x60;stream: true&#x60; the response is &#x60;text/event-stream&#x60; of OpenAI chunk objects ending in &#x60;data: [DONE]&#x60;. Send &#x60;tools&#x60; so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. &#x60;X-ChatPanel-Redaction: off&#x60; is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.ChatApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        ChatApi apiInstance = new ChatApi(defaultClient);
        ChatCompletionRequest chatCompletionRequest = new ChatCompletionRequest(); // ChatCompletionRequest | 
        String xChatPanelRedaction = "false"; // String | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace.
        String xChatPanelRun = "xChatPanelRun_example"; // String | A team role's run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token.
        try {
            ChatCompletion result = apiInstance.chatCompletions(chatCompletionRequest, xChatPanelRedaction, xChatPanelRun);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ChatApi#chatCompletions");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **chatCompletionRequest** | [**ChatCompletionRequest**](ChatCompletionRequest.md)|  | |
| **xChatPanelRedaction** | **String**| Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. | [optional] [enum: false] |
| **xChatPanelRun** | **String**| A team role&#39;s run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. | [optional] |

### Return type

[**ChatCompletion**](ChatCompletion.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/event-stream

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The completion, or a stream of chunks. |  -  |
| **4XX** | An error, in the gateway&#39;s words. |  -  |
| **5XX** | An error, in the gateway&#39;s words. |  -  |

## chatCompletionsWithHttpInfo

> ApiResponse<ChatCompletion> chatCompletionsWithHttpInfo(chatCompletionRequest, xChatPanelRedaction, xChatPanelRun)

One chat turn through the gateway (OpenAI-compatible).

Redacted on the way out, restored on the way back, routed by &#x60;model&#x60;. With &#x60;stream: true&#x60; the response is &#x60;text/event-stream&#x60; of OpenAI chunk objects ending in &#x60;data: [DONE]&#x60;. Send &#x60;tools&#x60; so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. &#x60;X-ChatPanel-Redaction: off&#x60; is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.ChatApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        ChatApi apiInstance = new ChatApi(defaultClient);
        ChatCompletionRequest chatCompletionRequest = new ChatCompletionRequest(); // ChatCompletionRequest | 
        String xChatPanelRedaction = "false"; // String | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace.
        String xChatPanelRun = "xChatPanelRun_example"; // String | A team role's run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token.
        try {
            ApiResponse<ChatCompletion> response = apiInstance.chatCompletionsWithHttpInfo(chatCompletionRequest, xChatPanelRedaction, xChatPanelRun);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling ChatApi#chatCompletions");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **chatCompletionRequest** | [**ChatCompletionRequest**](ChatCompletionRequest.md)|  | |
| **xChatPanelRedaction** | **String**| Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. | [optional] [enum: false] |
| **xChatPanelRun** | **String**| A team role&#39;s run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. | [optional] |

### Return type

ApiResponse<[**ChatCompletion**](ChatCompletion.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/event-stream

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The completion, or a stream of chunks. |  -  |
| **4XX** | An error, in the gateway&#39;s words. |  -  |
| **5XX** | An error, in the gateway&#39;s words. |  -  |

