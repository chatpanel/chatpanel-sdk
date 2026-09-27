# ChatPanel.Sdk.Model.BrowserStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Connected** | **bool** |  | 
**Pending** | **int** | Calls waiting on the browser. | 
**Waiting** | **bool** | A browser holds the stream but has not announced yet. | [optional] 
**Browser** | [**BrowserInfo**](BrowserInfo.md) |  | [optional] 
**Extension** | **string** | The extension&#39;s version. | [optional] 
**Spec** | **Dictionary&lt;string, Object&gt;** | The page tool: { name, description, parameters } — hand it to a model as it is. | [optional] 
**System** | **string** | The guidance that goes with the tool. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

