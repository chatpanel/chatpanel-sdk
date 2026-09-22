# AudioAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**audioSpeech**](AudioAPI.md#audiospeech) | **POST** /v1/audio/speech | Text to speech (OpenAI-compatible) — a WAV back.
[**audioTranscribe**](AudioAPI.md#audiotranscribe) | **POST** /v1/audio/transcriptions | Transcribe an audio file (OpenAI-compatible).


# **audioSpeech**
```swift
    open class func audioSpeech(audioSpeechRequest: AudioSpeechRequest, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Text to speech (OpenAI-compatible) — a WAV back.

`{ input, voice?, speed?, response_format? }` → `audio/wav`, from the gateway's own voice (Kokoro / VITS in-process) or the provider its table names (an ElevenLabs or OpenAI voice — then the text leaves the machine, and the audit says so). Not redacted: synthesis is for the person who wrote the text. `/tts` is the same handler with `text`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let audioSpeechRequest = audio_speech_request(input: "input_example", voice: "voice_example", speed: 123, responseFormat: "responseFormat_example") // AudioSpeechRequest | 

// Text to speech (OpenAI-compatible) — a WAV back.
AudioAPI.audioSpeech(audioSpeechRequest: audioSpeechRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **audioSpeechRequest** | [**AudioSpeechRequest**](AudioSpeechRequest.md) |  | 

### Return type

**URL**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: audio/wav, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **audioTranscribe**
```swift
    open class func audioTranscribe(file: URL, model: String? = nil, language: String? = nil, responseFormat: ResponseFormat_audioTranscribe? = nil, diarize: Diarize_audioTranscribe? = nil, completion: @escaping (_ data: Transcription?, _ error: Error?) -> Void)
```

Transcribe an audio file (OpenAI-compatible).

OpenAI's shape over the gateway's own transcriber — the in-process whisper, or the provider its capability table names (a hosted API, a container the Runtime started). A WAV is decoded by the gateway itself; mp3/m4a/webm/ogg/flac go through `ffmpeg` when it is on the gateway's PATH, else 415 says so. Beyond OpenAI: `diarize=true` puts a `speaker` on every segment of `verbose_json`. The live microphone keeps the session API (`/stt/sessions`); this is for a file. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let file = URL(string: "https://example.com")! // URL | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads.
let model = "model_example" // String | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. (optional)
let language = "language_example" // String | ISO code; auto-detected when absent. (optional)
let responseFormat = "responseFormat_example" // String |  (optional) (default to .json)
let diarize = "diarize_example" // String | A speaker per segment (verbose_json). (optional)

// Transcribe an audio file (OpenAI-compatible).
AudioAPI.audioTranscribe(file: file, model: model, language: language, responseFormat: responseFormat, diarize: diarize) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **URL** | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads. | 
 **model** | **String** | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. | [optional] 
 **language** | **String** | ISO code; auto-detected when absent. | [optional] 
 **responseFormat** | **String** |  | [optional] [default to .json]
 **diarize** | **String** | A speaker per segment (verbose_json). | [optional] 

### Return type

[**Transcription**](Transcription.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

