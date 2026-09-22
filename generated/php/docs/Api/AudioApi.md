# ChatPanelSdk\AudioApi

Speech in and out, OpenAI-shaped, over the gateway&#39;s own engines or its table&#39;s provider.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**audioSpeech()**](AudioApi.md#audioSpeech) | **POST** /v1/audio/speech | Text to speech (OpenAI-compatible) — a WAV back. |
| [**audioTranscribe()**](AudioApi.md#audioTranscribe) | **POST** /v1/audio/transcriptions | Transcribe an audio file (OpenAI-compatible). |


## `audioSpeech()`

```php
audioSpeech($audio_speech_request): \SplFileObject
```

Text to speech (OpenAI-compatible) — a WAV back.

`{ input, voice?, speed?, response_format? }` → `audio/wav`, from the gateway's own voice (Kokoro / VITS in-process) or the provider its table names (an ElevenLabs or OpenAI voice — then the text leaves the machine, and the audit says so). Not redacted: synthesis is for the person who wrote the text. `/tts` is the same handler with `text`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\AudioApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$audio_speech_request = new \ChatPanelSdk\Model\AudioSpeechRequest(); // \ChatPanelSdk\Model\AudioSpeechRequest

try {
    $result = $apiInstance->audioSpeech($audio_speech_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AudioApi->audioSpeech: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **audio_speech_request** | [**\ChatPanelSdk\Model\AudioSpeechRequest**](../Model/AudioSpeechRequest.md)|  | |

### Return type

**\SplFileObject**

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `audio/wav`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `audioTranscribe()`

```php
audioTranscribe($file, $model, $language, $response_format, $diarize): \ChatPanelSdk\Model\Transcription
```

Transcribe an audio file (OpenAI-compatible).

OpenAI's shape over the gateway's own transcriber — the in-process whisper, or the provider its capability table names (a hosted API, a container the Runtime started). A WAV is decoded by the gateway itself; mp3/m4a/webm/ogg/flac go through `ffmpeg` when it is on the gateway's PATH, else 415 says so. Beyond OpenAI: `diarize=true` puts a `speaker` on every segment of `verbose_json`. The live microphone keeps the session API (`/stt/sessions`); this is for a file.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\AudioApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$file = '/path/to/file.txt'; // \SplFileObject | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads.
$model = 'model_example'; // string | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients.
$language = 'language_example'; // string | ISO code; auto-detected when absent.
$response_format = 'json'; // string
$diarize = 'diarize_example'; // string | A speaker per segment (verbose_json).

try {
    $result = $apiInstance->audioTranscribe($file, $model, $language, $response_format, $diarize);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AudioApi->audioTranscribe: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **file** | **\SplFileObject****\SplFileObject**| WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads. | |
| **model** | **string**| Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. | [optional] |
| **language** | **string**| ISO code; auto-detected when absent. | [optional] |
| **response_format** | **string**|  | [optional] [default to &#39;json&#39;] |
| **diarize** | **string**| A speaker per segment (verbose_json). | [optional] |

### Return type

[**\ChatPanelSdk\Model\Transcription**](../Model/Transcription.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `multipart/form-data`
- **Accept**: `application/json`, `text/plain`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
