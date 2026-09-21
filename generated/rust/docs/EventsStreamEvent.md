# EventsStreamEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event** | **Event** | The SSE event name. (enum: hello, cloudevent) | 
**cursor** | Option<**std::collections::HashMap<String, i32>**> | `{ host: seq }` — the highest seq held per host. | [optional]
**count** | Option<**i32**> |  | [optional]
**version** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


