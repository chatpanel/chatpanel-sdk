# chatpanel.model.PutRecordsRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host** | **String** | Who is pushing — recorded on every record. | [optional] 
**at** | **int** |  | [optional] 
**records** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Whole records or tombstones. A record with `baseRev` (gateway 0.63.0+) is written only while the stored one is at that revision (0 = none stored); otherwise it comes back in `conflicts`. Without it the newer stamp wins. | [optional] 
**entries** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Sealed backup entries, opened with the stored passphrase. | [optional] 
**merge** | **bool** | Gateway 0.64.0+: a NOTE sent with a `baseRev` that is no longer current is merged against that version (title, tags and text three-way) instead of coming back in `conflicts`; the result is in `merged`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


