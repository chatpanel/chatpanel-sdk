# PushEventsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **Bool** |  | 
**appended** | **Int** |  | 
**duplicates** | **Int** | Events already held — a retry&#39;s share. | 
**rejected** | [PushEventsResponseRejectedInner] |  | 
**cursor** | **[String: Int]** | &#x60;{ host: seq }&#x60; — the highest seq held per host. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


