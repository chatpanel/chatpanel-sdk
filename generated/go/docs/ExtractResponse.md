# ExtractResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hash** | **string** | SHA-256 of the bytes — the document&#39;s identity for page calls. | 
**Type** | **string** | What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html. | 
**Pages** | **int32** |  | 
**Title** | Pointer to **string** | The document&#39;s own title, when it declares one; else empty. | [optional] 
**Scanned** | Pointer to **bool** | A PDF with no text layer: its pages are empty and need OCR, which this does not do. | [optional] 
**Page** | Pointer to **int32** | Present on a page call. | [optional] 
**Text** | Pointer to **string** | The page&#39;s text, on a page call. May be empty. | [optional] 
**Provider** | **string** | &#x60;chatpanel-extract&#x60;. | 
**Ms** | **float32** |  | 

## Methods

### NewExtractResponse

`func NewExtractResponse(hash string, type_ string, pages int32, provider string, ms float32, ) *ExtractResponse`

NewExtractResponse instantiates a new ExtractResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExtractResponseWithDefaults

`func NewExtractResponseWithDefaults() *ExtractResponse`

NewExtractResponseWithDefaults instantiates a new ExtractResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetHash

`func (o *ExtractResponse) GetHash() string`

GetHash returns the Hash field if non-nil, zero value otherwise.

### GetHashOk

`func (o *ExtractResponse) GetHashOk() (*string, bool)`

GetHashOk returns a tuple with the Hash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHash

`func (o *ExtractResponse) SetHash(v string)`

SetHash sets Hash field to given value.


### GetType

`func (o *ExtractResponse) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ExtractResponse) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ExtractResponse) SetType(v string)`

SetType sets Type field to given value.


### GetPages

`func (o *ExtractResponse) GetPages() int32`

GetPages returns the Pages field if non-nil, zero value otherwise.

### GetPagesOk

`func (o *ExtractResponse) GetPagesOk() (*int32, bool)`

GetPagesOk returns a tuple with the Pages field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPages

`func (o *ExtractResponse) SetPages(v int32)`

SetPages sets Pages field to given value.


### GetTitle

`func (o *ExtractResponse) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *ExtractResponse) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *ExtractResponse) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *ExtractResponse) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetScanned

`func (o *ExtractResponse) GetScanned() bool`

GetScanned returns the Scanned field if non-nil, zero value otherwise.

### GetScannedOk

`func (o *ExtractResponse) GetScannedOk() (*bool, bool)`

GetScannedOk returns a tuple with the Scanned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScanned

`func (o *ExtractResponse) SetScanned(v bool)`

SetScanned sets Scanned field to given value.

### HasScanned

`func (o *ExtractResponse) HasScanned() bool`

HasScanned returns a boolean if a field has been set.

### GetPage

`func (o *ExtractResponse) GetPage() int32`

GetPage returns the Page field if non-nil, zero value otherwise.

### GetPageOk

`func (o *ExtractResponse) GetPageOk() (*int32, bool)`

GetPageOk returns a tuple with the Page field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPage

`func (o *ExtractResponse) SetPage(v int32)`

SetPage sets Page field to given value.

### HasPage

`func (o *ExtractResponse) HasPage() bool`

HasPage returns a boolean if a field has been set.

### GetText

`func (o *ExtractResponse) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *ExtractResponse) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *ExtractResponse) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *ExtractResponse) HasText() bool`

HasText returns a boolean if a field has been set.

### GetProvider

`func (o *ExtractResponse) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *ExtractResponse) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *ExtractResponse) SetProvider(v string)`

SetProvider sets Provider field to given value.


### GetMs

`func (o *ExtractResponse) GetMs() float32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *ExtractResponse) GetMsOk() (*float32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *ExtractResponse) SetMs(v float32)`

SetMs sets Ms field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


