# chatpanel.model.KbGraphRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**node** | **String** | An entity, section or topic by name (or a node id). | 
**to** | **String** | A second node: the path from `node` to it. | [optional] 
**hops** | **int** |  | [optional] [default to 1]
**kinds** | **BuiltList&lt;String&gt;** |  | [optional] 
**limit** | **int** |  | [optional] [default to 20]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


