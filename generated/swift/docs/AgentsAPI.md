# AgentsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agentsRate**](AgentsAPI.md#agentsrate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job.
[**agentsScorecard**](AgentsAPI.md#agentsscorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard.
[**agentsScorecards**](AgentsAPI.md#agentsscorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard.


# **agentsRate**
```swift
    open class func agentsRate(agentId: String, agentsRateRequest: AgentsRateRequest, completion: @escaping (_ data: [String: JSONValue]?, _ error: Error?) -> Void)
```

A person rates the agent's work on a run, task or job.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let agentId = "agentId_example" // String | 
let agentsRateRequest = agents_rate_request(score: 123, note: "note_example", about: "about_example", by: "by_example", runId: "runId_example", taskId: "taskId_example", jobId: "jobId_example", refs: "TODO") // AgentsRateRequest | 

// A person rates the agent's work on a run, task or job.
AgentsAPI.agentsRate(agentId: agentId, agentsRateRequest: agentsRateRequest) { (response, error) in
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
 **agentId** | **String** |  | 
 **agentsRateRequest** | [**AgentsRateRequest**](AgentsRateRequest.md) |  | 

### Return type

**[String: JSONValue]**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsScorecard**
```swift
    open class func agentsScorecard(agentId: String, completion: @escaping (_ data: [String: JSONValue]?, _ error: Error?) -> Void)
```

One agent's attested scorecard.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let agentId = "agentId_example" // String | 

// One agent's attested scorecard.
AgentsAPI.agentsScorecard(agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

**[String: JSONValue]**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsScorecards**
```swift
    open class func agentsScorecards(completion: @escaping (_ data: AgentsScorecards200Response?, _ error: Error?) -> Void)
```

Every agent's scorecard.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// Every agent's scorecard.
AgentsAPI.agentsScorecards() { (response, error) in
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

[**AgentsScorecards200Response**](AgentsScorecards200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

