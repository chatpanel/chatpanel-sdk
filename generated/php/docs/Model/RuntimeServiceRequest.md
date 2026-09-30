# RuntimeServiceRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **string** |  | [optional] [default to 'start']
**model** | **string** | With &#x60;action: model&#x60; — a catalogue id or a Hugging Face owner/name. | [optional]
**force** | **bool** | With &#x60;action: start&#x60; (gateway 0.74+) — start a native model past the live-memory check (&#x60;GET /v1/runtime/plan&#x60;). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
