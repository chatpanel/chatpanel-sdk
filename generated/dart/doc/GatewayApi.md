# chatpanel.api.GatewayApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gatewayAudit**](GatewayApi.md#gatewayaudit) | **GET** /audit | The egress audit — which hosts this gateway has contacted and which its config allows.
[**gatewayHealth**](GatewayApi.md#gatewayhealth) | **GET** /health | Liveness, version and capabilities.
[**gatewayPair**](GatewayApi.md#gatewaypair) | **POST** /pair | Exchange a pairing code for the gateway token.
[**gatewayPairCode**](GatewayApi.md#gatewaypaircode) | **POST** /pair/code | Mint a one-time pairing code (5 minutes, one use, 5 attempts).
[**gatewayWhoami**](GatewayApi.md#gatewaywhoami) | **POST** /whoami | What the gateway makes of this caller.


# **gatewayAudit**
> Audit gatewayAudit()

The egress audit — which hosts this gateway has contacted and which its config allows.

The checkable claim behind \"nothing leaves the machine\". Admin-gated because it names the user's model endpoints.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getGatewayApi();

try {
    final response = api.gatewayAudit();
    print(response);
} on DioException catch (e) {
    print('Exception when calling GatewayApi->gatewayAudit: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Audit**](Audit.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayHealth**
> Health gatewayHealth()

Liveness, version and capabilities.

Additive fields only. `version` is what every version gate reads.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getGatewayApi();

try {
    final response = api.gatewayHealth();
    print(response);
} on DioException catch (e) {
    print('Exception when calling GatewayApi->gatewayHealth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Health**](Health.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayPair**
> Paired gatewayPair(gatewayPairRequest)

Exchange a pairing code for the gateway token.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getGatewayApi();
final GatewayPairRequest gatewayPairRequest = ; // GatewayPairRequest | 

try {
    final response = api.gatewayPair(gatewayPairRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling GatewayApi->gatewayPair: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gatewayPairRequest** | [**GatewayPairRequest**](GatewayPairRequest.md)|  | 

### Return type

[**Paired**](Paired.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayPairCode**
> PairingCode gatewayPairCode()

Mint a one-time pairing code (5 minutes, one use, 5 attempts).

Only a caller that already holds the token may mint one — pairing widens nothing.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getGatewayApi();

try {
    final response = api.gatewayPairCode();
    print(response);
} on DioException catch (e) {
    print('Exception when calling GatewayApi->gatewayPairCode: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PairingCode**](PairingCode.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayWhoami**
> WhoAmI gatewayWhoami()

What the gateway makes of this caller.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getGatewayApi();

try {
    final response = api.gatewayWhoami();
    print(response);
} on DioException catch (e) {
    print('Exception when calling GatewayApi->gatewayWhoami: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WhoAmI**](WhoAmI.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

