# A2aAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**a2aAgents**](A2aAPI.md#a2aagents) | **GET** /a2a/agents | Every remote agent this gateway has spoken to.
[**a2aCard**](A2aAPI.md#a2acard) | **POST** /a2a/card | Fetch a remote agent&#39;s card, revalidating the one already held.
[**a2aMessage**](A2aAPI.md#a2amessage) | **POST** /a2a/message | Send a message to a remote agent and wait for the answer.
[**a2aStream**](A2aAPI.md#a2astream) | **POST** /a2a/message/stream | Send a message and stream the answer as it is produced.
[**a2aTask**](A2aAPI.md#a2atask) | **POST** /a2a/task | Poll or cancel a task on a remote agent.


# **a2aAgents**
```swift
    open class func a2aAgents(completion: @escaping (_ data: A2aAgents200Response?, _ error: Error?) -> Void)
```

Every remote agent this gateway has spoken to.

What the audit lists — an agent a person connected is a host this machine talks to.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// Every remote agent this gateway has spoken to.
A2aAPI.a2aAgents() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**A2aAgents200Response**](A2aAgents200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **a2aCard**
```swift
    open class func a2aCard(a2aCardRequest: A2aCardRequest, completion: @escaping (_ data: A2aCard200Response?, _ error: Error?) -> Void)
```

Fetch a remote agent's card, revalidating the one already held.

The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with `If-None-Match`, so `fresh: false` means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let a2aCardRequest = a2a_card_request(url: "url_example", force: false, forget: false, auth: "auth_example") // A2aCardRequest | 

// Fetch a remote agent's card, revalidating the one already held.
A2aAPI.a2aCard(a2aCardRequest: a2aCardRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2aCardRequest** | [**A2aCardRequest**](A2aCardRequest.md) |  | 

### Return type

[**A2aCard200Response**](A2aCard200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **a2aMessage**
```swift
    open class func a2aMessage(a2ASendRequest: A2ASendRequest, completion: @escaping (_ data: A2AResult?, _ error: Error?) -> Void)
```

Send a message to a remote agent and wait for the answer.

The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so `kind` says which. `text` and `needs` are derived here rather than by each caller: `needs` is `answer` for an input stop and `approval` for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let a2ASendRequest = A2ASendRequest(url: "url_example", card: AgentCard(name: "name_example", description: "description_example", version: "version_example", supportedInterfaces: [AgentCard_supportedInterfaces_inner(url: "url_example", protocolBinding: "protocolBinding_example", protocolVersion: "protocolVersion_example", tenant: "tenant_example")], provider: AgentCard_provider(organization: "organization_example", url: "url_example"), capabilities: AgentCard_capabilities(streaming: false, pushNotifications: false, extendedAgentCard: false), defaultInputModes: ["defaultInputModes_example"], defaultOutputModes: ["defaultOutputModes_example"], skills: ["TODO"], iconUrl: "iconUrl_example", documentationUrl: "documentationUrl_example"), text: "text_example", message: "TODO", contextId: "contextId_example", taskId: "taskId_example", returnImmediately: false, auth: "auth_example") // A2ASendRequest | 

// Send a message to a remote agent and wait for the answer.
A2aAPI.a2aMessage(a2ASendRequest: a2ASendRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md) |  | 

### Return type

[**A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **a2aStream**
```swift
    open class func a2aStream(a2ASendRequest: A2ASendRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Send a message and stream the answer as it is produced.

Server-sent events, one per protocol frame — `task`, `status`, `artifact`, `message`, then `done` with the final result (or `error`). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise `capabilities.streaming`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let a2ASendRequest = A2ASendRequest(url: "url_example", card: AgentCard(name: "name_example", description: "description_example", version: "version_example", supportedInterfaces: [AgentCard_supportedInterfaces_inner(url: "url_example", protocolBinding: "protocolBinding_example", protocolVersion: "protocolVersion_example", tenant: "tenant_example")], provider: AgentCard_provider(organization: "organization_example", url: "url_example"), capabilities: AgentCard_capabilities(streaming: false, pushNotifications: false, extendedAgentCard: false), defaultInputModes: ["defaultInputModes_example"], defaultOutputModes: ["defaultOutputModes_example"], skills: ["TODO"], iconUrl: "iconUrl_example", documentationUrl: "documentationUrl_example"), text: "text_example", message: "TODO", contextId: "contextId_example", taskId: "taskId_example", returnImmediately: false, auth: "auth_example") // A2ASendRequest | 

// Send a message and stream the answer as it is produced.
A2aAPI.a2aStream(a2ASendRequest: a2ASendRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md) |  | 

### Return type

**String**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **a2aTask**
```swift
    open class func a2aTask(a2aTaskRequest: A2aTaskRequest, completion: @escaping (_ data: A2AResult?, _ error: Error?) -> Void)
```

Poll or cancel a task on a remote agent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let a2aTaskRequest = a2a_task_request(id: "id_example", url: "url_example", card: AgentCard(name: "name_example", description: "description_example", version: "version_example", supportedInterfaces: [AgentCard_supportedInterfaces_inner(url: "url_example", protocolBinding: "protocolBinding_example", protocolVersion: "protocolVersion_example", tenant: "tenant_example")], provider: AgentCard_provider(organization: "organization_example", url: "url_example"), capabilities: AgentCard_capabilities(streaming: false, pushNotifications: false, extendedAgentCard: false), defaultInputModes: ["defaultInputModes_example"], defaultOutputModes: ["defaultOutputModes_example"], skills: ["TODO"], iconUrl: "iconUrl_example", documentationUrl: "documentationUrl_example"), cancel: false, auth: "auth_example") // A2aTaskRequest | 

// Poll or cancel a task on a remote agent.
A2aAPI.a2aTask(a2aTaskRequest: a2aTaskRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2aTaskRequest** | [**A2aTaskRequest**](A2aTaskRequest.md) |  | 

### Return type

[**A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

