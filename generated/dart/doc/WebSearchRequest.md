# chatpanel.model.WebSearchRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**q** | **String** |  | 
**limit** | **int** |  | [optional] [default to 8]
**lang** | **String** | en or en-US; honoured by SearXNG. | [optional] 
**site** | **String** | A hostname — the site: operator. | [optional] 
**freshness** | **String** | Honoured by SearXNG (time_range); week maps to month. | [optional] 
**read** | **int** | Read the top N results in this request. | [optional] [default to 0]
**provider** | **String** | One of the providers `GET /v1/capabilities` lists for `search`; 404 otherwise. | [optional] 
**budgetMs** | **num** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


