# chatpanel.model.KbStatus

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**v** | **int** |  | [optional] 
**createdAt** | **int** |  | [optional] 
**updatedAt** | **int** |  | [optional] 
**docs** | **int** |  | 
**chunks** | **int** |  | 
**notes** | **int** |  | 
**proposed** | **int** | Notes awaiting acceptance. | [optional] 
**vectors** | **int** |  | 
**model** | **String** | The embedding model the vectors came from. | [optional] 
**dims** | **int** |  | [optional] 
**embed** | **String** |  | [optional] 
**entities** | **int** |  | 
**edges** | **int** |  | 
**reach** | **String** | The tightest provenance of its documents (`internal`, `web`, or empty). | [optional] 
**access** | [**KbAccess**](KbAccess.md) |  | [optional] 
**documents** | [**BuiltList&lt;KbDocument&gt;**](KbDocument.md) |  | 
**bytes** | **int** | On disk. | [optional] 
**dir** | **String** | The folder on disk — to a caller with the token only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


