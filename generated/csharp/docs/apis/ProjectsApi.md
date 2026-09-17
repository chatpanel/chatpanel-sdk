# ChatPanel.Sdk.Api.ProjectsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ProjectsAppendEvents**](ProjectsApi.md#projectsappendevents) | **POST** /v1/projects/{projectId}/events | The executive loop appends (status, run.linked, run.spent, decision, report). |
| [**ProjectsApplications**](ProjectsApi.md#projectsapplications) | **GET** /v1/projects/{projectId}/jobs/{jobId}/applications | The pool applies at once; &#x60;prompt&#x60; is the evaluator&#39;s, for a structured call. |
| [**ProjectsCreate**](ProjectsApi.md#projectscreate) | **POST** /v1/projects | Open a record (idempotent) or update the page. |
| [**ProjectsDelete**](ProjectsApi.md#projectsdelete) | **DELETE** /v1/projects/{projectId} | Remove a project record. |
| [**ProjectsEvents**](ProjectsApi.md#projectsevents) | **GET** /v1/projects/{projectId}/events | Tail a project — hello, replay, then live. |
| [**ProjectsGet**](ProjectsApi.md#projectsget) | **GET** /v1/projects/{projectId} | The record — jobs, runs, spend, decisions, report. |
| [**ProjectsJobBoard**](ProjectsApi.md#projectsjobboard) | **GET** /v1/projects/jobs | Every open posting across projects. |
| [**ProjectsList**](ProjectsApi.md#projectslist) | **GET** /v1/projects | Projects, newest activity first, jobs counted. |
| [**ProjectsPatchJob**](ProjectsApi.md#projectspatchjob) | **POST** /v1/projects/{projectId}/jobs/{jobId} | Move a job along its state machine. |
| [**ProjectsPostJob**](ProjectsApi.md#projectspostjob) | **POST** /v1/projects/{projectId}/jobs | Post a job. |
| [**ProjectsRecruit**](ProjectsApi.md#projectsrecruit) | **POST** /v1/projects/{projectId}/jobs/{jobId}/recruit | One pass — fit recomputed, the evaluation read through the schema, the pick landed as events. |

<a id="projectsappendevents"></a>
# **ProjectsAppendEvents**
> InlineObject1 ProjectsAppendEvents (string projectId, TeamsAppendRunEventsRequest teamsAppendRunEventsRequest)

The executive loop appends (status, run.linked, run.spent, decision, report).


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **projectId** | **string** |  |  |
| **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md) |  |  |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The project as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="projectsapplications"></a>
# **ProjectsApplications**
> Dictionary&lt;string, Object&gt; ProjectsApplications (string projectId, string jobId, string reach = null, string chatModel = null)

The pool applies at once; `prompt` is the evaluator's, for a structured call.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **projectId** | **string** |  |  |
| **jobId** | **string** |  |  |
| **reach** | **string** |  | [optional] [default to &quot;any&quot;] |
| **chatModel** | **string** |  | [optional]  |

### Return type

**Dictionary<string, Object>**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Applications. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="projectscreate"></a>
# **ProjectsCreate**
> InlineObject1 ProjectsCreate (ProjectsCreateRequest projectsCreateRequest)

Open a record (idempotent) or update the page.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **projectsCreateRequest** | [**ProjectsCreateRequest**](ProjectsCreateRequest.md) |  |  |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The project as it now stands. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="projectsdelete"></a>
# **ProjectsDelete**
> PrefsDelete200Response ProjectsDelete (string projectId)

Remove a project record.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **projectId** | **string** |  |  |

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Whether the record existed. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="projectsevents"></a>
# **ProjectsEvents**
> string ProjectsEvents (string projectId, int after = null)

Tail a project — hello, replay, then live.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **projectId** | **string** |  |  |
| **after** | **int** |  | [optional]  |

### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Event frames. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="projectsget"></a>
# **ProjectsGet**
> InlineObject1 ProjectsGet (string projectId, bool events = null)

The record — jobs, runs, spend, decisions, report.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **projectId** | **string** |  |  |
| **events** | **bool** |  | [optional]  |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The project as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="projectsjobboard"></a>
# **ProjectsJobBoard**
> ProjectsJobBoard200Response ProjectsJobBoard ()

Every open posting across projects.


### Parameters
This endpoint does not need any parameter.
### Return type

[**ProjectsJobBoard200Response**](ProjectsJobBoard200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The board. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="projectslist"></a>
# **ProjectsList**
> ProjectsList200Response ProjectsList (int limit = null, string status = null)

Projects, newest activity first, jobs counted.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **limit** | **int** |  | [optional] [default to 50] |
| **status** | **string** |  | [optional]  |

### Return type

[**ProjectsList200Response**](ProjectsList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Projects. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="projectspatchjob"></a>
# **ProjectsPatchJob**
> InlineObject1 ProjectsPatchJob (string projectId, string jobId, ProjectsPatchJobRequest projectsPatchJobRequest)

Move a job along its state machine.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **projectId** | **string** |  |  |
| **jobId** | **string** |  |  |
| **projectsPatchJobRequest** | [**ProjectsPatchJobRequest**](ProjectsPatchJobRequest.md) |  |  |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The project as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="projectspostjob"></a>
# **ProjectsPostJob**
> InlineObject1 ProjectsPostJob (string projectId, ProjectsPostJobRequest projectsPostJobRequest)

Post a job.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **projectId** | **string** |  |  |
| **projectsPostJobRequest** | [**ProjectsPostJobRequest**](ProjectsPostJobRequest.md) |  |  |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The project as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="projectsrecruit"></a>
# **ProjectsRecruit**
> Dictionary&lt;string, Object&gt; ProjectsRecruit (string projectId, string jobId, ProjectsRecruitRequest projectsRecruitRequest)

One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **projectId** | **string** |  |  |
| **jobId** | **string** |  |  |
| **projectsRecruitRequest** | [**ProjectsRecruitRequest**](ProjectsRecruitRequest.md) |  |  |

### Return type

**Dictionary<string, Object>**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The decision. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

