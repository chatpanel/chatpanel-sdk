# chatpanel.model.LinkPairRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | **String** | Absent is a phone. | [optional] 
**name** | **String** | A phone pairing — what the phone calls this computer. | [optional] 
**partner** | [**LinkPairRequestPartner**](LinkPairRequestPartner.md) |  | [optional] 
**scopes** | [**LinkPairRequestScopes**](LinkPairRequestScopes.md) |  | [optional] 
**route** | **String** | The partner's one path. Absent is the gateway's own route. | [optional] 
**relay** | **String** | The https relay for `route relay`. | [optional] 
**folder** | **String** | Where the partner's agents work (with `agents`, 0.90.0+): an absolute path or ~/…; absent is ~/.chatpanel/partners/<name>. Never the disk or the home folder. | [optional] 
**confirm** | **bool** | The owner saw the preview and said yes. Without it nothing is issued. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


