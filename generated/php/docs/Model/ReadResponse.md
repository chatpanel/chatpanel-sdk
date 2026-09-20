# ReadResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **string** | Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped. |
**requested** | **string** | The URL that was asked for. | [optional]
**title** | **string** |  |
**author** | **string** |  | [optional]
**published** | **string** | As the page declared it (ISO date or datetime when it gave one). | [optional]
**site** | **string** | The hostname of &#x60;url&#x60;. | [optional]
**lang** | **string** |  | [optional]
**format** | **string** |  |
**markdown** | **string** | The content, when &#x60;format&#x60; is markdown. | [optional]
**text** | **string** | The content, when &#x60;format&#x60; is text. | [optional]
**chars** | **int** | Length of the content field. |
**truncated** | **bool** |  |
**sections** | [**\ChatPanelSdk\Model\ReadSection[]**](ReadSection.md) |  |
**fetched** | **\DateTime** | When the page was fetched (the cached copy&#39;s time on a cache hit). | [optional]
**cached** | **bool** |  | [optional]
**provider** | **string** |  |
**ms** | **float** |  |
**restricted** | [**\ChatPanelSdk\Model\ReadRestriction**](ReadRestriction.md) | Set when the page was not read as the article; the content is then the request&#39;s &#x60;snippet&#x60;. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
