# \AudioApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**audio_speech**](AudioApi.md#audio_speech) | **POST** /v1/audio/speech | Text to speech (OpenAI-compatible) — a WAV back.
[**audio_transcribe**](AudioApi.md#audio_transcribe) | **POST** /v1/audio/transcriptions | Transcribe an audio file (OpenAI-compatible).



## audio_speech

> std::path::PathBuf audio_speech(audio_speech_request)
Text to speech (OpenAI-compatible) — a WAV back.

`{ input, voice?, speed?, response_format? }` → `audio/wav`, from the gateway's own voice (Kokoro / VITS in-process) or the provider its table names (an ElevenLabs or OpenAI voice — then the text leaves the machine, and the audit says so). Not redacted: synthesis is for the person who wrote the text. `/tts` is the same handler with `text`. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**audio_speech_request** | [**AudioSpeechRequest**](AudioSpeechRequest.md) |  | [required] |

### Return type

[**std::path::PathBuf**](std::path::PathBuf.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: audio/wav, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## audio_transcribe

> models::Transcription audio_transcribe(file, model, language, response_format, diarize)
Transcribe an audio file (OpenAI-compatible).

OpenAI's shape over the gateway's own transcriber — the in-process whisper, or the provider its capability table names (a hosted API, a container the Runtime started). A WAV is decoded by the gateway itself; mp3/m4a/webm/ogg/flac go through `ffmpeg` when it is on the gateway's PATH, else 415 says so. Beyond OpenAI: `diarize=true` puts a `speaker` on every segment of `verbose_json`. The live microphone keeps the session API (`/stt/sessions`); this is for a file. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**file** | **std::path::PathBuf** | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads. | [required] |
**model** | Option<**String**> | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. |  |
**language** | Option<**String**> | ISO code; auto-detected when absent. |  |
**response_format** | Option<**String**> |  |  |[default to json]
**diarize** | Option<**String**> | A speaker per segment (verbose_json). |  |

### Return type

[**models::Transcription**](Transcription.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

