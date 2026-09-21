# RuntimeActionResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**error** | Option<**String**> |  | [optional]
**already** | Option<**bool**> |  | [optional]
**url** | Option<**String**> |  | [optional]
**answering** | Option<**bool**> |  | [optional]
**install** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional]
**provides** | Option<**Vec<String>**> | The capabilities the service now stands behind (gateway 0.20+). | [optional]
**model** | Option<**String**> | The model the container runs, on a start or a model pick (gateway 0.22+). | [optional]
**restarted** | Option<**bool**> | A model pick re-created a running container. | [optional]
**note** | Option<**String**> | A model pick that fits but is tight for the engine's memory. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


