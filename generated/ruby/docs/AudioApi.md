# ChatPanel::AudioApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**audio_speech**](AudioApi.md#audio_speech) | **POST** /v1/audio/speech | Text to speech (OpenAI-compatible) — a WAV back. |
| [**audio_transcribe**](AudioApi.md#audio_transcribe) | **POST** /v1/audio/transcriptions | Transcribe an audio file (OpenAI-compatible). |


## audio_speech

> File audio_speech(audio_speech_request)

Text to speech (OpenAI-compatible) — a WAV back.

`{ input, voice?, speed?, response_format? }` → `audio/wav`, from the gateway's own voice (Kokoro / VITS in-process) or the provider its table names (an ElevenLabs or OpenAI voice — then the text leaves the machine, and the audit says so). Not redacted: synthesis is for the person who wrote the text. `/tts` is the same handler with `text`. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::AudioApi.new
audio_speech_request = ChatPanel::AudioSpeechRequest.new({input: 'input_example'}) # AudioSpeechRequest | 

begin
  # Text to speech (OpenAI-compatible) — a WAV back.
  result = api_instance.audio_speech(audio_speech_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling AudioApi->audio_speech: #{e}"
end
```

#### Using the audio_speech_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> audio_speech_with_http_info(audio_speech_request)

```ruby
begin
  # Text to speech (OpenAI-compatible) — a WAV back.
  data, status_code, headers = api_instance.audio_speech_with_http_info(audio_speech_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue ChatPanel::ApiError => e
  puts "Error when calling AudioApi->audio_speech_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audio_speech_request** | [**AudioSpeechRequest**](AudioSpeechRequest.md) |  |  |

### Return type

**File**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: audio/wav, application/json


## audio_transcribe

> <Transcription> audio_transcribe(file, opts)

Transcribe an audio file (OpenAI-compatible).

OpenAI's shape over the gateway's own transcriber — the in-process whisper, or the provider its capability table names (a hosted API, a container the Runtime started). A WAV is decoded by the gateway itself; mp3/m4a/webm/ogg/flac go through `ffmpeg` when it is on the gateway's PATH, else 415 says so. Beyond OpenAI: `diarize=true` puts a `speaker` on every segment of `verbose_json`. The live microphone keeps the session API (`/stt/sessions`); this is for a file. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::AudioApi.new
file = File.new('/path/to/some/file') # File | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads.
opts = {
  model: 'model_example', # String | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients.
  language: 'language_example', # String | ISO code; auto-detected when absent.
  response_format: 'json', # String | 
  diarize: 'true' # String | A speaker per segment (verbose_json).
}

begin
  # Transcribe an audio file (OpenAI-compatible).
  result = api_instance.audio_transcribe(file, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling AudioApi->audio_transcribe: #{e}"
end
```

#### Using the audio_transcribe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Transcription>, Integer, Hash)> audio_transcribe_with_http_info(file, opts)

```ruby
begin
  # Transcribe an audio file (OpenAI-compatible).
  data, status_code, headers = api_instance.audio_transcribe_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Transcription>
rescue ChatPanel::ApiError => e
  puts "Error when calling AudioApi->audio_transcribe_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads. |  |
| **model** | **String** | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. | [optional] |
| **language** | **String** | ISO code; auto-detected when absent. | [optional] |
| **response_format** | **String** |  | [optional][default to &#39;json&#39;] |
| **diarize** | **String** | A speaker per segment (verbose_json). | [optional] |

### Return type

[**Transcription**](Transcription.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, text/plain

