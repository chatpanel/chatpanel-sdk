# BrowserStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connected** | **bool** |  | 
**pending** | **i32** | Calls waiting on the browser. | 
**waiting** | Option<**bool**> | A browser holds the stream but has not announced yet. | [optional]
**browser** | Option<[**models::BrowserInfo**](BrowserInfo.md)> |  | [optional]
**extension** | Option<**String**> | The extension's version. | [optional]
**spec** | Option<**std::collections::HashMap<String, serde_json::Value>**> | The page tool: { name, description, parameters } — hand it to a model as it is. | [optional]
**system** | Option<**String**> | The guidance that goes with the tool. | [optional]
**actions** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> | The full specs behind the dispatcher (gateway 0.59.1+) — a hub lists each action with its own arguments. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


