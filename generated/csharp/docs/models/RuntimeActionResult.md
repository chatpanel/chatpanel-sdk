# ChatPanel.Sdk.Model.RuntimeActionResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Error** | **string** |  | [optional] 
**Already** | **bool** |  | [optional] 
**Url** | **string** |  | [optional] 
**Answering** | **bool** |  | [optional] 
**Install** | **Dictionary&lt;string, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**Provides** | **List&lt;string&gt;** | The capabilities the service now stands behind (gateway 0.20+). | [optional] 
**Model** | **string** | The model the container runs, on a start or a model pick (gateway 0.22+). | [optional] 
**Restarted** | **bool** | A model pick re-created a running container. | [optional] 
**Note** | **string** | A model pick that fits but is tight for the engine&#39;s memory. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

