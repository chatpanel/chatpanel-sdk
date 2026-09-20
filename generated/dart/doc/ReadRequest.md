# chatpanel.model.ReadRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Absolute http(s) URL of a public page. | 
**format** | **String** |  | [optional] [default to 'markdown']
**maxChars** | **int** | Cut at a section boundary near this length; `truncated` says so. | [optional] 
**snippet** | **String** | A search snippet to stand in for the content when the page cannot be read. | [optional] 
**provider** | **String** | One of the providers `GET /v1/capabilities` lists for `read`; 404 otherwise. | [optional] 
**budgetMs** | **num** | Refused before fetching if the provider's record predicts it cannot be met. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


