# chatpanel.api.AgentsApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agentsExportDef**](AgentsApi.md#agentsexportdef) | **POST** /agent-defs/export | Write an agent definition into another tool&#39;s folder.
[**agentsExportPlan**](AgentsApi.md#agentsexportplan) | **POST** /agent-defs/export-plan | What an export would write, and what the target cannot carry — without writing it.
[**agentsGetDef**](AgentsApi.md#agentsgetdef) | **GET** /agent-defs/{agentId} | One agent definition, prompt included.
[**agentsListDefs**](AgentsApi.md#agentslistdefs) | **GET** /agent-defs | The agent definitions on this machine, from every tool that writes one.
[**agentsRate**](AgentsApi.md#agentsrate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job.
[**agentsScorecard**](AgentsApi.md#agentsscorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard.
[**agentsScorecards**](AgentsApi.md#agentsscorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard.


# **agentsExportDef**
> AgentsExportDef200Response agentsExportDef(agentExportRequest)

Write an agent definition into another tool's folder.

Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with `NOT_OURS` unless `overwrite` is set. Which of those applies is what `export-plan` reports as `status`.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getAgentsApi();
final AgentExportRequest agentExportRequest = ; // AgentExportRequest | 

try {
    final response = api.agentsExportDef(agentExportRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->agentsExportDef: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md)|  | 

### Return type

[**AgentsExportDef200Response**](AgentsExportDef200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsExportPlan**
> AgentExportPlan agentsExportPlan(agentExportRequest)

What an export would write, and what the target cannot carry — without writing it.

A separate call from the export itself, deliberately: \"show me what you are about to do to my Claude Code directory\" is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getAgentsApi();
final AgentExportRequest agentExportRequest = ; // AgentExportRequest | 

try {
    final response = api.agentsExportPlan(agentExportRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->agentsExportPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md)|  | 

### Return type

[**AgentExportPlan**](AgentExportPlan.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsGetDef**
> AgentsGetDef200Response agentsGetDef(agentId, workdir)

One agent definition, prompt included.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getAgentsApi();
final String agentId = agentId_example; // String | One path segment; slashes and `..` are refused.
final String workdir = workdir_example; // String | 

try {
    final response = api.agentsGetDef(agentId, workdir);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->agentsGetDef: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**| One path segment; slashes and `..` are refused. | 
 **workdir** | **String**|  | [optional] 

### Return type

[**AgentsGetDef200Response**](AgentsGetDef200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsListDefs**
> AgentsListDefs200Response agentsListDefs(workdir, dir)

The agent definitions on this machine, from every tool that writes one.

`.claude/agents/_*.md`, `.codex/agents/_*.toml`, `~/.chatpanel/agents/_*.json` and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — `promptChars` only, for the same reason `GET /skills` omits them.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getAgentsApi();
final String workdir = workdir_example; // String | Also read this project's own agent folders, ahead of the home ones.
final String dir = dir_example; // String | An extra absolute folder to scan. Repeatable.

try {
    final response = api.agentsListDefs(workdir, dir);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->agentsListDefs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workdir** | **String**| Also read this project's own agent folders, ahead of the home ones. | [optional] 
 **dir** | **String**| An extra absolute folder to scan. Repeatable. | [optional] 

### Return type

[**AgentsListDefs200Response**](AgentsListDefs200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsRate**
> BuiltMap<String, JsonObject> agentsRate(agentId, agentsRateRequest)

A person rates the agent's work on a run, task or job.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getAgentsApi();
final String agentId = agentId_example; // String | 
final AgentsRateRequest agentsRateRequest = ; // AgentsRateRequest | 

try {
    final response = api.agentsRate(agentId, agentsRateRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->agentsRate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**|  | 
 **agentsRateRequest** | [**AgentsRateRequest**](AgentsRateRequest.md)|  | 

### Return type

[**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsScorecard**
> BuiltMap<String, JsonObject> agentsScorecard(agentId)

One agent's attested scorecard.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getAgentsApi();
final String agentId = agentId_example; // String | 

try {
    final response = api.agentsScorecard(agentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->agentsScorecard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**|  | 

### Return type

[**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsScorecards**
> AgentsScorecards200Response agentsScorecards()

Every agent's scorecard.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getAgentsApi();

try {
    final response = api.agentsScorecards();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentsApi->agentsScorecards: $e\n');
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

