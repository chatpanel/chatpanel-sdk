
# Transcription

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **text** | **kotlin.String** |  |  |
| **task** | [**inline**](#Task) | verbose_json only |  [optional] |
| **language** | **kotlin.String** | verbose_json only |  [optional] |
| **duration** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Seconds of audio; verbose_json only. |  [optional] |
| **provider** | [**inline**](#Provider) | Who transcribed; verbose_json only. |  [optional] |
| **tookMs** | **kotlin.Int** |  |  [optional] |
| **segments** | [**kotlin.collections.List&lt;TranscriptionSegmentsInner&gt;**](TranscriptionSegmentsInner.md) | verbose_json only. |  [optional] |


<a id="Task"></a>
## Enum: task
| Name | Value |
| ---- | ----- |
| task | transcribe |


<a id="Provider"></a>
## Enum: provider
| Name | Value |
| ---- | ----- |
| provider | embedded, remote, container |



