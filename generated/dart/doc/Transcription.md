# chatpanel.model.Transcription

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** |  | 
**task** | **String** | verbose_json only | [optional] 
**language** | **String** | verbose_json only | [optional] 
**duration** | **num** | Seconds of audio; verbose_json only. | [optional] 
**provider** | **String** | Who transcribed; verbose_json only. | [optional] 
**tookMs** | **int** |  | [optional] 
**segments** | [**BuiltList&lt;TranscriptionSegmentsInner&gt;**](TranscriptionSegmentsInner.md) | verbose_json only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


