# chatpanel.model.ReadResponse

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped. | 
**requested** | **String** | The URL that was asked for. | [optional] 
**title** | **String** |  | 
**author** | **String** |  | [optional] 
**published** | **String** | As the page declared it (ISO date or datetime when it gave one). | [optional] 
**site** | **String** | The hostname of `url`. | [optional] 
**lang** | **String** |  | [optional] 
**format** | **String** |  | 
**markdown** | **String** | The content, when `format` is markdown. | [optional] 
**text** | **String** | The content, when `format` is text. | [optional] 
**chars** | **int** | Length of the content field. | 
**truncated** | **bool** |  | 
**sections** | [**BuiltList&lt;ReadSection&gt;**](ReadSection.md) |  | 
**fetched** | [**DateTime**](DateTime.md) | When the page was fetched (the cached copy's time on a cache hit). | [optional] 
**cached** | **bool** |  | [optional] 
**provider** | **String** |  | 
**ms** | **num** |  | 
**restricted** | [**ReadRestriction**](ReadRestriction.md) | Set when the page was not read as the article; the content is then the request's `snippet`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


