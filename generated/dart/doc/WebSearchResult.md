# chatpanel.model.WebSearchResult

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rank** | **int** |  | 
**url** | **String** |  | 
**title** | **String** |  | 
**snippet** | **String** |  | 
**engine** | **String** | The engine that produced it (SearXNG: the first of `engines`; serp: the results page asked). | [optional] 
**engines** | **BuiltList&lt;String&gt;** | SearXNG: every engine that returned it. | [optional] 
**score** | **num** | SearXNG's fused score. | [optional] 
**publishedDate** | **String** |  | [optional] 
**read** | [**ReadResponse**](ReadResponse.md) | Present for the top `read` results. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


