# chatpanel.model.LinkStatus

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | 
**route** | **String** |  | [optional] 
**relay** | **String** |  | [optional] 
**tunnel** | **String** |  | [optional] 
**problem** | **String** |  | [optional] 
**routes** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) |  | [optional] 
**setup** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**devices** | [**BuiltList&lt;LinkDevice&gt;**](LinkDevice.md) |  | 
**pairing** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | A phone code waiting to be scanned. | [optional] 
**partnerPairing** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | A partner code waiting to be used. | [optional] 
**agentSessions** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


