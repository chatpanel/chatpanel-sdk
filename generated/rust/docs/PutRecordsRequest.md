# PutRecordsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host** | Option<**String**> | Who is pushing — recorded on every record. | [optional]
**at** | Option<**i64**> |  | [optional]
**records** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> |  | [optional]
**entries** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> | Sealed backup entries, opened with the stored passphrase. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


