

# ExtractContextResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**attachment** | [**ExtractContextResponseAttachment**](ExtractContextResponseAttachment.md) |  |  |
|**read** | [**List&lt;ExtractContextResponseReadInner&gt;**](ExtractContextResponseReadInner.md) |  |  |
|**skipped** | [**List&lt;ExtractContextResponseSkippedInner&gt;**](ExtractContextResponseSkippedInner.md) |  |  |
|**how** | [**HowEnum**](#HowEnum) |  |  |
|**budgetChars** | **Integer** |  |  |
|**provider** | **String** | &#x60;chatpanel-extract&#x60;. |  |
|**ms** | **BigDecimal** |  |  |



## Enum: HowEnum

| Name | Value |
|---- | -----|
| WHOLE | &quot;whole&quot; |
| PAGES | &quot;pages&quot; |
| NONE | &quot;none&quot; |



