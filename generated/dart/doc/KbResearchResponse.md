# chatpanel.model.KbResearchResponse

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment** | [**KbResearchResponseAttachment**](KbResearchResponseAttachment.md) |  | [optional] 
**read** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | What was read, grouped by document in page order (or the outline for a whole-document ask). | 
**hits** | [**BuiltList&lt;KbResearchResponseHitsInner&gt;**](KbResearchResponseHitsInner.md) |  | 
**queries** | **BuiltList&lt;String&gt;** |  | 
**verdict** | **String** | The check's answer when a model was given. | [optional] 
**rounds** | **int** |  | 
**ask** | [**KbResearchResponseAsk**](KbResearchResponseAsk.md) |  | [optional] 
**how** | **String** | How it was searched, in words. | [optional] 
**frame** | [**KbResearchResponseFrame**](KbResearchResponseFrame.md) |  | [optional] 
**ms** | **num** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


