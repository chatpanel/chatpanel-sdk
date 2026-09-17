# ProjectsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projectsAppendEvents**](ProjectsAPI.md#projectsappendevents) | **POST** /v1/projects/{projectId}/events | The executive loop appends (status, run.linked, run.spent, decision, report).
[**projectsApplications**](ProjectsAPI.md#projectsapplications) | **GET** /v1/projects/{projectId}/jobs/{jobId}/applications | The pool applies at once; &#x60;prompt&#x60; is the evaluator&#39;s, for a structured call.
[**projectsCreate**](ProjectsAPI.md#projectscreate) | **POST** /v1/projects | Open a record (idempotent) or update the page.
[**projectsDelete**](ProjectsAPI.md#projectsdelete) | **DELETE** /v1/projects/{projectId} | Remove a project record.
[**projectsEvents**](ProjectsAPI.md#projectsevents) | **GET** /v1/projects/{projectId}/events | Tail a project — hello, replay, then live.
[**projectsGet**](ProjectsAPI.md#projectsget) | **GET** /v1/projects/{projectId} | The record — jobs, runs, spend, decisions, report.
[**projectsJobBoard**](ProjectsAPI.md#projectsjobboard) | **GET** /v1/projects/jobs | Every open posting across projects.
[**projectsList**](ProjectsAPI.md#projectslist) | **GET** /v1/projects | Projects, newest activity first, jobs counted.
[**projectsPatchJob**](ProjectsAPI.md#projectspatchjob) | **POST** /v1/projects/{projectId}/jobs/{jobId} | Move a job along its state machine.
[**projectsPostJob**](ProjectsAPI.md#projectspostjob) | **POST** /v1/projects/{projectId}/jobs | Post a job.
[**projectsRecruit**](ProjectsAPI.md#projectsrecruit) | **POST** /v1/projects/{projectId}/jobs/{jobId}/recruit | One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.


# **projectsAppendEvents**
```swift
    open class func projectsAppendEvents(projectId: String, teamsAppendRunEventsRequest: TeamsAppendRunEventsRequest, completion: @escaping (_ data: InlineObject1?, _ error: Error?) -> Void)
```

The executive loop appends (status, run.linked, run.spent, decision, report).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let projectId = "projectId_example" // String | 
let teamsAppendRunEventsRequest = teams_appendRunEvents_request(events: [RunEvent(seq: 123, type: "type_example", at: 123, payload: "TODO")]) // TeamsAppendRunEventsRequest | 

// The executive loop appends (status, run.linked, run.spent, decision, report).
ProjectsAPI.projectsAppendEvents(projectId: projectId, teamsAppendRunEventsRequest: teamsAppendRunEventsRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md) |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsApplications**
```swift
    open class func projectsApplications(projectId: String, jobId: String, reach: String? = nil, chatModel: String? = nil, completion: @escaping (_ data: [String: JSONValue]?, _ error: Error?) -> Void)
```

The pool applies at once; `prompt` is the evaluator's, for a structured call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let projectId = "projectId_example" // String | 
let jobId = "jobId_example" // String | 
let reach = "reach_example" // String |  (optional) (default to "any")
let chatModel = "chatModel_example" // String |  (optional)

// The pool applies at once; `prompt` is the evaluator's, for a structured call.
ProjectsAPI.projectsApplications(projectId: projectId, jobId: jobId, reach: reach, chatModel: chatModel) { (response, error) in
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
 **projectId** | **String** |  | 
 **jobId** | **String** |  | 
 **reach** | **String** |  | [optional] [default to &quot;any&quot;]
 **chatModel** | **String** |  | [optional] 

### Return type

**[String: JSONValue]**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsCreate**
```swift
    open class func projectsCreate(projectsCreateRequest: ProjectsCreateRequest, completion: @escaping (_ data: InlineObject1?, _ error: Error?) -> Void)
```

Open a record (idempotent) or update the page.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let projectsCreateRequest = projects_create_request(id: "id_example", project: "TODO", by: "by_example") // ProjectsCreateRequest | 

// Open a record (idempotent) or update the page.
ProjectsAPI.projectsCreate(projectsCreateRequest: projectsCreateRequest) { (response, error) in
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
 **projectsCreateRequest** | [**ProjectsCreateRequest**](ProjectsCreateRequest.md) |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsDelete**
```swift
    open class func projectsDelete(projectId: String, completion: @escaping (_ data: PrefsDelete200Response?, _ error: Error?) -> Void)
```

Remove a project record.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let projectId = "projectId_example" // String | 

// Remove a project record.
ProjectsAPI.projectsDelete(projectId: projectId) { (response, error) in
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
 **projectId** | **String** |  | 

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsEvents**
```swift
    open class func projectsEvents(projectId: String, after: Int? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Tail a project — hello, replay, then live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let projectId = "projectId_example" // String | 
let after = 987 // Int |  (optional)

// Tail a project — hello, replay, then live.
ProjectsAPI.projectsEvents(projectId: projectId, after: after) { (response, error) in
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
 **projectId** | **String** |  | 
 **after** | **Int** |  | [optional] 

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsGet**
```swift
    open class func projectsGet(projectId: String, events: Bool? = nil, completion: @escaping (_ data: InlineObject1?, _ error: Error?) -> Void)
```

The record — jobs, runs, spend, decisions, report.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let projectId = "projectId_example" // String | 
let events = true // Bool |  (optional)

// The record — jobs, runs, spend, decisions, report.
ProjectsAPI.projectsGet(projectId: projectId, events: events) { (response, error) in
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
 **projectId** | **String** |  | 
 **events** | **Bool** |  | [optional] 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsJobBoard**
```swift
    open class func projectsJobBoard(completion: @escaping (_ data: ProjectsJobBoard200Response?, _ error: Error?) -> Void)
```

Every open posting across projects.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// Every open posting across projects.
ProjectsAPI.projectsJobBoard() { (response, error) in
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

[**ProjectsJobBoard200Response**](ProjectsJobBoard200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsList**
```swift
    open class func projectsList(limit: Int? = nil, status: String? = nil, completion: @escaping (_ data: ProjectsList200Response?, _ error: Error?) -> Void)
```

Projects, newest activity first, jobs counted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let limit = 987 // Int |  (optional) (default to 50)
let status = "status_example" // String |  (optional)

// Projects, newest activity first, jobs counted.
ProjectsAPI.projectsList(limit: limit, status: status) { (response, error) in
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
 **status** | **String** |  | [optional] 

### Return type

[**ProjectsList200Response**](ProjectsList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsPatchJob**
```swift
    open class func projectsPatchJob(projectId: String, jobId: String, projectsPatchJobRequest: ProjectsPatchJobRequest, completion: @escaping (_ data: InlineObject1?, _ error: Error?) -> Void)
```

Move a job along its state machine.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let projectId = "projectId_example" // String | 
let jobId = "jobId_example" // String | 
let projectsPatchJobRequest = projects_patchJob_request(patch: "TODO", by: "by_example") // ProjectsPatchJobRequest | 

// Move a job along its state machine.
ProjectsAPI.projectsPatchJob(projectId: projectId, jobId: jobId, projectsPatchJobRequest: projectsPatchJobRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **jobId** | **String** |  | 
 **projectsPatchJobRequest** | [**ProjectsPatchJobRequest**](ProjectsPatchJobRequest.md) |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsPostJob**
```swift
    open class func projectsPostJob(projectId: String, projectsPostJobRequest: ProjectsPostJobRequest, completion: @escaping (_ data: InlineObject1?, _ error: Error?) -> Void)
```

Post a job.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let projectId = "projectId_example" // String | 
let projectsPostJobRequest = projects_postJob_request(job: "TODO", by: "by_example") // ProjectsPostJobRequest | 

// Post a job.
ProjectsAPI.projectsPostJob(projectId: projectId, projectsPostJobRequest: projectsPostJobRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **projectsPostJobRequest** | [**ProjectsPostJobRequest**](ProjectsPostJobRequest.md) |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsRecruit**
```swift
    open class func projectsRecruit(projectId: String, jobId: String, projectsRecruitRequest: ProjectsRecruitRequest, completion: @escaping (_ data: [String: JSONValue]?, _ error: Error?) -> Void)
```

One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let projectId = "projectId_example" // String | 
let jobId = "jobId_example" // String | 
let projectsRecruitRequest = projects_recruit_request(by: "by_example", reach: "reach_example", chatModel: "chatModel_example", evaluation: "TODO", text: "text_example") // ProjectsRecruitRequest | 

// One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.
ProjectsAPI.projectsRecruit(projectId: projectId, jobId: jobId, projectsRecruitRequest: projectsRecruitRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **jobId** | **String** |  | 
 **projectsRecruitRequest** | [**ProjectsRecruitRequest**](ProjectsRecruitRequest.md) |  | 

### Return type

**[String: JSONValue]**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

