# \AudioAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AudioSpeech**](AudioAPI.md#AudioSpeech) | **Post** /v1/audio/speech | Text to speech (OpenAI-compatible) — a WAV back.
[**AudioTranscribe**](AudioAPI.md#AudioTranscribe) | **Post** /v1/audio/transcriptions | Transcribe an audio file (OpenAI-compatible).



## AudioSpeech

> *os.File AudioSpeech(ctx).AudioSpeechRequest(audioSpeechRequest).Execute()

Text to speech (OpenAI-compatible) — a WAV back.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {
	audioSpeechRequest := *openapiclient.NewAudioSpeechRequest("Input_example") // AudioSpeechRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AudioAPI.AudioSpeech(context.Background()).AudioSpeechRequest(audioSpeechRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AudioAPI.AudioSpeech``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AudioSpeech`: *os.File
	fmt.Fprintf(os.Stdout, "Response from `AudioAPI.AudioSpeech`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAudioSpeechRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **audioSpeechRequest** | [**AudioSpeechRequest**](AudioSpeechRequest.md) |  | 

### Return type

[***os.File**](*os.File.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: audio/wav, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AudioTranscribe

> Transcription AudioTranscribe(ctx).File(file).Model(model).Language(language).ResponseFormat(responseFormat).Diarize(diarize).Execute()

Transcribe an audio file (OpenAI-compatible).



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {
	file := os.NewFile(1234, "some_file") // *os.File | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads.
	model := "model_example" // string | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. (optional)
	language := "language_example" // string | ISO code; auto-detected when absent. (optional)
	responseFormat := "responseFormat_example" // string |  (optional) (default to "json")
	diarize := "diarize_example" // string | A speaker per segment (verbose_json). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AudioAPI.AudioTranscribe(context.Background()).File(file).Model(model).Language(language).ResponseFormat(responseFormat).Diarize(diarize).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AudioAPI.AudioTranscribe``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AudioTranscribe`: Transcription
	fmt.Fprintf(os.Stdout, "Response from `AudioAPI.AudioTranscribe`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAudioTranscribeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | ***os.File** | WAV (any rate, channels, 8/16/24/32-bit or float), or any format ffmpeg reads. | 
 **model** | **string** | Ignored — the gateway transcribes with what its table says; kept for OpenAI clients. | 
 **language** | **string** | ISO code; auto-detected when absent. | 
 **responseFormat** | **string** |  | [default to &quot;json&quot;]
 **diarize** | **string** | A speaker per segment (verbose_json). | 

### Return type

[**Transcription**](Transcription.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

