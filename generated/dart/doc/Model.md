# chatpanel.model.Model

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**object** | **String** |  | 
**ownedBy** | **String** |  | [optional] 
**provider** | **String** |  | [optional] 
**providerType** | **String** | 0.6.64+ | [optional] 
**api** | **String** |  | [optional] 
**endpoints** | **BuiltList&lt;String&gt;** |  | [optional] 
**available** | **bool** | 0.6.64+ for bridge agents — whether the CLI is installed. | [optional] 
**configured** | **bool** | 0.6.66+ — false when a turn is known to fail for something the user can fix. | [optional] 
**reason** | **String** |  | [optional] 
**tools** | **bool** | False when the agent cannot take per-turn tools. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


