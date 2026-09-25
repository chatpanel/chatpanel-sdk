# AgentsListDefs200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agents** | [**Vec<models::AgentDef>**](AgentDef.md) |  | 
**quarantined** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> | Definitions the scanner refused. | [optional]
**problems** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> | Files that parsed as a definition and could not be made one. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


