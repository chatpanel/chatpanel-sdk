
# KbResearchResponse

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **read** | **kotlin.collections.List&lt;kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;&gt;** | What was read, grouped by document in page order (or the outline for a whole-document ask). |  |
| **hits** | [**kotlin.collections.List&lt;KbResearchResponseHitsInner&gt;**](KbResearchResponseHitsInner.md) |  |  |
| **queries** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  |
| **rounds** | **kotlin.Int** |  |  |
| **ms** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  |
| **attachment** | [**KbResearchResponseAttachment**](KbResearchResponseAttachment.md) |  |  [optional] |
| **verdict** | [**inline**](#Verdict) | The check&#39;s answer when a model was given. |  [optional] |
| **ask** | [**KbResearchResponseAsk**](KbResearchResponseAsk.md) |  |  [optional] |
| **how** | **kotlin.String** | How it was searched, in words. |  [optional] |
| **frame** | [**KbResearchResponseFrame**](KbResearchResponseFrame.md) |  |  [optional] |


<a id="Verdict"></a>
## Enum: verdict
| Name | Value |
| ---- | ----- |
| verdict | true, partly, false,  |



