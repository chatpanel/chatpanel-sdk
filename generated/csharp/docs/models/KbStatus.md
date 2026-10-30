# ChatPanel.Sdk.Model.KbStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Name** | **string** |  | 
**Docs** | **int** |  | 
**Chunks** | **int** |  | 
**Notes** | **int** |  | 
**Vectors** | **int** |  | 
**Entities** | **int** |  | 
**Edges** | **int** |  | 
**Documents** | [**List&lt;KbDocument&gt;**](KbDocument.md) |  | 
**V** | **int** |  | [optional] 
**CreatedAt** | **long** |  | [optional] 
**UpdatedAt** | **long** |  | [optional] 
**Proposed** | **int** | Notes awaiting acceptance. | [optional] 
**Model** | **string** | The embedding model the vectors came from. | [optional] 
**Dims** | **int** |  | [optional] 
**Embed** | **string** |  | [optional] 
**Reach** | **string** | The tightest provenance of its documents (&#x60;internal&#x60;, &#x60;web&#x60;, or empty). | [optional] 
**Access** | [**KbAccess**](KbAccess.md) |  | [optional] 
**Bytes** | **long** | On disk. | [optional] 
**Dir** | **string** | The folder on disk — to a caller with the token only. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

