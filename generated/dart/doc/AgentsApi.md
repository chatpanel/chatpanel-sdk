# chatpanel.api.AgentsApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agentsRate**](AgentsApi.md#agentsrate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job.
[**agentsScorecard**](AgentsApi.md#agentsscorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard.
[**agentsScorecards**](AgentsApi.md#agentsscorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard.


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

