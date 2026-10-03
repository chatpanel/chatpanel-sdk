# chatpanel.model.LinkPairResult

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | A phone's QR text. | [optional] 
**svg** | **String** | The QR as SVG. | [optional] 
**expiresAt** | **int** | Epoch ms when the code stops working. | [optional] 
**room** | **String** | The device id it pairs. | [optional] 
**confirmed** | **bool** | Partner pairings — false is a preview only. | [optional] 
**preview** | [**LinkPartnerPreview**](LinkPartnerPreview.md) |  | [optional] 
**code** | **String** | A partner's one-time `cplink1.` code — give it to the partner through a channel you trust. | [optional] 
**kind** | **String** |  | [optional] 
**partner** | [**LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional] 
**scopes** | **BuiltList&lt;String&gt;** |  | [optional] 
**route** | **String** |  | [optional] 
**host** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


