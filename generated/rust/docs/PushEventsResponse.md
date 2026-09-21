# PushEventsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**appended** | **i32** |  | 
**duplicates** | **i32** | Events already held — a retry's share. | 
**rejected** | [**Vec<models::PushEventsResponseRejectedInner>**](PushEventsResponseRejectedInner.md) |  | 
**cursor** | **std::collections::HashMap<String, i32>** | `{ host: seq }` — the highest seq held per host. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


