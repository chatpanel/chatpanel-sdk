# CloudEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**specversion** | **string** |  |
**id** | **string** |  |
**source** | **string** | &#x60;urn:chatpanel:host:&lt;host&gt;&#x60; |
**type** | **string** | &#x60;net.chatpanel.&lt;family&gt;.&lt;kind&gt;&#x60; |
**time** | **\DateTime** |  |
**datacontenttype** | **string** |  | [optional]
**seq** | **int** |  |
**host** | **string** |  |
**causes** | **string** |  | [optional]
**chatpanelv** | **int** |  |
**data** | **array<string,mixed>** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
