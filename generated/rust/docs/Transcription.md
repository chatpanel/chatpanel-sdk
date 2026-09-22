# Transcription

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** |  | 
**task** | Option<**Task**> | verbose_json only (enum: transcribe) | [optional]
**language** | Option<**String**> | verbose_json only | [optional]
**duration** | Option<**f64**> | Seconds of audio; verbose_json only. | [optional]
**provider** | Option<**Provider**> | Who transcribed; verbose_json only. (enum: embedded, remote, container) | [optional]
**took_ms** | Option<**i32**> |  | [optional]
**segments** | Option<[**Vec<models::TranscriptionSegmentsInner>**](TranscriptionSegmentsInner.md)> | verbose_json only. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


