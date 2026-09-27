# BrowserStreamEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event** | **Event** |  (enum: hello, call, cancel, replaced) | 
**session** | Option<**String**> | On `hello`. | [optional]
**version** | Option<**String**> | On `hello` — the gateway's. | [optional]
**id** | Option<**String**> | On `call` and `cancel`. | [optional]
**action** | Option<**String**> |  | [optional]
**args** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]
**task** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


