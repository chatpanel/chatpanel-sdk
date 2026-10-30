

# KbResearchResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**attachment** | [**KbResearchResponseAttachment**](KbResearchResponseAttachment.md) |  |  [optional] |
|**read** | **List&lt;Map&lt;String, Object&gt;&gt;** | What was read, grouped by document in page order (or the outline for a whole-document ask). |  |
|**hits** | [**List&lt;KbResearchResponseHitsInner&gt;**](KbResearchResponseHitsInner.md) |  |  |
|**queries** | **List&lt;String&gt;** |  |  |
|**verdict** | [**VerdictEnum**](#VerdictEnum) | The check&#39;s answer when a model was given. |  [optional] |
|**rounds** | **Integer** |  |  |
|**ask** | [**KbResearchResponseAsk**](KbResearchResponseAsk.md) |  |  [optional] |
|**how** | **String** | How it was searched, in words. |  [optional] |
|**frame** | [**KbResearchResponseFrame**](KbResearchResponseFrame.md) |  |  [optional] |
|**ms** | **BigDecimal** |  |  |



## Enum: VerdictEnum

| Name | Value |
|---- | -----|
| TRUE | &quot;true&quot; |
| PARTLY | &quot;partly&quot; |
| FALSE | &quot;false&quot; |



