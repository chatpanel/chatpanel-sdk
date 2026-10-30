

# ExtractContextResponseReadInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  [optional] |
|**title** | **String** |  |  [optional] |
|**of** | **Integer** | The document&#39;s page count. |  [optional] |
|**pages** | **List&lt;Integer&gt;** | The pages in the block. |  [optional] |
|**how** | [**HowEnum**](#HowEnum) |  |  [optional] |
|**hash** | **String** | The document&#39;s hash — reuse it on the next call. |  [optional] |



## Enum: HowEnum

| Name | Value |
|---- | -----|
| WHOLE | &quot;whole&quot; |
| PAGES | &quot;pages&quot; |



