# KbStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**v** | **Int** |  | [optional] 
**createdAt** | **Int64** |  | [optional] 
**updatedAt** | **Int64** |  | [optional] 
**docs** | **Int** |  | 
**chunks** | **Int** |  | 
**notes** | **Int** |  | 
**proposed** | **Int** | Notes awaiting acceptance. | [optional] 
**vectors** | **Int** |  | 
**model** | **String** | The embedding model the vectors came from. | [optional] 
**dims** | **Int** |  | [optional] 
**embed** | **String** |  | [optional] 
**entities** | **Int** |  | 
**edges** | **Int** |  | 
**reach** | **String** | The tightest provenance of its documents (&#x60;internal&#x60;, &#x60;web&#x60;, or empty). | [optional] 
**access** | [**KbAccess**](KbAccess.md) |  | [optional] 
**documents** | [KbDocument] |  | 
**bytes** | **Int64** | On disk. | [optional] 
**dir** | **String** | The folder on disk — to a caller with the token only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


