# BrowserStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connected** | **Bool** |  | 
**pending** | **Int** | Calls waiting on the browser. | 
**waiting** | **Bool** | A browser holds the stream but has not announced yet. | [optional] 
**browser** | [**BrowserInfo**](BrowserInfo.md) |  | [optional] 
**_extension** | **String** | The extension&#39;s version. | [optional] 
**spec** | **[String: JSONValue]** | The page tool: { name, description, parameters } — hand it to a model as it is. | [optional] 
**system** | **String** | The guidance that goes with the tool. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


