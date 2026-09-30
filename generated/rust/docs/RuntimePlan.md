# RuntimePlan

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**service** | Option<**String**> |  | [optional]
**model** | Option<**String**> |  | [optional]
**need_mb** | Option<**i32**> | Weights + KV cache + 10% headroom. | [optional]
**weights_mb** | Option<**i32**> |  | [optional]
**kv_mb** | Option<**i32**> | The KV cache for the context; null when the model's config.json is not on disk. | [optional]
**context** | Option<**i32**> |  | [optional]
**context_counted** | Option<**bool**> |  | [optional]
**source** | Option<**Source**> |  (enum: heatwatch, total-memory) | [optional]
**fits** | Option<**bool**> |  | [optional]
**live** | Option<[**models::RuntimePlanLive**](RuntimePlanLive.md)> |  | [optional]
**advice** | Option<**String**> | One sentence for the person. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


