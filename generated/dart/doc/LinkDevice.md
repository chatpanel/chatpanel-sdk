# chatpanel.model.LinkDevice

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**kind** | **String** |  | [optional] 
**name** | **String** |  | 
**pairedAt** | **int** |  | [optional] 
**lastSeen** | **int** |  | [optional] 
**online** | **bool** |  | [optional] 
**via** | **String** | tunnel or relay, while online. | [optional] 
**partner** | [**LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional] 
**scopes** | **BuiltList&lt;String&gt;** |  | [optional] 
**route** | **String** | A partner's route | [optional] 
**host** | **String** |  | [optional] 
**routeClosed** | **bool** | A tunnel partner whose door shut when the gateway's route moved — pair it again to move it. | [optional] 
**folder** | **String** | Where a partner's agents work (0.90.0+, with agents). | [optional] 
**staleRelay** | **String** |  | [optional] 
**tunnelNeedsRelink** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


