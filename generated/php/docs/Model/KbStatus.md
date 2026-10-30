# KbStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  |
**name** | **string** |  |
**v** | **int** |  | [optional]
**created_at** | **int** |  | [optional]
**updated_at** | **int** |  | [optional]
**docs** | **int** |  |
**chunks** | **int** |  |
**notes** | **int** |  |
**proposed** | **int** | Notes awaiting acceptance. | [optional]
**vectors** | **int** |  |
**model** | **string** | The embedding model the vectors came from. | [optional]
**dims** | **int** |  | [optional]
**embed** | **string** |  | [optional]
**entities** | **int** |  |
**edges** | **int** |  |
**reach** | **string** | The tightest provenance of its documents (&#x60;internal&#x60;, &#x60;web&#x60;, or empty). | [optional]
**access** | [**\ChatPanelSdk\Model\KbAccess**](KbAccess.md) |  | [optional]
**documents** | [**\ChatPanelSdk\Model\KbDocument[]**](KbDocument.md) |  |
**bytes** | **int** | On disk. | [optional]
**dir** | **string** | The folder on disk — to a caller with the token only. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
