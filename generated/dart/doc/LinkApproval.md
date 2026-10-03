# chatpanel.model.LinkApproval

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**partner** | **String** | The partner whose agent asks. | 
**device** | **String** |  | [optional] 
**conversation** | **String** | The partner's conversation (`partner.<device>.<thread>`), or the turn's own. | [optional] 
**title** | **String** | Who asks and what kind of action — \"Atlas’s agent asks — run a command?\" | 
**body** | **String** | The command | 
**tool** | **String** |  | [optional] 
**createdAt** | **int** |  | 
**expiresAt** | **int** | When it becomes a no. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


