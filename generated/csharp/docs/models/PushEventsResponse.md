# ChatPanel.Sdk.Model.PushEventsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Appended** | **int** |  | 
**Duplicates** | **int** | Events already held — a retry&#39;s share. | 
**Rejected** | [**List&lt;PushEventsResponseRejectedInner&gt;**](PushEventsResponseRejectedInner.md) |  | 
**Cursor** | **Dictionary&lt;string, int&gt;** | &#x60;{ host: seq }&#x60; — the highest seq held per host. | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

