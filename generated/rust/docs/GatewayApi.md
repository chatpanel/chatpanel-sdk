# \GatewayApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gateway_audit**](GatewayApi.md#gateway_audit) | **GET** /audit | The egress audit — which hosts this gateway has contacted and which its config allows.
[**gateway_health**](GatewayApi.md#gateway_health) | **GET** /health | Liveness, version and capabilities.
[**gateway_pair**](GatewayApi.md#gateway_pair) | **POST** /pair | Exchange a pairing code for the gateway token.
[**gateway_pair_code**](GatewayApi.md#gateway_pair_code) | **POST** /pair/code | Mint a one-time pairing code (5 minutes, one use, 5 attempts).
[**gateway_whoami**](GatewayApi.md#gateway_whoami) | **POST** /whoami | What the gateway makes of this caller.



## gateway_audit

> models::Audit gateway_audit()
The egress audit — which hosts this gateway has contacted and which its config allows.

The checkable claim behind \"nothing leaves the machine\". Admin-gated because it names the user's model endpoints.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::Audit**](Audit.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## gateway_health

> models::Health gateway_health()
Liveness, version and capabilities.

Additive fields only. `version` is what every version gate reads.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::Health**](Health.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## gateway_pair

> models::Paired gateway_pair(gateway_pair_request)
Exchange a pairing code for the gateway token.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**gateway_pair_request** | [**GatewayPairRequest**](GatewayPairRequest.md) |  | [required] |

### Return type

[**models::Paired**](Paired.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## gateway_pair_code

> models::PairingCode gateway_pair_code()
Mint a one-time pairing code (5 minutes, one use, 5 attempts).

Only a caller that already holds the token may mint one — pairing widens nothing.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::PairingCode**](PairingCode.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## gateway_whoami

> models::WhoAmI gateway_whoami()
What the gateway makes of this caller.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::WhoAmI**](WhoAmI.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

