# KbStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**v** | Option<**i32**> |  | [optional]
**created_at** | Option<**i64**> |  | [optional]
**updated_at** | Option<**i64**> |  | [optional]
**docs** | **i32** |  | 
**chunks** | **i32** |  | 
**notes** | **i32** |  | 
**proposed** | Option<**i32**> | Notes awaiting acceptance. | [optional]
**vectors** | **i32** |  | 
**model** | Option<**String**> | The embedding model the vectors came from. | [optional]
**dims** | Option<**i32**> |  | [optional]
**embed** | Option<**Embed**> |  (enum: auto, false) | [optional]
**entities** | **i32** |  | 
**edges** | **i32** |  | 
**reach** | Option<**String**> | The tightest provenance of its documents (`internal`, `web`, or empty). | [optional]
**access** | Option<[**models::KbAccess**](KbAccess.md)> |  | [optional]
**documents** | [**Vec<models::KbDocument>**](KbDocument.md) |  | 
**bytes** | Option<**i64**> | On disk. | [optional]
**dir** | Option<**String**> | The folder on disk — to a caller with the token only. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


