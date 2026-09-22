# \FusionsApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fusions_list**](FusionsApi.md#fusions_list) | **GET** /v1/fusions | Several models as one — the fusions this gateway has.



## fusions_list

> models::FusionList fusions_list()
Several models as one — the fusions this gateway has.

Derived from state (the entity detector's union once a companion is ready, an engine drafting with a second model) and composed by the user (`POST /config { fusions }`, a chat fallback in order). A chat turn names a fallback as `model: \"fusion:<id>\"` and is routed to the first member that is up; `x-chatpanel-fusion` on the response says which. 

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::FusionList**](FusionList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

