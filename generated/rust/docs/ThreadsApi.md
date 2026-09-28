# \ThreadsApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**threads_send**](ThreadsApi.md#threads_send) | **POST** /v1/threads/send | Ask one of the person's chats and get its answer; the exchange is added to that chat.



## threads_send

> models::ThreadsSend200Response threads_send(threads_send_request)
Ask one of the person's chats and get its answer; the exchange is added to that chat.

The chat's own model or coding agent answers, in that chat (its agent session is resumed), and the question — framed with who asked — and the answer are appended to it. A caller acting for an agent should ask the person first; `dryRun` returns the chat's title and model for that question without running anything.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**threads_send_request** | [**ThreadsSendRequest**](ThreadsSendRequest.md) |  | [required] |

### Return type

[**models::ThreadsSend200Response**](threads_send_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

