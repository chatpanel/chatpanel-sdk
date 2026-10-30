# ExtractContextResponseAttachment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | Pointer to **string** |  | [optional] 
**Prefetch** | Pointer to **string** |  | [optional] 
**Title** | Pointer to **string** |  | [optional] 
**Text** | Pointer to **string** | Per document: a one-sentence head naming it and its pages (a sentence, not a tag — an on-device model judges the prompt&#39;s language before reading it), then &#x60;--- page n ---&#x60; and that page&#39;s text. | [optional] 
**Chars** | Pointer to **int32** |  | [optional] 
**Cites** | Pointer to [**[]ExtractContextResponseAttachmentCitesInner**](ExtractContextResponseAttachmentCitesInner.md) |  | [optional] 
**Docs** | Pointer to [**[]ExtractContextResponseAttachmentDocsInner**](ExtractContextResponseAttachmentDocsInner.md) |  | [optional] 

## Methods

### NewExtractContextResponseAttachment

`func NewExtractContextResponseAttachment() *ExtractContextResponseAttachment`

NewExtractContextResponseAttachment instantiates a new ExtractContextResponseAttachment object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExtractContextResponseAttachmentWithDefaults

`func NewExtractContextResponseAttachmentWithDefaults() *ExtractContextResponseAttachment`

NewExtractContextResponseAttachmentWithDefaults instantiates a new ExtractContextResponseAttachment object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *ExtractContextResponseAttachment) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *ExtractContextResponseAttachment) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *ExtractContextResponseAttachment) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *ExtractContextResponseAttachment) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetPrefetch

`func (o *ExtractContextResponseAttachment) GetPrefetch() string`

GetPrefetch returns the Prefetch field if non-nil, zero value otherwise.

### GetPrefetchOk

`func (o *ExtractContextResponseAttachment) GetPrefetchOk() (*string, bool)`

GetPrefetchOk returns a tuple with the Prefetch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrefetch

`func (o *ExtractContextResponseAttachment) SetPrefetch(v string)`

SetPrefetch sets Prefetch field to given value.

### HasPrefetch

`func (o *ExtractContextResponseAttachment) HasPrefetch() bool`

HasPrefetch returns a boolean if a field has been set.

### GetTitle

`func (o *ExtractContextResponseAttachment) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *ExtractContextResponseAttachment) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *ExtractContextResponseAttachment) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *ExtractContextResponseAttachment) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetText

`func (o *ExtractContextResponseAttachment) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *ExtractContextResponseAttachment) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *ExtractContextResponseAttachment) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *ExtractContextResponseAttachment) HasText() bool`

HasText returns a boolean if a field has been set.

### GetChars

`func (o *ExtractContextResponseAttachment) GetChars() int32`

GetChars returns the Chars field if non-nil, zero value otherwise.

### GetCharsOk

`func (o *ExtractContextResponseAttachment) GetCharsOk() (*int32, bool)`

GetCharsOk returns a tuple with the Chars field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChars

`func (o *ExtractContextResponseAttachment) SetChars(v int32)`

SetChars sets Chars field to given value.

### HasChars

`func (o *ExtractContextResponseAttachment) HasChars() bool`

HasChars returns a boolean if a field has been set.

### GetCites

`func (o *ExtractContextResponseAttachment) GetCites() []ExtractContextResponseAttachmentCitesInner`

GetCites returns the Cites field if non-nil, zero value otherwise.

### GetCitesOk

`func (o *ExtractContextResponseAttachment) GetCitesOk() (*[]ExtractContextResponseAttachmentCitesInner, bool)`

GetCitesOk returns a tuple with the Cites field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCites

`func (o *ExtractContextResponseAttachment) SetCites(v []ExtractContextResponseAttachmentCitesInner)`

SetCites sets Cites field to given value.

### HasCites

`func (o *ExtractContextResponseAttachment) HasCites() bool`

HasCites returns a boolean if a field has been set.

### GetDocs

`func (o *ExtractContextResponseAttachment) GetDocs() []ExtractContextResponseAttachmentDocsInner`

GetDocs returns the Docs field if non-nil, zero value otherwise.

### GetDocsOk

`func (o *ExtractContextResponseAttachment) GetDocsOk() (*[]ExtractContextResponseAttachmentDocsInner, bool)`

GetDocsOk returns a tuple with the Docs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocs

`func (o *ExtractContextResponseAttachment) SetDocs(v []ExtractContextResponseAttachmentDocsInner)`

SetDocs sets Docs field to given value.

### HasDocs

`func (o *ExtractContextResponseAttachment) HasDocs() bool`

HasDocs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


