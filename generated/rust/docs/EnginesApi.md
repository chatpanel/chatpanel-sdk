# \EnginesApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**engines_append_entry**](EnginesApi.md#engines_append_entry) | **POST** /v1/engines/{engineKey}/entries | Append a ledger entry for an engine.
[**engines_card**](EnginesApi.md#engines_card) | **GET** /v1/engines/{engineKey}/card | One engine's card, optionally with entries.
[**engines_list**](EnginesApi.md#engines_list) | **GET** /v1/engines | Every engine's card.



## engines_append_entry

> std::collections::HashMap<String, serde_json::Value> engines_append_entry(engine_key, request_body)
Append a ledger entry for an engine.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**engine_key** | **String** |  | [required] |
**request_body** | [**std::collections::HashMap<String, serde_json::Value>**](SerdeJson__Value.md) |  | [required] |

### Return type

[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## engines_card

> std::collections::HashMap<String, serde_json::Value> engines_card(engine_key, entries, min_calls)
One engine's card, optionally with entries.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**engine_key** | **String** |  | [required] |
**entries** | Option<**bool**> |  |  |
**min_calls** | Option<**i32**> |  |  |

### Return type

[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## engines_list

> models::EnginesList200Response engines_list(min_calls)
Every engine's card.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**min_calls** | Option<**i32**> |  |  |

### Return type

[**models::EnginesList200Response**](engines_list_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

