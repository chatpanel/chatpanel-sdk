# RuntimeActionResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  |
**error** | **string** |  | [optional]
**already** | **bool** |  | [optional]
**url** | **string** |  | [optional]
**answering** | **bool** |  | [optional]
**install** | **array<string,mixed>** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional]
**provides** | **string[]** | The capabilities the service now stands behind (gateway 0.20+). | [optional]
**model** | **string** | The model the container runs, on a start or a model pick (gateway 0.22+). | [optional]
**restarted** | **bool** | A model pick re-created a running container. | [optional]
**note** | **string** | A model pick that fits but is tight for the engine&#39;s memory. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
