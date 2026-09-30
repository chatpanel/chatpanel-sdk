# RuntimePlan

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  |
**service** | **string** |  | [optional]
**model** | **string** |  | [optional]
**need_mb** | **int** | Weights + KV cache + 10% headroom. | [optional]
**weights_mb** | **int** |  | [optional]
**kv_mb** | **int** | The KV cache for the context; null when the model&#39;s config.json is not on disk. | [optional]
**context** | **int** |  | [optional]
**context_counted** | **bool** |  | [optional]
**source** | **string** |  | [optional]
**fits** | **bool** |  | [optional]
**live** | [**\ChatPanelSdk\Model\RuntimePlanLive**](RuntimePlanLive.md) |  | [optional]
**advice** | **string** | One sentence for the person. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
