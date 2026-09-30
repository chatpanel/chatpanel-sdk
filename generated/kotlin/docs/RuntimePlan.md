
# RuntimePlan

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **ok** | **kotlin.Boolean** |  |  |
| **service** | **kotlin.String** |  |  [optional] |
| **model** | **kotlin.String** |  |  [optional] |
| **needMB** | **kotlin.Int** | Weights + KV cache + 10% headroom. |  [optional] |
| **weightsMB** | **kotlin.Int** |  |  [optional] |
| **kvMB** | **kotlin.Int** | The KV cache for the context; null when the model&#39;s config.json is not on disk. |  [optional] |
| **context** | **kotlin.Int** |  |  [optional] |
| **contextCounted** | **kotlin.Boolean** |  |  [optional] |
| **source** | [**inline**](#Source) |  |  [optional] |
| **fits** | **kotlin.Boolean** |  |  [optional] |
| **live** | [**RuntimePlanLive**](RuntimePlanLive.md) |  |  [optional] |
| **advice** | **kotlin.String** | One sentence for the person. |  [optional] |


<a id="Source"></a>
## Enum: source
| Name | Value |
| ---- | ----- |
| source | heatwatch, total-memory |



