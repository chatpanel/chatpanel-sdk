# KbPage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Doc** | **string** |  | 
**Title** | Pointer to **string** |  | [optional] 
**Page** | **int32** |  | 
**Pages** | **int32** |  | 
**Text** | **string** |  | 

## Methods

### NewKbPage

`func NewKbPage(doc string, page int32, pages int32, text string, ) *KbPage`

NewKbPage instantiates a new KbPage object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbPageWithDefaults

`func NewKbPageWithDefaults() *KbPage`

NewKbPageWithDefaults instantiates a new KbPage object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDoc

`func (o *KbPage) GetDoc() string`

GetDoc returns the Doc field if non-nil, zero value otherwise.

### GetDocOk

`func (o *KbPage) GetDocOk() (*string, bool)`

GetDocOk returns a tuple with the Doc field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDoc

`func (o *KbPage) SetDoc(v string)`

SetDoc sets Doc field to given value.


### GetTitle

`func (o *KbPage) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *KbPage) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *KbPage) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *KbPage) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetPage

`func (o *KbPage) GetPage() int32`

GetPage returns the Page field if non-nil, zero value otherwise.

### GetPageOk

`func (o *KbPage) GetPageOk() (*int32, bool)`

GetPageOk returns a tuple with the Page field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPage

`func (o *KbPage) SetPage(v int32)`

SetPage sets Page field to given value.


### GetPages

`func (o *KbPage) GetPages() int32`

GetPages returns the Pages field if non-nil, zero value otherwise.

### GetPagesOk

`func (o *KbPage) GetPagesOk() (*int32, bool)`

GetPagesOk returns a tuple with the Pages field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPages

`func (o *KbPage) SetPages(v int32)`

SetPages sets Pages field to given value.


### GetText

`func (o *KbPage) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *KbPage) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *KbPage) SetText(v string)`

SetText sets Text field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


