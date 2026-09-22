# chatpanel.model.FusionListFusionsInner

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**kind** | **String** |  | 
**capability** | **String** |  | 
**label** | **String** |  | [optional] 
**members** | [**BuiltList&lt;FusionListFusionsInnerMembersInner&gt;**](FusionListFusionsInnerMembersInner.md) |  | 
**derived** | **bool** | Read from the gateway’s state, not composed. | [optional] 
**source_** | **String** | For a derived one: ner, or the runtime service. | [optional] 
**running** | **bool** |  | [optional] 
**describe** | **String** | The fusion in a sentence. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


