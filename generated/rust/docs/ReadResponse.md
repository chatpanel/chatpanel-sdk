# ReadResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped. | 
**requested** | Option<**String**> | The URL that was asked for. | [optional]
**title** | **String** |  | 
**author** | Option<**String**> |  | [optional]
**published** | Option<**String**> | As the page declared it (ISO date or datetime when it gave one). | [optional]
**site** | Option<**String**> | The hostname of `url`. | [optional]
**lang** | Option<**String**> |  | [optional]
**format** | **Format** |  (enum: markdown, text) | 
**markdown** | Option<**String**> | The content, when `format` is markdown. | [optional]
**text** | Option<**String**> | The content, when `format` is text. | [optional]
**chars** | **i32** | Length of the content field. | 
**truncated** | **bool** |  | 
**sections** | [**Vec<models::ReadSection>**](ReadSection.md) |  | 
**fetched** | Option<**chrono::DateTime<chrono::FixedOffset>**> | When the page was fetched (the cached copy's time on a cache hit). | [optional]
**cached** | Option<**bool**> |  | [optional]
**provider** | **String** |  | 
**ms** | **f64** |  | 
**restricted** | Option<[**models::ReadRestriction**](ReadRestriction.md)> | Set when the page was not read as the article; the content is then the request's `snippet`. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


