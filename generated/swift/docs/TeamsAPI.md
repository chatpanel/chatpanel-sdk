# TeamsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**teamsAnswer**](TeamsAPI.md#teamsanswer) | **POST** /v1/teams/runs/{runId}/answer | A person answers an ask on the board.
[**teamsAppendRunEvents**](TeamsAPI.md#teamsappendrunevents) | **POST** /v1/teams/runs/{runId}/events | The running client appends events.
[**teamsCheckpoint**](TeamsAPI.md#teamscheckpoint) | **GET** /v1/teams/runs/{runId}/checkpoint | What a client needs to resume a run whose client went away.
[**teamsClaim**](TeamsAPI.md#teamsclaim) | **POST** /v1/teams/runs/{runId}/claim | A client takes a stopped or stale run over.
[**teamsCreateRun**](TeamsAPI.md#teamscreaterun) | **POST** /v1/teams/runs | Open a run record.
[**teamsDecide**](TeamsAPI.md#teamsdecide) | **POST** /v1/teams/runs/{runId}/decide | Approve or reject a post.
[**teamsDeleteRun**](TeamsAPI.md#teamsdeleterun) | **DELETE** /v1/teams/runs/{runId} | Remove a run; a live one is stopped first.
[**teamsGetRun**](TeamsAPI.md#teamsgetrun) | **GET** /v1/teams/runs/{runId} | One run, optionally with its events.
[**teamsHandoff**](TeamsAPI.md#teamshandoff) | **POST** /v1/teams/runs/{runId}/handoff | Continue a task on another model.
[**teamsListRuns**](TeamsAPI.md#teamslistruns) | **GET** /v1/teams/runs | The board — recent runs, newest first.
[**teamsPost**](TeamsAPI.md#teamspost) | **POST** /v1/teams/runs/{runId}/post | Post a note to a thread.
[**teamsRemoveThread**](TeamsAPI.md#teamsremovethread) | **DELETE** /v1/teams/runs/{runId}/threads/{threadId} | A person removes a thread from the board.
[**teamsRunEvents**](TeamsAPI.md#teamsrunevents) | **GET** /v1/teams/runs/{runId}/events | Tail a run — the record first, replay from &#x60;after&#x60;, then live.
[**teamsStopRun**](TeamsAPI.md#teamsstoprun) | **POST** /v1/teams/runs/{runId}/stop | Ask the running client to stop.


# **teamsAnswer**
```swift
    open class func teamsAnswer(runId: String, teamsAnswerRequest: TeamsAnswerRequest, completion: @escaping (_ data: InlineObject?, _ error: Error?) -> Void)
```

A person answers an ask on the board.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 
let teamsAnswerRequest = teams_answer_request(threadId: "threadId_example", text: "text_example", by: "by_example") // TeamsAnswerRequest | 

// A person answers an ask on the board.
TeamsAPI.teamsAnswer(runId: runId, teamsAnswerRequest: teamsAnswerRequest) { (response, error) in
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
 **runId** | **String** |  | 
 **teamsAnswerRequest** | [**TeamsAnswerRequest**](TeamsAnswerRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsAppendRunEvents**
```swift
    open class func teamsAppendRunEvents(runId: String, teamsAppendRunEventsRequest: TeamsAppendRunEventsRequest, completion: @escaping (_ data: InlineObject?, _ error: Error?) -> Void)
```

The running client appends events.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 
let teamsAppendRunEventsRequest = teams_appendRunEvents_request(events: [RunEvent(seq: 123, type: "type_example", at: 123, payload: "TODO")]) // TeamsAppendRunEventsRequest | 

// The running client appends events.
TeamsAPI.teamsAppendRunEvents(runId: runId, teamsAppendRunEventsRequest: teamsAppendRunEventsRequest) { (response, error) in
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
 **runId** | **String** |  | 
 **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCheckpoint**
```swift
    open class func teamsCheckpoint(runId: String, completion: @escaping (_ data: TeamsCheckpoint200Response?, _ error: Error?) -> Void)
```

What a client needs to resume a run whose client went away.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 

// What a client needs to resume a run whose client went away.
TeamsAPI.teamsCheckpoint(runId: runId) { (response, error) in
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
 **runId** | **String** |  | 

### Return type

[**TeamsCheckpoint200Response**](TeamsCheckpoint200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsClaim**
```swift
    open class func teamsClaim(runId: String, teamsClaimRequest: TeamsClaimRequest, completion: @escaping (_ data: InlineObject?, _ error: Error?) -> Void)
```

A client takes a stopped or stale run over.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 
let teamsClaimRequest = teams_claim_request(client: "client_example") // TeamsClaimRequest | 

// A client takes a stopped or stale run over.
TeamsAPI.teamsClaim(runId: runId, teamsClaimRequest: teamsClaimRequest) { (response, error) in
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
 **runId** | **String** |  | 
 **teamsClaimRequest** | [**TeamsClaimRequest**](TeamsClaimRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCreateRun**
```swift
    open class func teamsCreateRun(teamRunCreate: TeamRunCreate, completion: @escaping (_ data: InlineObject?, _ error: Error?) -> Void)
```

Open a run record.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let teamRunCreate = TeamRunCreate(id: "id_example", client: "client_example", team: "TODO", request: "TODO") // TeamRunCreate | 

// Open a run record.
TeamsAPI.teamsCreateRun(teamRunCreate: teamRunCreate) { (response, error) in
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
 **teamRunCreate** | [**TeamRunCreate**](TeamRunCreate.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsDecide**
```swift
    open class func teamsDecide(runId: String, teamsDecideRequest: TeamsDecideRequest, completion: @escaping (_ data: InlineObject?, _ error: Error?) -> Void)
```

Approve or reject a post.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 
let teamsDecideRequest = teams_decide_request(postId: "postId_example", status: "status_example", by: "by_example") // TeamsDecideRequest | 

// Approve or reject a post.
TeamsAPI.teamsDecide(runId: runId, teamsDecideRequest: teamsDecideRequest) { (response, error) in
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
 **runId** | **String** |  | 
 **teamsDecideRequest** | [**TeamsDecideRequest**](TeamsDecideRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsDeleteRun**
```swift
    open class func teamsDeleteRun(runId: String, completion: @escaping (_ data: PrefsDelete200Response?, _ error: Error?) -> Void)
```

Remove a run; a live one is stopped first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 

// Remove a run; a live one is stopped first.
TeamsAPI.teamsDeleteRun(runId: runId) { (response, error) in
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
 **runId** | **String** |  | 

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsGetRun**
```swift
    open class func teamsGetRun(runId: String, events: Bool? = nil, completion: @escaping (_ data: InlineObject?, _ error: Error?) -> Void)
```

One run, optionally with its events.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 
let events = true // Bool |  (optional)

// One run, optionally with its events.
TeamsAPI.teamsGetRun(runId: runId, events: events) { (response, error) in
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
 **runId** | **String** |  | 
 **events** | **Bool** |  | [optional] 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsHandoff**
```swift
    open class func teamsHandoff(runId: String, teamsHandoffRequest: TeamsHandoffRequest, completion: @escaping (_ data: InlineObject?, _ error: Error?) -> Void)
```

Continue a task on another model.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 
let teamsHandoffRequest = teams_handoff_request(taskId: "taskId_example", model: "model_example", by: "by_example", reason: "reason_example") // TeamsHandoffRequest | 

// Continue a task on another model.
TeamsAPI.teamsHandoff(runId: runId, teamsHandoffRequest: teamsHandoffRequest) { (response, error) in
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
 **runId** | **String** |  | 
 **teamsHandoffRequest** | [**TeamsHandoffRequest**](TeamsHandoffRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListRuns**
```swift
    open class func teamsListRuns(limit: Int? = nil, team: String? = nil, completion: @escaping (_ data: TeamsListRuns200Response?, _ error: Error?) -> Void)
```

The board — recent runs, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let limit = 987 // Int |  (optional) (default to 50)
let team = "team_example" // String |  (optional)

// The board — recent runs, newest first.
TeamsAPI.teamsListRuns(limit: limit, team: team) { (response, error) in
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
 **limit** | **Int** |  | [optional] [default to 50]
 **team** | **String** |  | [optional] 

### Return type

[**TeamsListRuns200Response**](TeamsListRuns200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsPost**
```swift
    open class func teamsPost(runId: String, teamsPostRequest: TeamsPostRequest, completion: @escaping (_ data: InlineObject?, _ error: Error?) -> Void)
```

Post a note to a thread.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 
let teamsPostRequest = teams_post_request(threadId: "threadId_example", text: "text_example", kind: "kind_example", replyTo: "replyTo_example", by: "by_example") // TeamsPostRequest | 

// Post a note to a thread.
TeamsAPI.teamsPost(runId: runId, teamsPostRequest: teamsPostRequest) { (response, error) in
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
 **runId** | **String** |  | 
 **teamsPostRequest** | [**TeamsPostRequest**](TeamsPostRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsRemoveThread**
```swift
    open class func teamsRemoveThread(runId: String, threadId: String, completion: @escaping (_ data: InlineObject?, _ error: Error?) -> Void)
```

A person removes a thread from the board.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 
let threadId = "threadId_example" // String | 

// A person removes a thread from the board.
TeamsAPI.teamsRemoveThread(runId: runId, threadId: threadId) { (response, error) in
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
 **runId** | **String** |  | 
 **threadId** | **String** |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsRunEvents**
```swift
    open class func teamsRunEvents(runId: String, after: Int? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Tail a run — the record first, replay from `after`, then live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 
let after = 987 // Int | Replay events with seq greater than this; absent means from the start. (optional)

// Tail a run — the record first, replay from `after`, then live.
TeamsAPI.teamsRunEvents(runId: runId, after: after) { (response, error) in
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
 **runId** | **String** |  | 
 **after** | **Int** | Replay events with seq greater than this; absent means from the start. | [optional] 

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsStopRun**
```swift
    open class func teamsStopRun(runId: String, completion: @escaping (_ data: InlineObject?, _ error: Error?) -> Void)
```

Ask the running client to stop.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let runId = "runId_example" // String | 

// Ask the running client to stop.
TeamsAPI.teamsStopRun(runId: runId) { (response, error) in
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
 **runId** | **String** |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

