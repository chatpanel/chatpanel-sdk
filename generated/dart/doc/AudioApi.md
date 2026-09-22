# chatpanel.api.AudioApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**audioSpeech**](AudioApi.md#audiospeech) | **POST** /v1/audio/speech | Text to speech (OpenAI-compatible) — a WAV back.
[**audioTranscribe**](AudioApi.md#audiotranscribe) | **POST** /v1/audio/transcriptions | Transcribe an audio file (OpenAI-compatible).


# **audioSpeech**
> Uint8List audioSpeech(audioSpeechRequest)

Text to speech (OpenAI-compatible) — a WAV back.

`{ input, voice?, speed?, response_format? }` → `audio/wav`, from the gateway's own voice (Kokoro / VITS in-process) or the provider its table names (an ElevenLabs or OpenAI voice — then the text leaves the machine, and the audit says so). Not redacted: synthesis is for the person who wrote the text. `/tts` is the same handler with `text`. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getAudioApi();
final AudioSpeechRequest audioSpeechRequest = ; // AudioSpeechRequest | 

try {
    final response = api.audioSpeech(audioSpeechRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AudioApi->audioSpeech: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **audioSpeechRequest** | [**AudioSpeechRequest**](AudioSpeechRequest.md)|  | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: audio/wav, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **audioTranscribe**
> Transcription audioTranscribe(file, model, language, responseFormat, diarize)

Transcribe an audio file (OpenAI-compatible).

OpenAI's shape over the gateway's own transcriber — the in-process whisper, or the provider its capability table names (a hosted API, a container the Runtime started). A WAV is decoded by the gateway itself; mp3/m4a/webm/ogg/flac go through `ffmpeg` when it is on the gateway's PATH, else 415 says so. Beyond OpenAI: `diarize=true` puts a `speaker` on every segment of `verbose_json`. The live microphone keeps the session API (`/stt/sessions`); this is for a file. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getAudioApi();
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads.
final String model = model_example; // String | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients.
final String language = language_example; // String | ISO code; auto-detected when absent.
final String responseFormat = responseFormat_example; // String | 
final String diarize = diarize_example; // String | A speaker per segment (verbose_json).

try {
    final response = api.audioTranscribe(file, model, language, responseFormat, diarize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AudioApi->audioTranscribe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads. | 
 **model** | **String**| Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. | [optional] 
 **language** | **String**| ISO code; auto-detected when absent. | [optional] 
 **responseFormat** | **String**|  | [optional] [default to 'json']
 **diarize** | **String**| A speaker per segment (verbose_json). | [optional] 

### Return type

[**Transcription**](Transcription.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

