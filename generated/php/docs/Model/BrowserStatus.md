# BrowserStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connected** | **bool** |  |
**pending** | **int** | Calls waiting on the browser. |
**waiting** | **bool** | A browser holds the stream but has not announced yet. | [optional]
**browser** | [**\ChatPanelSdk\Model\BrowserInfo**](BrowserInfo.md) |  | [optional]
**extension** | **string** | The extension&#39;s version. | [optional]
**spec** | **array<string,mixed>** | The page tool: { name, description, parameters } — hand it to a model as it is. | [optional]
**system** | **string** | The guidance that goes with the tool. | [optional]
**actions** | **array<string,mixed>[]** | The full specs behind the dispatcher (gateway 0.59.1+) — a hub lists each action with its own arguments. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
