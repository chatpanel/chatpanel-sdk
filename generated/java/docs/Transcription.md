

# Transcription


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**text** | **String** |  |  |
|**task** | [**TaskEnum**](#TaskEnum) | verbose_json only |  [optional] |
|**language** | **String** | verbose_json only |  [optional] |
|**duration** | **BigDecimal** | Seconds of audio; verbose_json only. |  [optional] |
|**provider** | [**ProviderEnum**](#ProviderEnum) | Who transcribed; verbose_json only. |  [optional] |
|**tookMs** | **Integer** |  |  [optional] |
|**segments** | [**List&lt;TranscriptionSegmentsInner&gt;**](TranscriptionSegmentsInner.md) | verbose_json only. |  [optional] |



## Enum: TaskEnum

| Name | Value |
|---- | -----|
| TRANSCRIBE | &quot;transcribe&quot; |



## Enum: ProviderEnum

| Name | Value |
|---- | -----|
| EMBEDDED | &quot;embedded&quot; |
| REMOTE | &quot;remote&quot; |
| CONTAINER | &quot;container&quot; |



