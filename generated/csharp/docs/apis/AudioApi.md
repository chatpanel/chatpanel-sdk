# ChatPanel.Sdk.Api.AudioApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AudioSpeech**](AudioApi.md#audiospeech) | **POST** /v1/audio/speech | Text to speech (OpenAI-compatible) — a WAV back. |
| [**AudioTranscribe**](AudioApi.md#audiotranscribe) | **POST** /v1/audio/transcriptions | Transcribe an audio file (OpenAI-compatible). |

<a id="audiospeech"></a>
# **AudioSpeech**
> System.IO.Stream AudioSpeech (AudioSpeechRequest audioSpeechRequest)

Text to speech (OpenAI-compatible) — a WAV back.

`{ input, voice?, speed?, response_format? }` → `audio/wav`, from the gateway's own voice (Kokoro / VITS in-process) or the provider its table names (an ElevenLabs or OpenAI voice — then the text leaves the machine, and the audit says so). Not redacted: synthesis is for the person who wrote the text. `/tts` is the same handler with `text`. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **audioSpeechRequest** | [**AudioSpeechRequest**](AudioSpeechRequest.md) |  |  |

### Return type

**System.IO.Stream**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: audio/wav, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The audio. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="audiotranscribe"></a>
# **AudioTranscribe**
> Transcription AudioTranscribe (System.IO.Stream file, string model = null, string language = null, string responseFormat = null, string diarize = null)

Transcribe an audio file (OpenAI-compatible).

OpenAI's shape over the gateway's own transcriber — the in-process whisper, or the provider its capability table names (a hosted API, a container the Runtime started). A WAV is decoded by the gateway itself; mp3/m4a/webm/ogg/flac go through `ffmpeg` when it is on the gateway's PATH, else 415 says so. Beyond OpenAI: `diarize=true` puts a `speaker` on every segment of `verbose_json`. The live microphone keeps the session API (`/stt/sessions`); this is for a file. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **file** | **System.IO.Stream****System.IO.Stream** | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads. |  |
| **model** | **string** | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. | [optional]  |
| **language** | **string** | ISO code; auto-detected when absent. | [optional]  |
| **responseFormat** | **string** |  | [optional] [default to json] |
| **diarize** | **string** | A speaker per segment (verbose_json). | [optional]  |

### Return type

[**Transcription**](Transcription.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/plain


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The transcript. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **415** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

