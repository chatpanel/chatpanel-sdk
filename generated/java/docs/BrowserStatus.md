

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
|**actions** | **List&lt;Map&lt;String, Object&gt;&gt;** | The full specs behind the dispatcher (gateway 0.59.1+) — a hub lists each action with its own arguments. |  [optional] |



