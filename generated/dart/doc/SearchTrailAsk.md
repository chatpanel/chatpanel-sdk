# chatpanel.model.SearchTrailAsk

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The engine or provider asked — `searxng`, `serp`, `duckduckgo`, `startpage`, `bing`, `api:<id>`. | 
**outcome** | **String** | `answered` · `empty` (answered, found nothing) · `refused` (a refusing status, a timeout or no answer at all). | 
**found** | **int** | How many results it returned. | [optional] 
**status** | **int** | The HTTP status of a refusal (429, 403, …), when there was one. | [optional] 
**timedOut** | **bool** | It did not answer within its share of the budget. | [optional] 
**network** | **bool** | It failed at the network — no status at all. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


