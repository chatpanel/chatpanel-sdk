# ReadResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **string** | Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped. | 
**Requested** | Pointer to **string** | The URL that was asked for. | [optional] 
**Title** | **string** |  | 
**Author** | Pointer to **string** |  | [optional] 
**Published** | Pointer to **string** | As the page declared it (ISO date or datetime when it gave one). | [optional] 
**Site** | Pointer to **string** | The hostname of &#x60;url&#x60;. | [optional] 
**Lang** | Pointer to **string** |  | [optional] 
**Format** | **string** |  | 
**Markdown** | Pointer to **string** | The content, when &#x60;format&#x60; is markdown. | [optional] 
**Text** | Pointer to **string** | The content, when &#x60;format&#x60; is text. | [optional] 
**Chars** | **int32** | Length of the content field. | 
**Truncated** | **bool** |  | 
**Sections** | [**[]ReadSection**](ReadSection.md) |  | 
**Fetched** | Pointer to **time.Time** | When the page was fetched (the cached copy&#39;s time on a cache hit). | [optional] 
**Cached** | Pointer to **bool** |  | [optional] 
**Provider** | **string** |  | 
**Ms** | **float32** |  | 
**Restricted** | Pointer to [**NullableReadRestriction**](ReadRestriction.md) | Set when the page was not read as the article; the content is then the request&#39;s &#x60;snippet&#x60;. | [optional] 

## Methods

### NewReadResponse

`func NewReadResponse(url string, title string, format string, chars int32, truncated bool, sections []ReadSection, provider string, ms float32, ) *ReadResponse`

NewReadResponse instantiates a new ReadResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewReadResponseWithDefaults

`func NewReadResponseWithDefaults() *ReadResponse`

NewReadResponseWithDefaults instantiates a new ReadResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUrl

`func (o *ReadResponse) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *ReadResponse) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *ReadResponse) SetUrl(v string)`

SetUrl sets Url field to given value.


### GetRequested

`func (o *ReadResponse) GetRequested() string`

GetRequested returns the Requested field if non-nil, zero value otherwise.

### GetRequestedOk

`func (o *ReadResponse) GetRequestedOk() (*string, bool)`

GetRequestedOk returns a tuple with the Requested field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequested

`func (o *ReadResponse) SetRequested(v string)`

SetRequested sets Requested field to given value.

### HasRequested

`func (o *ReadResponse) HasRequested() bool`

HasRequested returns a boolean if a field has been set.

### GetTitle

`func (o *ReadResponse) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *ReadResponse) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *ReadResponse) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetAuthor

`func (o *ReadResponse) GetAuthor() string`

GetAuthor returns the Author field if non-nil, zero value otherwise.

### GetAuthorOk

`func (o *ReadResponse) GetAuthorOk() (*string, bool)`

GetAuthorOk returns a tuple with the Author field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthor

`func (o *ReadResponse) SetAuthor(v string)`

SetAuthor sets Author field to given value.

### HasAuthor

`func (o *ReadResponse) HasAuthor() bool`

HasAuthor returns a boolean if a field has been set.

### GetPublished

`func (o *ReadResponse) GetPublished() string`

GetPublished returns the Published field if non-nil, zero value otherwise.

### GetPublishedOk

`func (o *ReadResponse) GetPublishedOk() (*string, bool)`

GetPublishedOk returns a tuple with the Published field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublished

`func (o *ReadResponse) SetPublished(v string)`

SetPublished sets Published field to given value.

### HasPublished

`func (o *ReadResponse) HasPublished() bool`

HasPublished returns a boolean if a field has been set.

### GetSite

`func (o *ReadResponse) GetSite() string`

GetSite returns the Site field if non-nil, zero value otherwise.

### GetSiteOk

`func (o *ReadResponse) GetSiteOk() (*string, bool)`

GetSiteOk returns a tuple with the Site field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSite

`func (o *ReadResponse) SetSite(v string)`

SetSite sets Site field to given value.

### HasSite

`func (o *ReadResponse) HasSite() bool`

HasSite returns a boolean if a field has been set.

### GetLang

`func (o *ReadResponse) GetLang() string`

GetLang returns the Lang field if non-nil, zero value otherwise.

### GetLangOk

`func (o *ReadResponse) GetLangOk() (*string, bool)`

GetLangOk returns a tuple with the Lang field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLang

`func (o *ReadResponse) SetLang(v string)`

SetLang sets Lang field to given value.

### HasLang

`func (o *ReadResponse) HasLang() bool`

HasLang returns a boolean if a field has been set.

### GetFormat

`func (o *ReadResponse) GetFormat() string`

GetFormat returns the Format field if non-nil, zero value otherwise.

### GetFormatOk

`func (o *ReadResponse) GetFormatOk() (*string, bool)`

GetFormatOk returns a tuple with the Format field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFormat

`func (o *ReadResponse) SetFormat(v string)`

SetFormat sets Format field to given value.


### GetMarkdown

`func (o *ReadResponse) GetMarkdown() string`

GetMarkdown returns the Markdown field if non-nil, zero value otherwise.

### GetMarkdownOk

`func (o *ReadResponse) GetMarkdownOk() (*string, bool)`

GetMarkdownOk returns a tuple with the Markdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMarkdown

`func (o *ReadResponse) SetMarkdown(v string)`

SetMarkdown sets Markdown field to given value.

### HasMarkdown

`func (o *ReadResponse) HasMarkdown() bool`

HasMarkdown returns a boolean if a field has been set.

### GetText

`func (o *ReadResponse) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *ReadResponse) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *ReadResponse) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *ReadResponse) HasText() bool`

HasText returns a boolean if a field has been set.

### GetChars

`func (o *ReadResponse) GetChars() int32`

GetChars returns the Chars field if non-nil, zero value otherwise.

### GetCharsOk

`func (o *ReadResponse) GetCharsOk() (*int32, bool)`

GetCharsOk returns a tuple with the Chars field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChars

`func (o *ReadResponse) SetChars(v int32)`

SetChars sets Chars field to given value.


### GetTruncated

`func (o *ReadResponse) GetTruncated() bool`

GetTruncated returns the Truncated field if non-nil, zero value otherwise.

### GetTruncatedOk

`func (o *ReadResponse) GetTruncatedOk() (*bool, bool)`

GetTruncatedOk returns a tuple with the Truncated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTruncated

`func (o *ReadResponse) SetTruncated(v bool)`

SetTruncated sets Truncated field to given value.


### GetSections

`func (o *ReadResponse) GetSections() []ReadSection`

GetSections returns the Sections field if non-nil, zero value otherwise.

### GetSectionsOk

`func (o *ReadResponse) GetSectionsOk() (*[]ReadSection, bool)`

GetSectionsOk returns a tuple with the Sections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSections

`func (o *ReadResponse) SetSections(v []ReadSection)`

SetSections sets Sections field to given value.


### GetFetched

`func (o *ReadResponse) GetFetched() time.Time`

GetFetched returns the Fetched field if non-nil, zero value otherwise.

### GetFetchedOk

`func (o *ReadResponse) GetFetchedOk() (*time.Time, bool)`

GetFetchedOk returns a tuple with the Fetched field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFetched

`func (o *ReadResponse) SetFetched(v time.Time)`

SetFetched sets Fetched field to given value.

### HasFetched

`func (o *ReadResponse) HasFetched() bool`

HasFetched returns a boolean if a field has been set.

### GetCached

`func (o *ReadResponse) GetCached() bool`

GetCached returns the Cached field if non-nil, zero value otherwise.

### GetCachedOk

`func (o *ReadResponse) GetCachedOk() (*bool, bool)`

GetCachedOk returns a tuple with the Cached field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCached

`func (o *ReadResponse) SetCached(v bool)`

SetCached sets Cached field to given value.

### HasCached

`func (o *ReadResponse) HasCached() bool`

HasCached returns a boolean if a field has been set.

### GetProvider

`func (o *ReadResponse) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *ReadResponse) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *ReadResponse) SetProvider(v string)`

SetProvider sets Provider field to given value.


### GetMs

`func (o *ReadResponse) GetMs() float32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *ReadResponse) GetMsOk() (*float32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *ReadResponse) SetMs(v float32)`

SetMs sets Ms field to given value.


### GetRestricted

`func (o *ReadResponse) GetRestricted() ReadRestriction`

GetRestricted returns the Restricted field if non-nil, zero value otherwise.

### GetRestrictedOk

`func (o *ReadResponse) GetRestrictedOk() (*ReadRestriction, bool)`

GetRestrictedOk returns a tuple with the Restricted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRestricted

`func (o *ReadResponse) SetRestricted(v ReadRestriction)`

SetRestricted sets Restricted field to given value.

### HasRestricted

`func (o *ReadResponse) HasRestricted() bool`

HasRestricted returns a boolean if a field has been set.

### SetRestrictedNil

`func (o *ReadResponse) SetRestrictedNil(b bool)`

 SetRestrictedNil sets the value for Restricted to be an explicit nil

### UnsetRestricted
`func (o *ReadResponse) UnsetRestricted()`

UnsetRestricted ensures that no value is present for Restricted, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


