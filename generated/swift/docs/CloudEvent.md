# CloudEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**specversion** | **String** |  | 
**id** | **String** |  | 
**source** | **String** | &#x60;urn:chatpanel:host:&lt;host&gt;&#x60; | 
**type** | **String** | &#x60;net.chatpanel.&lt;family&gt;.&lt;kind&gt;&#x60; | 
**time** | **Date** |  | 
**datacontenttype** | **String** |  | [optional] 
**seq** | **Int** |  | 
**host** | **String** |  | 
**causes** | **String** |  | [optional] 
**chatpanelv** | **Int** |  | 
**data** | **[String: JSONValue]** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


