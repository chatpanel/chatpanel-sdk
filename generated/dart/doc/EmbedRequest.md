# chatpanel.model.EmbedRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**input** | [**EmbedRequestInput**](EmbedRequestInput.md) |  | 
**model** | **String** | The model `GET /v1/capabilities` lists for `embed`; 404 otherwise. | [optional] 
**kind** | **String** | What the texts are — a model with instruction prefixes (E5) prefixes each accordingly. | [optional] [default to 'passage']
**budgetMs** | **num** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


