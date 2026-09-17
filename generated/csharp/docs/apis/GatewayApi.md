# ChatPanel.Sdk.Api.GatewayApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GatewayAudit**](GatewayApi.md#gatewayaudit) | **GET** /audit | The egress audit — which hosts this gateway has contacted and which its config allows. |
| [**GatewayHealth**](GatewayApi.md#gatewayhealth) | **GET** /health | Liveness, version and capabilities. |
| [**GatewayPair**](GatewayApi.md#gatewaypair) | **POST** /pair | Exchange a pairing code for the gateway token. |
| [**GatewayPairCode**](GatewayApi.md#gatewaypaircode) | **POST** /pair/code | Mint a one-time pairing code (5 minutes, one use, 5 attempts). |
| [**GatewayWhoami**](GatewayApi.md#gatewaywhoami) | **POST** /whoami | What the gateway makes of this caller. |

<a id="gatewayaudit"></a>
# **GatewayAudit**
> Audit GatewayAudit ()

The egress audit — which hosts this gateway has contacted and which its config allows.

The checkable claim behind \"nothing leaves the machine\". Admin-gated because it names the user's model endpoints.


### Parameters
This endpoint does not need any parameter.
### Return type

[**Audit**](Audit.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The audit. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="gatewayhealth"></a>
# **GatewayHealth**
> Health GatewayHealth ()

Liveness, version and capabilities.

Additive fields only. `version` is what every version gate reads.


### Parameters
This endpoint does not need any parameter.
### Return type

[**Health**](Health.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The gateway is up. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="gatewaypair"></a>
# **GatewayPair**
> Paired GatewayPair (GatewayPairRequest gatewayPairRequest)

Exchange a pairing code for the gateway token.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **gatewayPairRequest** | [**GatewayPairRequest**](GatewayPairRequest.md) |  |  |

### Return type

[**Paired**](Paired.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paired. Store the token where only this user can read it. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="gatewaypaircode"></a>
# **GatewayPairCode**
> PairingCode GatewayPairCode ()

Mint a one-time pairing code (5 minutes, one use, 5 attempts).

Only a caller that already holds the token may mint one — pairing widens nothing.


### Parameters
This endpoint does not need any parameter.
### Return type

[**PairingCode**](PairingCode.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The code to carry into the client. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="gatewaywhoami"></a>
# **GatewayWhoami**
> WhoAmI GatewayWhoami ()

What the gateway makes of this caller.


### Parameters
This endpoint does not need any parameter.
### Return type

[**WhoAmI**](WhoAmI.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The caller&#39;s trust class. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

