

# BrowserStatus


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**connected** | **Boolean** |  |  |
|**pending** | **Integer** | Calls waiting on the browser. |  |
|**waiting** | **Boolean** | A browser holds the stream but has not announced yet. |  [optional] |
|**browser** | [**BrowserInfo**](BrowserInfo.md) |  |  [optional] |
|**extension** | **String** | The extension&#39;s version. |  [optional] |
|**spec** | **Map&lt;String, Object&gt;** | The page tool: { name, description, parameters } — hand it to a model as it is. |  [optional] |
|**system** | **String** | The guidance that goes with the tool. |  [optional] |



