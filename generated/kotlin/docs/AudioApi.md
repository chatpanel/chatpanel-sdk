# AudioApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**audioSpeech**](AudioApi.md#audioSpeech) | **POST** /v1/audio/speech | Text to speech (OpenAI-compatible) — a WAV back. |
| [**audioTranscribe**](AudioApi.md#audioTranscribe) | **POST** /v1/audio/transcriptions | Transcribe an audio file (OpenAI-compatible). |


<a id="audioSpeech"></a>
# **audioSpeech**
> java.io.File audioSpeech(audioSpeechRequest)

Text to speech (OpenAI-compatible) — a WAV back.

&#x60;{ input, voice?, speed?, response_format? }&#x60; → &#x60;audio/wav&#x60;, from the gateway&#39;s own voice (Kokoro / VITS in-process) or the provider its table names (an ElevenLabs or OpenAI voice — then the text leaves the machine, and the audit says so). Not redacted: synthesis is for the person who wrote the text. &#x60;/tts&#x60; is the same handler with &#x60;text&#x60;. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = AudioApi()
val audioSpeechRequest : AudioSpeechRequest =  // AudioSpeechRequest | 
try {
    val result : java.io.File = apiInstance.audioSpeech(audioSpeechRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AudioApi#audioSpeech")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AudioApi#audioSpeech")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **audioSpeechRequest** | [**AudioSpeechRequest**](AudioSpeechRequest.md)|  | |

### Return type

[**java.io.File**](java.io.File.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="audioTranscribe"></a>
# **audioTranscribe**
> Transcription audioTranscribe(file, model, language, responseFormat, diarize)

Transcribe an audio file (OpenAI-compatible).

OpenAI&#39;s shape over the gateway&#39;s own transcriber — the in-process whisper, or the provider its capability table names (a hosted API, a container the Runtime started). A WAV is decoded by the gateway itself; mp3/m4a/webm/ogg/flac go through &#x60;ffmpeg&#x60; when it is on the gateway&#39;s PATH, else 415 says so. Beyond OpenAI: &#x60;diarize&#x3D;true&#x60; puts a &#x60;speaker&#x60; on every segment of &#x60;verbose_json&#x60;. The live microphone keeps the session API (&#x60;/stt/sessions&#x60;); this is for a file. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = AudioApi()
val file : java.io.File = BINARY_DATA_HERE // java.io.File | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads.
val model : kotlin.String = model_example // kotlin.String | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients.
val language : kotlin.String = language_example // kotlin.String | ISO code; auto-detected when absent.
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | 
val diarize : kotlin.String = diarize_example // kotlin.String | A speaker per segment (verbose_json).
try {
    val result : Transcription = apiInstance.audioTranscribe(file, model, language, responseFormat, diarize)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AudioApi#audioTranscribe")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AudioApi#audioTranscribe")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **file** | **java.io.File**| WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads. | |
| **model** | **kotlin.String**| Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. | [optional] |
| **language** | **kotlin.String**| ISO code; auto-detected when absent. | [optional] |
| **responseFormat** | **kotlin.String**|  | [optional] [default to ResponseFormat.json] [enum: json, text, verbose_json] |
| **diarize** | **kotlin.String**| A speaker per segment (verbose_json). | [optional] [enum: true, false] |

### Return type

[**Transcription**](Transcription.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/plain

