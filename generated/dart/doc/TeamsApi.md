# chatpanel.api.TeamsApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**teamsAnswer**](TeamsApi.md#teamsanswer) | **POST** /v1/teams/runs/{runId}/answer | A person answers an ask on the board.
[**teamsAppendRunEvents**](TeamsApi.md#teamsappendrunevents) | **POST** /v1/teams/runs/{runId}/events | The running client appends events.
[**teamsCheckpoint**](TeamsApi.md#teamscheckpoint) | **GET** /v1/teams/runs/{runId}/checkpoint | What a client needs to resume a run whose client went away.
[**teamsClaim**](TeamsApi.md#teamsclaim) | **POST** /v1/teams/runs/{runId}/claim | A client takes a stopped or stale run over.
[**teamsCreateRun**](TeamsApi.md#teamscreaterun) | **POST** /v1/teams/runs | Open a run record.
[**teamsDecide**](TeamsApi.md#teamsdecide) | **POST** /v1/teams/runs/{runId}/decide | Approve or reject a post.
[**teamsDeleteRun**](TeamsApi.md#teamsdeleterun) | **DELETE** /v1/teams/runs/{runId} | Remove a run; a live one is stopped first.
[**teamsGetRun**](TeamsApi.md#teamsgetrun) | **GET** /v1/teams/runs/{runId} | One run, optionally with its events.
[**teamsHandoff**](TeamsApi.md#teamshandoff) | **POST** /v1/teams/runs/{runId}/handoff | Continue a task on another model.
[**teamsListRuns**](TeamsApi.md#teamslistruns) | **GET** /v1/teams/runs | The board — recent runs, newest first.
[**teamsPost**](TeamsApi.md#teamspost) | **POST** /v1/teams/runs/{runId}/post | Post a note to a thread.
[**teamsRemoveThread**](TeamsApi.md#teamsremovethread) | **DELETE** /v1/teams/runs/{runId}/threads/{threadId} | A person removes a thread from the board.
[**teamsRunEvents**](TeamsApi.md#teamsrunevents) | **GET** /v1/teams/runs/{runId}/events | Tail a run — the record first, replay from &#x60;after&#x60;, then live.
[**teamsStopRun**](TeamsApi.md#teamsstoprun) | **POST** /v1/teams/runs/{runId}/stop | Ask the running client to stop.


# **teamsAnswer**
> InlineObject teamsAnswer(runId, teamsAnswerRequest)

A person answers an ask on the board.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 
final TeamsAnswerRequest teamsAnswerRequest = ; // TeamsAnswerRequest | 

try {
    final response = api.teamsAnswer(runId, teamsAnswerRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsAnswer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **teamsAnswerRequest** | [**TeamsAnswerRequest**](TeamsAnswerRequest.md)|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsAppendRunEvents**
> InlineObject teamsAppendRunEvents(runId, teamsAppendRunEventsRequest)

The running client appends events.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 
final TeamsAppendRunEventsRequest teamsAppendRunEventsRequest = ; // TeamsAppendRunEventsRequest | 

try {
    final response = api.teamsAppendRunEvents(runId, teamsAppendRunEventsRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsAppendRunEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md)|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCheckpoint**
> TeamsCheckpoint200Response teamsCheckpoint(runId)

What a client needs to resume a run whose client went away.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 

try {
    final response = api.teamsCheckpoint(runId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsCheckpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**TeamsCheckpoint200Response**](TeamsCheckpoint200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsClaim**
> InlineObject teamsClaim(runId, teamsClaimRequest)

A client takes a stopped or stale run over.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 
final TeamsClaimRequest teamsClaimRequest = ; // TeamsClaimRequest | 

try {
    final response = api.teamsClaim(runId, teamsClaimRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsClaim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **teamsClaimRequest** | [**TeamsClaimRequest**](TeamsClaimRequest.md)|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCreateRun**
> InlineObject teamsCreateRun(teamRunCreate)

Open a run record.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final TeamRunCreate teamRunCreate = ; // TeamRunCreate | 

try {
    final response = api.teamsCreateRun(teamRunCreate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsCreateRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamRunCreate** | [**TeamRunCreate**](TeamRunCreate.md)|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsDecide**
> InlineObject teamsDecide(runId, teamsDecideRequest)

Approve or reject a post.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 
final TeamsDecideRequest teamsDecideRequest = ; // TeamsDecideRequest | 

try {
    final response = api.teamsDecide(runId, teamsDecideRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsDecide: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **teamsDecideRequest** | [**TeamsDecideRequest**](TeamsDecideRequest.md)|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsDeleteRun**
> PrefsDelete200Response teamsDeleteRun(runId)

Remove a run; a live one is stopped first.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 

try {
    final response = api.teamsDeleteRun(runId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsDeleteRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsGetRun**
> InlineObject teamsGetRun(runId, events)

One run, optionally with its events.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 
final bool events = true; // bool | 

try {
    final response = api.teamsGetRun(runId, events);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsGetRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **events** | **bool**|  | [optional] 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsHandoff**
> InlineObject teamsHandoff(runId, teamsHandoffRequest)

Continue a task on another model.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 
final TeamsHandoffRequest teamsHandoffRequest = ; // TeamsHandoffRequest | 

try {
    final response = api.teamsHandoff(runId, teamsHandoffRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsHandoff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **teamsHandoffRequest** | [**TeamsHandoffRequest**](TeamsHandoffRequest.md)|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListRuns**
> TeamsListRuns200Response teamsListRuns(limit, team)

The board — recent runs, newest first.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final int limit = 56; // int | 
final String team = team_example; // String | 

try {
    final response = api.teamsListRuns(limit, team);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsListRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 50]
 **team** | **String**|  | [optional] 

### Return type

[**TeamsListRuns200Response**](TeamsListRuns200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsPost**
> InlineObject teamsPost(runId, teamsPostRequest)

Post a note to a thread.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 
final TeamsPostRequest teamsPostRequest = ; // TeamsPostRequest | 

try {
    final response = api.teamsPost(runId, teamsPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **teamsPostRequest** | [**TeamsPostRequest**](TeamsPostRequest.md)|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsRemoveThread**
> InlineObject teamsRemoveThread(runId, threadId)

A person removes a thread from the board.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 
final String threadId = threadId_example; // String | 

try {
    final response = api.teamsRemoveThread(runId, threadId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsRemoveThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **threadId** | **String**|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsRunEvents**
> String teamsRunEvents(runId, after)

Tail a run — the record first, replay from `after`, then live.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 
final int after = 56; // int | Replay events with seq greater than this; absent means from the start.

try {
    final response = api.teamsRunEvents(runId, after);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsRunEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **after** | **int**| Replay events with seq greater than this; absent means from the start. | [optional] 

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsStopRun**
> InlineObject teamsStopRun(runId)

Ask the running client to stop.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getTeamsApi();
final String runId = runId_example; // String | 

try {
    final response = api.teamsStopRun(runId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TeamsApi->teamsStopRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

