# RuntimePlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **Bool** |  | 
**service** | **String** |  | [optional] 
**model** | **String** |  | [optional] 
**needMB** | **Int** | Weights + KV cache + 10% headroom. | [optional] 
**weightsMB** | **Int** |  | [optional] 
**kvMB** | **Int** | The KV cache for the context; null when the model&#39;s config.json is not on disk. | [optional] 
**context** | **Int** |  | [optional] 
**contextCounted** | **Bool** |  | [optional] 
**source** | **String** |  | [optional] 
**fits** | **Bool** |  | [optional] 
**live** | [**RuntimePlanLive**](RuntimePlanLive.md) |  | [optional] 
**advice** | **String** | One sentence for the person. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


