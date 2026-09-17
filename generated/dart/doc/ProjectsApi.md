# chatpanel.api.ProjectsApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projectsAppendEvents**](ProjectsApi.md#projectsappendevents) | **POST** /v1/projects/{projectId}/events | The executive loop appends (status, run.linked, run.spent, decision, report).
[**projectsApplications**](ProjectsApi.md#projectsapplications) | **GET** /v1/projects/{projectId}/jobs/{jobId}/applications | The pool applies at once; &#x60;prompt&#x60; is the evaluator&#39;s, for a structured call.
[**projectsCreate**](ProjectsApi.md#projectscreate) | **POST** /v1/projects | Open a record (idempotent) or update the page.
[**projectsDelete**](ProjectsApi.md#projectsdelete) | **DELETE** /v1/projects/{projectId} | Remove a project record.
[**projectsEvents**](ProjectsApi.md#projectsevents) | **GET** /v1/projects/{projectId}/events | Tail a project — hello, replay, then live.
[**projectsGet**](ProjectsApi.md#projectsget) | **GET** /v1/projects/{projectId} | The record — jobs, runs, spend, decisions, report.
[**projectsJobBoard**](ProjectsApi.md#projectsjobboard) | **GET** /v1/projects/jobs | Every open posting across projects.
[**projectsList**](ProjectsApi.md#projectslist) | **GET** /v1/projects | Projects, newest activity first, jobs counted.
[**projectsPatchJob**](ProjectsApi.md#projectspatchjob) | **POST** /v1/projects/{projectId}/jobs/{jobId} | Move a job along its state machine.
[**projectsPostJob**](ProjectsApi.md#projectspostjob) | **POST** /v1/projects/{projectId}/jobs | Post a job.
[**projectsRecruit**](ProjectsApi.md#projectsrecruit) | **POST** /v1/projects/{projectId}/jobs/{jobId}/recruit | One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.


# **projectsAppendEvents**
> InlineObject1 projectsAppendEvents(projectId, teamsAppendRunEventsRequest)

The executive loop appends (status, run.linked, run.spent, decision, report).

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getProjectsApi();
final String projectId = projectId_example; // String | 
final TeamsAppendRunEventsRequest teamsAppendRunEventsRequest = ; // TeamsAppendRunEventsRequest | 

try {
    final response = api.projectsAppendEvents(projectId, teamsAppendRunEventsRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProjectsApi->projectsAppendEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsApplications**
> BuiltMap<String, JsonObject> projectsApplications(projectId, jobId, reach, chatModel)

The pool applies at once; `prompt` is the evaluator's, for a structured call.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getProjectsApi();
final String projectId = projectId_example; // String | 
final String jobId = jobId_example; // String | 
final String reach = reach_example; // String | 
final String chatModel = chatModel_example; // String | 

try {
    final response = api.projectsApplications(projectId, jobId, reach, chatModel);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProjectsApi->projectsApplications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **jobId** | **String**|  | 
 **reach** | **String**|  | [optional] [default to 'any']
 **chatModel** | **String**|  | [optional] 

### Return type

[**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsCreate**
> InlineObject1 projectsCreate(projectsCreateRequest)

Open a record (idempotent) or update the page.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getProjectsApi();
final ProjectsCreateRequest projectsCreateRequest = ; // ProjectsCreateRequest | 

try {
    final response = api.projectsCreate(projectsCreateRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProjectsApi->projectsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectsCreateRequest** | [**ProjectsCreateRequest**](ProjectsCreateRequest.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsDelete**
> PrefsDelete200Response projectsDelete(projectId)

Remove a project record.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getProjectsApi();
final String projectId = projectId_example; // String | 

try {
    final response = api.projectsDelete(projectId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProjectsApi->projectsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsEvents**
> String projectsEvents(projectId, after)

Tail a project — hello, replay, then live.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getProjectsApi();
final String projectId = projectId_example; // String | 
final int after = 56; // int | 

try {
    final response = api.projectsEvents(projectId, after);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProjectsApi->projectsEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **after** | **int**|  | [optional] 

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsGet**
> InlineObject1 projectsGet(projectId, events)

The record — jobs, runs, spend, decisions, report.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getProjectsApi();
final String projectId = projectId_example; // String | 
final bool events = true; // bool | 

try {
    final response = api.projectsGet(projectId, events);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProjectsApi->projectsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **events** | **bool**|  | [optional] 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsJobBoard**
> ProjectsJobBoard200Response projectsJobBoard()

Every open posting across projects.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getProjectsApi();

try {
    final response = api.projectsJobBoard();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProjectsApi->projectsJobBoard: $e\n');
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
> ProjectsList200Response projectsList(limit, status)

Projects, newest activity first, jobs counted.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getProjectsApi();
final int limit = 56; // int | 
final String status = status_example; // String | 

try {
    final response = api.projectsList(limit, status);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProjectsApi->projectsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 50]
 **status** | **String**|  | [optional] 

### Return type

[**ProjectsList200Response**](ProjectsList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsPatchJob**
> InlineObject1 projectsPatchJob(projectId, jobId, projectsPatchJobRequest)

Move a job along its state machine.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getProjectsApi();
final String projectId = projectId_example; // String | 
final String jobId = jobId_example; // String | 
final ProjectsPatchJobRequest projectsPatchJobRequest = ; // ProjectsPatchJobRequest | 

try {
    final response = api.projectsPatchJob(projectId, jobId, projectsPatchJobRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProjectsApi->projectsPatchJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **jobId** | **String**|  | 
 **projectsPatchJobRequest** | [**ProjectsPatchJobRequest**](ProjectsPatchJobRequest.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsPostJob**
> InlineObject1 projectsPostJob(projectId, projectsPostJobRequest)

Post a job.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getProjectsApi();
final String projectId = projectId_example; // String | 
final ProjectsPostJobRequest projectsPostJobRequest = ; // ProjectsPostJobRequest | 

try {
    final response = api.projectsPostJob(projectId, projectsPostJobRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProjectsApi->projectsPostJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **projectsPostJobRequest** | [**ProjectsPostJobRequest**](ProjectsPostJobRequest.md)|  | 

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsRecruit**
> BuiltMap<String, JsonObject> projectsRecruit(projectId, jobId, projectsRecruitRequest)

One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getProjectsApi();
final String projectId = projectId_example; // String | 
final String jobId = jobId_example; // String | 
final ProjectsRecruitRequest projectsRecruitRequest = ; // ProjectsRecruitRequest | 

try {
    final response = api.projectsRecruit(projectId, jobId, projectsRecruitRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProjectsApi->projectsRecruit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **jobId** | **String**|  | 
 **projectsRecruitRequest** | [**ProjectsRecruitRequest**](ProjectsRecruitRequest.md)|  | 

### Return type

[**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

