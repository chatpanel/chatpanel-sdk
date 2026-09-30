# ChatPanel.Sdk.Model.RuntimePlan
Whether a local model fits in memory (gateway 0.74+) — `GET /v1/runtime/plan`, and on a start the live-memory check refused.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Service** | **string** |  | [optional] 
**Model** | **string** |  | [optional] 
**NeedMB** | **int** | Weights + KV cache + 10% headroom. | [optional] 
**WeightsMB** | **int** |  | [optional] 
**KvMB** | **int** | The KV cache for the context; null when the model&#39;s config.json is not on disk. | [optional] 
**Context** | **int** |  | [optional] 
**ContextCounted** | **bool** |  | [optional] 
**Source** | **string** |  | [optional] 
**Fits** | **bool** |  | [optional] 
**Live** | [**RuntimePlanLive**](RuntimePlanLive.md) |  | [optional] 
**Advice** | **string** | One sentence for the person. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

