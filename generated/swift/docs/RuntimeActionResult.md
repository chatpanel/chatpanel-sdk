# RuntimeActionResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **Bool** |  | 
**error** | **String** |  | [optional] 
**already** | **Bool** |  | [optional] 
**url** | **String** |  | [optional] 
**answering** | **Bool** |  | [optional] 
**install** | **[String: JSONValue]** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**provides** | **[String]** | The capabilities the service now stands behind (gateway 0.20+). | [optional] 
**model** | **String** | The model the container runs, on a start or a model pick (gateway 0.22+). | [optional] 
**restarted** | **Bool** | A model pick re-created a running container. | [optional] 
**note** | **String** | A model pick that fits but is tight for the engine&#39;s memory. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


