# chatpanel.model.BrowserCall

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | A page action: open_tab, navigate, read_page, inspect_page, fill_form, click_by_text, screenshot, describe… | 
**args** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**task** | **String** | What the person asked for — shown to them when the browser asks to be used. | [optional] 
**timeoutMs** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


