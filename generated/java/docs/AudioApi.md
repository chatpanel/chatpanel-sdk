# AudioApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**audioSpeech**](AudioApi.md#audioSpeech) | **POST** /v1/audio/speech | Text to speech (OpenAI-compatible) — a WAV back. |
| [**audioSpeechWithHttpInfo**](AudioApi.md#audioSpeechWithHttpInfo) | **POST** /v1/audio/speech | Text to speech (OpenAI-compatible) — a WAV back. |
| [**audioTranscribe**](AudioApi.md#audioTranscribe) | **POST** /v1/audio/transcriptions | Transcribe an audio file (OpenAI-compatible). |
| [**audioTranscribeWithHttpInfo**](AudioApi.md#audioTranscribeWithHttpInfo) | **POST** /v1/audio/transcriptions | Transcribe an audio file (OpenAI-compatible). |



## audioSpeech

> File audioSpeech(audioSpeechRequest)

Text to speech (OpenAI-compatible) — a WAV back.

&#x60;{ input, voice?, speed?, response_format? }&#x60; → &#x60;audio/wav&#x60;, from the gateway&#39;s own voice (Kokoro / VITS in-process) or the provider its table names (an ElevenLabs or OpenAI voice — then the text leaves the machine, and the audit says so). Not redacted: synthesis is for the person who wrote the text. &#x60;/tts&#x60; is the same handler with &#x60;text&#x60;. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AudioApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AudioApi apiInstance = new AudioApi(defaultClient);
        AudioSpeechRequest audioSpeechRequest = new AudioSpeechRequest(); // AudioSpeechRequest | 
        try {
            File result = apiInstance.audioSpeech(audioSpeechRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AudioApi#audioSpeech");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **audioSpeechRequest** | [**AudioSpeechRequest**](AudioSpeechRequest.md)|  | |

### Return type

[**File**](File.md)


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

## audioSpeechWithHttpInfo

> ApiResponse<File> audioSpeechWithHttpInfo(audioSpeechRequest)

Text to speech (OpenAI-compatible) — a WAV back.

&#x60;{ input, voice?, speed?, response_format? }&#x60; → &#x60;audio/wav&#x60;, from the gateway&#39;s own voice (Kokoro / VITS in-process) or the provider its table names (an ElevenLabs or OpenAI voice — then the text leaves the machine, and the audit says so). Not redacted: synthesis is for the person who wrote the text. &#x60;/tts&#x60; is the same handler with &#x60;text&#x60;. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AudioApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AudioApi apiInstance = new AudioApi(defaultClient);
        AudioSpeechRequest audioSpeechRequest = new AudioSpeechRequest(); // AudioSpeechRequest | 
        try {
            ApiResponse<File> response = apiInstance.audioSpeechWithHttpInfo(audioSpeechRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling AudioApi#audioSpeech");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **audioSpeechRequest** | [**AudioSpeechRequest**](AudioSpeechRequest.md)|  | |

### Return type

ApiResponse<[**File**](File.md)>


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


## audioTranscribe

> Transcription audioTranscribe(_file, model, language, responseFormat, diarize)

Transcribe an audio file (OpenAI-compatible).

OpenAI&#39;s shape over the gateway&#39;s own transcriber — the in-process whisper, or the provider its capability table names (a hosted API, a container the Runtime started). A WAV is decoded by the gateway itself; mp3/m4a/webm/ogg/flac go through &#x60;ffmpeg&#x60; when it is on the gateway&#39;s PATH, else 415 says so. Beyond OpenAI: &#x60;diarize&#x3D;true&#x60; puts a &#x60;speaker&#x60; on every segment of &#x60;verbose_json&#x60;. The live microphone keeps the session API (&#x60;/stt/sessions&#x60;); this is for a file. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AudioApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AudioApi apiInstance = new AudioApi(defaultClient);
        File _file = new File("/path/to/file"); // File | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads.
        String model = "model_example"; // String | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients.
        String language = "language_example"; // String | ISO code; auto-detected when absent.
        String responseFormat = "json"; // String | 
        String diarize = "true"; // String | A speaker per segment (verbose_json).
        try {
            Transcription result = apiInstance.audioTranscribe(_file, model, language, responseFormat, diarize);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AudioApi#audioTranscribe");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **_file** | **File**| WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads. | |
| **model** | **String**| Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. | [optional] |
| **language** | **String**| ISO code; auto-detected when absent. | [optional] |
| **responseFormat** | **String**|  | [optional] [default to json] [enum: json, text, verbose_json] |
| **diarize** | **String**| A speaker per segment (verbose_json). | [optional] [enum: true, false] |

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

## audioTranscribeWithHttpInfo

> ApiResponse<Transcription> audioTranscribeWithHttpInfo(_file, model, language, responseFormat, diarize)

Transcribe an audio file (OpenAI-compatible).

OpenAI&#39;s shape over the gateway&#39;s own transcriber — the in-process whisper, or the provider its capability table names (a hosted API, a container the Runtime started). A WAV is decoded by the gateway itself; mp3/m4a/webm/ogg/flac go through &#x60;ffmpeg&#x60; when it is on the gateway&#39;s PATH, else 415 says so. Beyond OpenAI: &#x60;diarize&#x3D;true&#x60; puts a &#x60;speaker&#x60; on every segment of &#x60;verbose_json&#x60;. The live microphone keeps the session API (&#x60;/stt/sessions&#x60;); this is for a file. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.AudioApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        AudioApi apiInstance = new AudioApi(defaultClient);
        File _file = new File("/path/to/file"); // File | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads.
        String model = "model_example"; // String | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients.
        String language = "language_example"; // String | ISO code; auto-detected when absent.
        String responseFormat = "json"; // String | 
        String diarize = "true"; // String | A speaker per segment (verbose_json).
        try {
            ApiResponse<Transcription> response = apiInstance.audioTranscribeWithHttpInfo(_file, model, language, responseFormat, diarize);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling AudioApi#audioTranscribe");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **_file** | **File**| WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads. | |
| **model** | **String**| Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. | [optional] |
| **language** | **String**| ISO code; auto-detected when absent. | [optional] |
| **responseFormat** | **String**|  | [optional] [default to json] [enum: json, text, verbose_json] |
| **diarize** | **String**| A speaker per segment (verbose_json). | [optional] [enum: true, false] |

### Return type

ApiResponse<[**Transcription**](Transcription.md)>


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

