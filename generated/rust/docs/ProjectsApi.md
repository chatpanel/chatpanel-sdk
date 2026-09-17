# \ProjectsApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projects_append_events**](ProjectsApi.md#projects_append_events) | **POST** /v1/projects/{projectId}/events | The executive loop appends (status, run.linked, run.spent, decision, report).
[**projects_applications**](ProjectsApi.md#projects_applications) | **GET** /v1/projects/{projectId}/jobs/{jobId}/applications | The pool applies at once; `prompt` is the evaluator's, for a structured call.
[**projects_create**](ProjectsApi.md#projects_create) | **POST** /v1/projects | Open a record (idempotent) or update the page.
[**projects_delete**](ProjectsApi.md#projects_delete) | **DELETE** /v1/projects/{projectId} | Remove a project record.
[**projects_events**](ProjectsApi.md#projects_events) | **GET** /v1/projects/{projectId}/events | Tail a project — hello, replay, then live.
[**projects_get**](ProjectsApi.md#projects_get) | **GET** /v1/projects/{projectId} | The record — jobs, runs, spend, decisions, report.
[**projects_job_board**](ProjectsApi.md#projects_job_board) | **GET** /v1/projects/jobs | Every open posting across projects.
[**projects_list**](ProjectsApi.md#projects_list) | **GET** /v1/projects | Projects, newest activity first, jobs counted.
[**projects_patch_job**](ProjectsApi.md#projects_patch_job) | **POST** /v1/projects/{projectId}/jobs/{jobId} | Move a job along its state machine.
[**projects_post_job**](ProjectsApi.md#projects_post_job) | **POST** /v1/projects/{projectId}/jobs | Post a job.
[**projects_recruit**](ProjectsApi.md#projects_recruit) | **POST** /v1/projects/{projectId}/jobs/{jobId}/recruit | One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.



## projects_append_events

> models::InlineObject1 projects_append_events(project_id, teams_append_run_events_request)
The executive loop appends (status, run.linked, run.spent, decision, report).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**project_id** | **String** |  | [required] |
**teams_append_run_events_request** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md) |  | [required] |

### Return type

[**models::InlineObject1**](inline_object_1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## projects_applications

> std::collections::HashMap<String, serde_json::Value> projects_applications(project_id, job_id, reach, chat_model)
The pool applies at once; `prompt` is the evaluator's, for a structured call.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**project_id** | **String** |  | [required] |
**job_id** | **String** |  | [required] |
**reach** | Option<**String**> |  |  |[default to any]
**chat_model** | Option<**String**> |  |  |

### Return type

[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## projects_create

> models::InlineObject1 projects_create(projects_create_request)
Open a record (idempotent) or update the page.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**projects_create_request** | [**ProjectsCreateRequest**](ProjectsCreateRequest.md) |  | [required] |

### Return type

[**models::InlineObject1**](inline_object_1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## projects_delete

> models::PrefsDelete200Response projects_delete(project_id)
Remove a project record.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**project_id** | **String** |  | [required] |

### Return type

[**models::PrefsDelete200Response**](prefs_delete_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## projects_events

> String projects_events(project_id, after)
Tail a project — hello, replay, then live.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**project_id** | **String** |  | [required] |
**after** | Option<**i32**> |  |  |

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## projects_get

> models::InlineObject1 projects_get(project_id, events)
The record — jobs, runs, spend, decisions, report.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**project_id** | **String** |  | [required] |
**events** | Option<**bool**> |  |  |

### Return type

[**models::InlineObject1**](inline_object_1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## projects_job_board

> models::ProjectsJobBoard200Response projects_job_board()
Every open posting across projects.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::ProjectsJobBoard200Response**](projects_jobBoard_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## projects_list

> models::ProjectsList200Response projects_list(limit, status)
Projects, newest activity first, jobs counted.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> |  |  |[default to 50]
**status** | Option<**String**> |  |  |

### Return type

[**models::ProjectsList200Response**](projects_list_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## projects_patch_job

> models::InlineObject1 projects_patch_job(project_id, job_id, projects_patch_job_request)
Move a job along its state machine.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**project_id** | **String** |  | [required] |
**job_id** | **String** |  | [required] |
**projects_patch_job_request** | [**ProjectsPatchJobRequest**](ProjectsPatchJobRequest.md) |  | [required] |

### Return type

[**models::InlineObject1**](inline_object_1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## projects_post_job

> models::InlineObject1 projects_post_job(project_id, projects_post_job_request)
Post a job.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**project_id** | **String** |  | [required] |
**projects_post_job_request** | [**ProjectsPostJobRequest**](ProjectsPostJobRequest.md) |  | [required] |

### Return type

[**models::InlineObject1**](inline_object_1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## projects_recruit

> std::collections::HashMap<String, serde_json::Value> projects_recruit(project_id, job_id, projects_recruit_request)
One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**project_id** | **String** |  | [required] |
**job_id** | **String** |  | [required] |
**projects_recruit_request** | [**ProjectsRecruitRequest**](ProjectsRecruitRequest.md) |  | [required] |

### Return type

[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

