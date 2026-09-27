
# BrowserStatus

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **connected** | **kotlin.Boolean** |  |  |
| **pending** | **kotlin.Int** | Calls waiting on the browser. |  |
| **waiting** | **kotlin.Boolean** | A browser holds the stream but has not announced yet. |  [optional] |
| **browser** | [**BrowserInfo**](BrowserInfo.md) |  |  [optional] |
| **extension** | **kotlin.String** | The extension&#39;s version. |  [optional] |
| **spec** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | The page tool: { name, description, parameters } — hand it to a model as it is. |  [optional] |
| **system** | **kotlin.String** | The guidance that goes with the tool. |  [optional] |



