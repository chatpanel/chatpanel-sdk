# RecordsPage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**records** | **Vec<std::collections::HashMap<String, serde_json::Value>>** | Whole records; a tombstone carries `deletedAt`. | 
**next** | Option<**String**> | The cursor for the next page — pass it as `cursor`; absent on the last page. | [optional]
**size** | Option<**i32**> |  | [optional]
**newest** | Option<**i64**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


