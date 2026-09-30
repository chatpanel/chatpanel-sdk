# chatpanel.model.RuntimeServiceRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** |  | [optional] [default to 'start']
**model** | **String** | With `action: model` — a catalogue id or a Hugging Face owner/name. | [optional] 
**force** | **bool** | With `action: start` (gateway 0.74+) — start a native model past the live-memory check (`GET /v1/runtime/plan`). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


