# ChatPanel.Sdk.Model.CloudEvent
One durable event in the CloudEvents 1.0 envelope. `seq`, `host`, `chatpanelv` are ChatPanel's extension attributes (the per-host order, the producer, the log schema version); `causes` is the comma-joined ids this event follows; `data` is the payload — refs and counts, never content.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Specversion** | **string** |  | 
**Id** | **string** |  | 
**Source** | **string** | &#x60;urn:chatpanel:host:&lt;host&gt;&#x60; | 
**Type** | **string** | &#x60;net.chatpanel.&lt;family&gt;.&lt;kind&gt;&#x60; | 
**Time** | **DateTime** |  | 
**Seq** | **int** |  | 
**Host** | **string** |  | 
**Chatpanelv** | **int** |  | 
**Datacontenttype** | **string** |  | [optional] 
**Causes** | **string** |  | [optional] 
**Data** | **Dictionary&lt;string, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

