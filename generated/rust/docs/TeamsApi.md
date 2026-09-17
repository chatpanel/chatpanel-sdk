# \TeamsApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**teams_answer**](TeamsApi.md#teams_answer) | **POST** /v1/teams/runs/{runId}/answer | A person answers an ask on the board.
[**teams_append_run_events**](TeamsApi.md#teams_append_run_events) | **POST** /v1/teams/runs/{runId}/events | The running client appends events.
[**teams_checkpoint**](TeamsApi.md#teams_checkpoint) | **GET** /v1/teams/runs/{runId}/checkpoint | What a client needs to resume a run whose client went away.
[**teams_claim**](TeamsApi.md#teams_claim) | **POST** /v1/teams/runs/{runId}/claim | A client takes a stopped or stale run over.
[**teams_create_run**](TeamsApi.md#teams_create_run) | **POST** /v1/teams/runs | Open a run record.
[**teams_decide**](TeamsApi.md#teams_decide) | **POST** /v1/teams/runs/{runId}/decide | Approve or reject a post.
[**teams_delete_run**](TeamsApi.md#teams_delete_run) | **DELETE** /v1/teams/runs/{runId} | Remove a run; a live one is stopped first.
[**teams_get_run**](TeamsApi.md#teams_get_run) | **GET** /v1/teams/runs/{runId} | One run, optionally with its events.
[**teams_handoff**](TeamsApi.md#teams_handoff) | **POST** /v1/teams/runs/{runId}/handoff | Continue a task on another model.
[**teams_list_runs**](TeamsApi.md#teams_list_runs) | **GET** /v1/teams/runs | The board — recent runs, newest first.
[**teams_post**](TeamsApi.md#teams_post) | **POST** /v1/teams/runs/{runId}/post | Post a note to a thread.
[**teams_remove_thread**](TeamsApi.md#teams_remove_thread) | **DELETE** /v1/teams/runs/{runId}/threads/{threadId} | A person removes a thread from the board.
[**teams_run_events**](TeamsApi.md#teams_run_events) | **GET** /v1/teams/runs/{runId}/events | Tail a run — the record first, replay from `after`, then live.
[**teams_stop_run**](TeamsApi.md#teams_stop_run) | **POST** /v1/teams/runs/{runId}/stop | Ask the running client to stop.



## teams_answer

> models::InlineObject teams_answer(run_id, teams_answer_request)
A person answers an ask on the board.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |
**teams_answer_request** | [**TeamsAnswerRequest**](TeamsAnswerRequest.md) |  | [required] |

### Return type

[**models::InlineObject**](inline_object.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_append_run_events

> models::InlineObject teams_append_run_events(run_id, teams_append_run_events_request)
The running client appends events.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |
**teams_append_run_events_request** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md) |  | [required] |

### Return type

[**models::InlineObject**](inline_object.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_checkpoint

> models::TeamsCheckpoint200Response teams_checkpoint(run_id)
What a client needs to resume a run whose client went away.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |

### Return type

[**models::TeamsCheckpoint200Response**](teams_checkpoint_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_claim

> models::InlineObject teams_claim(run_id, teams_claim_request)
A client takes a stopped or stale run over.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |
**teams_claim_request** | [**TeamsClaimRequest**](TeamsClaimRequest.md) |  | [required] |

### Return type

[**models::InlineObject**](inline_object.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_create_run

> models::InlineObject teams_create_run(team_run_create)
Open a run record.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**team_run_create** | [**TeamRunCreate**](TeamRunCreate.md) |  | [required] |

### Return type

[**models::InlineObject**](inline_object.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_decide

> models::InlineObject teams_decide(run_id, teams_decide_request)
Approve or reject a post.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |
**teams_decide_request** | [**TeamsDecideRequest**](TeamsDecideRequest.md) |  | [required] |

### Return type

[**models::InlineObject**](inline_object.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_delete_run

> models::PrefsDelete200Response teams_delete_run(run_id)
Remove a run; a live one is stopped first.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |

### Return type

[**models::PrefsDelete200Response**](prefs_delete_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_get_run

> models::InlineObject teams_get_run(run_id, events)
One run, optionally with its events.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |
**events** | Option<**bool**> |  |  |

### Return type

[**models::InlineObject**](inline_object.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_handoff

> models::InlineObject teams_handoff(run_id, teams_handoff_request)
Continue a task on another model.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |
**teams_handoff_request** | [**TeamsHandoffRequest**](TeamsHandoffRequest.md) |  | [required] |

### Return type

[**models::InlineObject**](inline_object.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_list_runs

> models::TeamsListRuns200Response teams_list_runs(limit, team)
The board — recent runs, newest first.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> |  |  |[default to 50]
**team** | Option<**String**> |  |  |

### Return type

[**models::TeamsListRuns200Response**](teams_listRuns_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_post

> models::InlineObject teams_post(run_id, teams_post_request)
Post a note to a thread.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |
**teams_post_request** | [**TeamsPostRequest**](TeamsPostRequest.md) |  | [required] |

### Return type

[**models::InlineObject**](inline_object.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_remove_thread

> models::InlineObject teams_remove_thread(run_id, thread_id)
A person removes a thread from the board.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |
**thread_id** | **String** |  | [required] |

### Return type

[**models::InlineObject**](inline_object.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_run_events

> String teams_run_events(run_id, after)
Tail a run — the record first, replay from `after`, then live.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |
**after** | Option<**i32**> | Replay events with seq greater than this; absent means from the start. |  |

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## teams_stop_run

> models::InlineObject teams_stop_run(run_id)
Ask the running client to stop.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**run_id** | **String** |  | [required] |

### Return type

[**models::InlineObject**](inline_object.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

