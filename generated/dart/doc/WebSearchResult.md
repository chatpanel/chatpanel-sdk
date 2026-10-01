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
**engine** | **String** | The engine that produced it (SearXNG: the first of `engines`; serp: the engine asked — `duckduckgo`, `startpage`, `bing`, or `api:<id>` for a search API such as `api:exa`). Since gateway 0.79.0 every result carries it; the provider id when nothing finer is known. | [optional] 
**via** | **String** | The kind of door it came through: `gateway` · `searxng` · `api` (a search API) · `page` (a results page read) · `browser` (the person's own browser). A client meeting a value it does not know shows it as it is. Since gateway 0.79.0. | [optional] 
**engines** | **BuiltList&lt;String&gt;** | SearXNG: every engine that returned it. | [optional] 
**score** | **num** | SearXNG's fused score. | [optional] 
**publishedDate** | **String** |  | [optional] 
**read** | [**ReadResponse**](ReadResponse.md) | Present for the top `read` results. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


