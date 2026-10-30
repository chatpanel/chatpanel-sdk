# chatpanel.model.KbResearchRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**question** | **String** |  | 
**answer** | **String** | The person's answer to a previous `ask` (a document title, or `all`). | [optional] 
**ask** | **bool** | `false`: never pause; search every document. | [optional] [default to true]
**model** | **String** | A model (from `GET /v1/models`) for the evidence check; token-gated. | [optional] 
**previous** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | The previous response's `frame`, for a follow-up. | [optional] 
**docs** | **BuiltList&lt;String&gt;** | Only these documents. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


