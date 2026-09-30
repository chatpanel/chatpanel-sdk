

# RuntimePlan

Whether a local model fits in memory (gateway 0.74+) — `GET /v1/runtime/plan`, and on a start the live-memory check refused.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ok** | **Boolean** |  |  |
|**service** | **String** |  |  [optional] |
|**model** | **String** |  |  [optional] |
|**needMB** | **Integer** | Weights + KV cache + 10% headroom. |  [optional] |
|**weightsMB** | **Integer** |  |  [optional] |
|**kvMB** | **Integer** | The KV cache for the context; null when the model&#39;s config.json is not on disk. |  [optional] |
|**context** | **Integer** |  |  [optional] |
|**contextCounted** | **Boolean** |  |  [optional] |
|**source** | [**SourceEnum**](#SourceEnum) |  |  [optional] |
|**fits** | **Boolean** |  |  [optional] |
|**live** | [**RuntimePlanLive**](RuntimePlanLive.md) |  |  [optional] |
|**advice** | **String** | One sentence for the person. |  [optional] |



## Enum: SourceEnum

| Name | Value |
|---- | -----|
| HEATWATCH | &quot;heatwatch&quot; |
| TOTAL_MEMORY | &quot;total-memory&quot; |



