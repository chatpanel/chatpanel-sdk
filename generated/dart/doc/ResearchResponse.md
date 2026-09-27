# chatpanel.model.ResearchResponse

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**question** | **String** |  | [optional] 
**plan** | [**ResearchPlan**](ResearchPlan.md) |  | 
**how** | **String** | How the store was searched, in words. | 
**framedBy** | **String** |  | [optional] 
**count** | **int** | Every match in the store, not the rows returned. | [optional] 
**rows** | [**BuiltList&lt;ResearchResponseRowsInner&gt;**](ResearchResponseRowsInner.md) |  | 
**groups** | [**BuiltList&lt;ResearchResponseGroupsInner&gt;**](ResearchResponseGroupsInner.md) |  | [optional] 
**read** | [**BuiltList&lt;ResearchResponseReadInner&gt;**](ResearchResponseReadInner.md) |  | 
**memory** | **BuiltList&lt;String&gt;** |  | [optional] 
**rounds** | **int** |  | [optional] 
**verdict** | **String** |  | [optional] 
**ms** | **int** |  | [optional] 
**next** | [**ResearchFollowUp**](ResearchFollowUp.md) |  | 
**attachment** | [**ResearchResponseAttachment**](ResearchResponseAttachment.md) |  | [optional] 
**size** | **int** |  | [optional] 
**newest** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


