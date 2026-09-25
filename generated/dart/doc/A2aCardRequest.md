# chatpanel.model.A2aCardRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | The agent's origin, or a card URL outright. | 
**force** | **bool** | Skip the TTL and revalidate — the ETag is still sent. | [optional] 
**forget** | **bool** | Drop the cached card first. | [optional] 
**auth** | **String** | An Authorization header value for agents that need one. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


