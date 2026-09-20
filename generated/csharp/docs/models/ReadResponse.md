# ChatPanel.Sdk.Model.ReadResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **string** | Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped. | 
**Title** | **string** |  | 
**Format** | **string** |  | 
**Chars** | **int** | Length of the content field. | 
**Truncated** | **bool** |  | 
**Sections** | [**List&lt;ReadSection&gt;**](ReadSection.md) |  | 
**Provider** | **string** |  | 
**Ms** | **decimal** |  | 
**Requested** | **string** | The URL that was asked for. | [optional] 
**Author** | **string** |  | [optional] 
**Published** | **string** | As the page declared it (ISO date or datetime when it gave one). | [optional] 
**Site** | **string** | The hostname of &#x60;url&#x60;. | [optional] 
**Lang** | **string** |  | [optional] 
**Markdown** | **string** | The content, when &#x60;format&#x60; is markdown. | [optional] 
**Text** | **string** | The content, when &#x60;format&#x60; is text. | [optional] 
**Fetched** | **DateTime** | When the page was fetched (the cached copy&#39;s time on a cache hit). | [optional] 
**Cached** | **bool** |  | [optional] 
**Restricted** | [**ReadRestriction**](ReadRestriction.md) | Set when the page was not read as the article; the content is then the request&#39;s &#x60;snippet&#x60;. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

