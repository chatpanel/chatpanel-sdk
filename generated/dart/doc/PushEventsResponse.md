# chatpanel.model.PushEventsResponse

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**appended** | **int** |  | 
**duplicates** | **int** | Events already held — a retry's share. | 
**rejected** | [**BuiltList&lt;PushEventsResponseRejectedInner&gt;**](PushEventsResponseRejectedInner.md) |  | 
**cursor** | **BuiltMap&lt;String, int&gt;** | `{ host: seq }` — the highest seq held per host. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


