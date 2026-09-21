# CloudEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**specversion** | **Specversion** |  (enum: 1.0) | 
**id** | **String** |  | 
**source** | **String** | `urn:chatpanel:host:<host>` | 
**r#type** | **String** | `net.chatpanel.<family>.<kind>` | 
**time** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**datacontenttype** | Option<**String**> |  | [optional]
**seq** | **i32** |  | 
**host** | **String** |  | 
**causes** | Option<**String**> |  | [optional]
**chatpanelv** | **i32** |  | 
**data** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


