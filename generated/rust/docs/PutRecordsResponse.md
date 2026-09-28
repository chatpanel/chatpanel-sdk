# PutRecordsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**written** | **i32** |  | 
**ids** | Option<**Vec<String>**> |  | [optional]
**sealed** | Option<**i32**> |  | [optional]
**size** | Option<**i32**> |  | [optional]
**revs** | Option<**std::collections::HashMap<String, i64>**> | Each written record's new revision (gateway 0.63.0+). | [optional]
**conflicts** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> | The current record for each one sent with a `baseRev` that is no longer current — merge and send again. | [optional]
**rev** | Option<**i64**> | The newest revision after this write. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


