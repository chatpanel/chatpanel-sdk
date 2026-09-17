# \ProjectsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ProjectsAppendEvents**](ProjectsAPI.md#ProjectsAppendEvents) | **Post** /v1/projects/{projectId}/events | The executive loop appends (status, run.linked, run.spent, decision, report).
[**ProjectsApplications**](ProjectsAPI.md#ProjectsApplications) | **Get** /v1/projects/{projectId}/jobs/{jobId}/applications | The pool applies at once; &#x60;prompt&#x60; is the evaluator&#39;s, for a structured call.
[**ProjectsCreate**](ProjectsAPI.md#ProjectsCreate) | **Post** /v1/projects | Open a record (idempotent) or update the page.
[**ProjectsDelete**](ProjectsAPI.md#ProjectsDelete) | **Delete** /v1/projects/{projectId} | Remove a project record.
[**ProjectsEvents**](ProjectsAPI.md#ProjectsEvents) | **Get** /v1/projects/{projectId}/events | Tail a project — hello, replay, then live.
[**ProjectsGet**](ProjectsAPI.md#ProjectsGet) | **Get** /v1/projects/{projectId} | The record — jobs, runs, spend, decisions, report.
[**ProjectsJobBoard**](ProjectsAPI.md#ProjectsJobBoard) | **Get** /v1/projects/jobs | Every open posting across projects.
[**ProjectsList**](ProjectsAPI.md#ProjectsList) | **Get** /v1/projects | Projects, newest activity first, jobs counted.
[**ProjectsPatchJob**](ProjectsAPI.md#ProjectsPatchJob) | **Post** /v1/projects/{projectId}/jobs/{jobId} | Move a job along its state machine.
[**ProjectsPostJob**](ProjectsAPI.md#ProjectsPostJob) | **Post** /v1/projects/{projectId}/jobs | Post a job.
[**ProjectsRecruit**](ProjectsAPI.md#ProjectsRecruit) | **Post** /v1/projects/{projectId}/jobs/{jobId}/recruit | One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.



## ProjectsAppendEvents

> InlineObject1 ProjectsAppendEvents(ctx, projectId).TeamsAppendRunEventsRequest(teamsAppendRunEventsRequest).Execute()

The executive loop appends (status, run.linked, run.spent, decision, report).

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
	projectId := "projectId_example" // string | 
	teamsAppendRunEventsRequest := *openapiclient.NewTeamsAppendRunEventsRequest([]openapiclient.RunEvent{*openapiclient.NewRunEvent("Type_example")}) // TeamsAppendRunEventsRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProjectsAPI.ProjectsAppendEvents(context.Background(), projectId).TeamsAppendRunEventsRequest(teamsAppendRunEventsRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProjectsAPI.ProjectsAppendEvents``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProjectsAppendEvents`: InlineObject1
	fmt.Fprintf(os.Stdout, "Response from `ProjectsAPI.ProjectsAppendEvents`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiProjectsAppendEventsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md) |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProjectsApplications

> map[string]interface{} ProjectsApplications(ctx, projectId, jobId).Reach(reach).ChatModel(chatModel).Execute()

The pool applies at once; `prompt` is the evaluator's, for a structured call.

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
	projectId := "projectId_example" // string | 
	jobId := "jobId_example" // string | 
	reach := "reach_example" // string |  (optional) (default to "any")
	chatModel := "chatModel_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProjectsAPI.ProjectsApplications(context.Background(), projectId, jobId).Reach(reach).ChatModel(chatModel).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProjectsAPI.ProjectsApplications``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProjectsApplications`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `ProjectsAPI.ProjectsApplications`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectId** | **string** |  | 
**jobId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiProjectsApplicationsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **reach** | **string** |  | [default to &quot;any&quot;]
 **chatModel** | **string** |  | 

### Return type

**map[string]interface{}**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProjectsCreate

> InlineObject1 ProjectsCreate(ctx).ProjectsCreateRequest(projectsCreateRequest).Execute()

Open a record (idempotent) or update the page.

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
	projectsCreateRequest := *openapiclient.NewProjectsCreateRequest() // ProjectsCreateRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProjectsAPI.ProjectsCreate(context.Background()).ProjectsCreateRequest(projectsCreateRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProjectsAPI.ProjectsCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProjectsCreate`: InlineObject1
	fmt.Fprintf(os.Stdout, "Response from `ProjectsAPI.ProjectsCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiProjectsCreateRequest struct via the builder pattern


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProjectsDelete

> PrefsDelete200Response ProjectsDelete(ctx, projectId).Execute()

Remove a project record.

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
	projectId := "projectId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProjectsAPI.ProjectsDelete(context.Background(), projectId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProjectsAPI.ProjectsDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProjectsDelete`: PrefsDelete200Response
	fmt.Fprintf(os.Stdout, "Response from `ProjectsAPI.ProjectsDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiProjectsDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


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


## ProjectsEvents

> string ProjectsEvents(ctx, projectId).After(after).Execute()

Tail a project — hello, replay, then live.

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
	projectId := "projectId_example" // string | 
	after := int32(56) // int32 |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProjectsAPI.ProjectsEvents(context.Background(), projectId).After(after).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProjectsAPI.ProjectsEvents``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProjectsEvents`: string
	fmt.Fprintf(os.Stdout, "Response from `ProjectsAPI.ProjectsEvents`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiProjectsEventsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **after** | **int32** |  | 

### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProjectsGet

> InlineObject1 ProjectsGet(ctx, projectId).Events(events).Execute()

The record — jobs, runs, spend, decisions, report.

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
	projectId := "projectId_example" // string | 
	events := true // bool |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProjectsAPI.ProjectsGet(context.Background(), projectId).Events(events).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProjectsAPI.ProjectsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProjectsGet`: InlineObject1
	fmt.Fprintf(os.Stdout, "Response from `ProjectsAPI.ProjectsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiProjectsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **events** | **bool** |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProjectsJobBoard

> ProjectsJobBoard200Response ProjectsJobBoard(ctx).Execute()

Every open posting across projects.

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
	resp, r, err := apiClient.ProjectsAPI.ProjectsJobBoard(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProjectsAPI.ProjectsJobBoard``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProjectsJobBoard`: ProjectsJobBoard200Response
	fmt.Fprintf(os.Stdout, "Response from `ProjectsAPI.ProjectsJobBoard`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiProjectsJobBoardRequest struct via the builder pattern


### Return type

[**ProjectsJobBoard200Response**](ProjectsJobBoard200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProjectsList

> ProjectsList200Response ProjectsList(ctx).Limit(limit).Status(status).Execute()

Projects, newest activity first, jobs counted.

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
	limit := int32(56) // int32 |  (optional) (default to 50)
	status := "status_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProjectsAPI.ProjectsList(context.Background()).Limit(limit).Status(status).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProjectsAPI.ProjectsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProjectsList`: ProjectsList200Response
	fmt.Fprintf(os.Stdout, "Response from `ProjectsAPI.ProjectsList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiProjectsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int32** |  | [default to 50]
 **status** | **string** |  | 

### Return type

[**ProjectsList200Response**](ProjectsList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProjectsPatchJob

> InlineObject1 ProjectsPatchJob(ctx, projectId, jobId).ProjectsPatchJobRequest(projectsPatchJobRequest).Execute()

Move a job along its state machine.

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
	projectId := "projectId_example" // string | 
	jobId := "jobId_example" // string | 
	projectsPatchJobRequest := *openapiclient.NewProjectsPatchJobRequest(map[string]interface{}{"key": interface{}(123)}) // ProjectsPatchJobRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProjectsAPI.ProjectsPatchJob(context.Background(), projectId, jobId).ProjectsPatchJobRequest(projectsPatchJobRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProjectsAPI.ProjectsPatchJob``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProjectsPatchJob`: InlineObject1
	fmt.Fprintf(os.Stdout, "Response from `ProjectsAPI.ProjectsPatchJob`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectId** | **string** |  | 
**jobId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiProjectsPatchJobRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **projectsPatchJobRequest** | [**ProjectsPatchJobRequest**](ProjectsPatchJobRequest.md) |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProjectsPostJob

> InlineObject1 ProjectsPostJob(ctx, projectId).ProjectsPostJobRequest(projectsPostJobRequest).Execute()

Post a job.

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
	projectId := "projectId_example" // string | 
	projectsPostJobRequest := *openapiclient.NewProjectsPostJobRequest(map[string]interface{}{"key": interface{}(123)}) // ProjectsPostJobRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProjectsAPI.ProjectsPostJob(context.Background(), projectId).ProjectsPostJobRequest(projectsPostJobRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProjectsAPI.ProjectsPostJob``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProjectsPostJob`: InlineObject1
	fmt.Fprintf(os.Stdout, "Response from `ProjectsAPI.ProjectsPostJob`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiProjectsPostJobRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **projectsPostJobRequest** | [**ProjectsPostJobRequest**](ProjectsPostJobRequest.md) |  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ProjectsRecruit

> map[string]interface{} ProjectsRecruit(ctx, projectId, jobId).ProjectsRecruitRequest(projectsRecruitRequest).Execute()

One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.

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
	projectId := "projectId_example" // string | 
	jobId := "jobId_example" // string | 
	projectsRecruitRequest := *openapiclient.NewProjectsRecruitRequest() // ProjectsRecruitRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ProjectsAPI.ProjectsRecruit(context.Background(), projectId, jobId).ProjectsRecruitRequest(projectsRecruitRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ProjectsAPI.ProjectsRecruit``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ProjectsRecruit`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `ProjectsAPI.ProjectsRecruit`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**projectId** | **string** |  | 
**jobId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiProjectsRecruitRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **projectsRecruitRequest** | [**ProjectsRecruitRequest**](ProjectsRecruitRequest.md) |  | 

### Return type

**map[string]interface{}**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

