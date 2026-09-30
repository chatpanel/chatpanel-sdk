# RuntimeServiceRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** |  | [optional] [default to .start]
**model** | **String** | With &#x60;action: model&#x60; — a catalogue id or a Hugging Face owner/name. | [optional] 
**force** | **Bool** | With &#x60;action: start&#x60; (gateway 0.74+) — start a native model past the live-memory check (&#x60;GET /v1/runtime/plan&#x60;). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


