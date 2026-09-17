# SmartSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**r#type** | Option<[**models::RecordType**](RecordType.md)> |  | [optional]
**since** | Option<**i64**> | ms since epoch | [optional]
**before** | Option<**i64**> | ms since epoch | [optional]
**limit** | Option<**i32**> |  | [optional][default to 10]
**question** | **String** | The natural-language question. | 
**queries** | Option<**Vec<String>**> | 2–4 keyword phrasings of your own; they lead. | [optional]
**max_queries** | Option<**i32**> |  | [optional][default to 4]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


