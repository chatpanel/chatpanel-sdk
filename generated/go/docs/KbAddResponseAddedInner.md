# KbAddResponseAddedInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Title** | **string** |  | 
**Pages** | **int32** |  | 
**Chunks** | **int32** |  | 
**Replaced** | Pointer to **bool** |  | [optional] 
**Scanned** | Pointer to **bool** | A PDF with no text layer: indexed empty. | [optional] 
**Path** | Pointer to **string** | Relative to the folder given. | [optional] 

## Methods

### NewKbAddResponseAddedInner

`func NewKbAddResponseAddedInner(id string, title string, pages int32, chunks int32, ) *KbAddResponseAddedInner`

NewKbAddResponseAddedInner instantiates a new KbAddResponseAddedInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbAddResponseAddedInnerWithDefaults

`func NewKbAddResponseAddedInnerWithDefaults() *KbAddResponseAddedInner`

NewKbAddResponseAddedInnerWithDefaults instantiates a new KbAddResponseAddedInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *KbAddResponseAddedInner) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *KbAddResponseAddedInner) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *KbAddResponseAddedInner) SetId(v string)`

SetId sets Id field to given value.


### GetTitle

`func (o *KbAddResponseAddedInner) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *KbAddResponseAddedInner) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *KbAddResponseAddedInner) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetPages

`func (o *KbAddResponseAddedInner) GetPages() int32`

GetPages returns the Pages field if non-nil, zero value otherwise.

### GetPagesOk

`func (o *KbAddResponseAddedInner) GetPagesOk() (*int32, bool)`

GetPagesOk returns a tuple with the Pages field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPages

`func (o *KbAddResponseAddedInner) SetPages(v int32)`

SetPages sets Pages field to given value.


### GetChunks

`func (o *KbAddResponseAddedInner) GetChunks() int32`

GetChunks returns the Chunks field if non-nil, zero value otherwise.

### GetChunksOk

`func (o *KbAddResponseAddedInner) GetChunksOk() (*int32, bool)`

GetChunksOk returns a tuple with the Chunks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChunks

`func (o *KbAddResponseAddedInner) SetChunks(v int32)`

SetChunks sets Chunks field to given value.


### GetReplaced

`func (o *KbAddResponseAddedInner) GetReplaced() bool`

GetReplaced returns the Replaced field if non-nil, zero value otherwise.

### GetReplacedOk

`func (o *KbAddResponseAddedInner) GetReplacedOk() (*bool, bool)`

GetReplacedOk returns a tuple with the Replaced field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReplaced

`func (o *KbAddResponseAddedInner) SetReplaced(v bool)`

SetReplaced sets Replaced field to given value.

### HasReplaced

`func (o *KbAddResponseAddedInner) HasReplaced() bool`

HasReplaced returns a boolean if a field has been set.

### GetScanned

`func (o *KbAddResponseAddedInner) GetScanned() bool`

GetScanned returns the Scanned field if non-nil, zero value otherwise.

### GetScannedOk

`func (o *KbAddResponseAddedInner) GetScannedOk() (*bool, bool)`

GetScannedOk returns a tuple with the Scanned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScanned

`func (o *KbAddResponseAddedInner) SetScanned(v bool)`

SetScanned sets Scanned field to given value.

### HasScanned

`func (o *KbAddResponseAddedInner) HasScanned() bool`

HasScanned returns a boolean if a field has been set.

### GetPath

`func (o *KbAddResponseAddedInner) GetPath() string`

GetPath returns the Path field if non-nil, zero value otherwise.

### GetPathOk

`func (o *KbAddResponseAddedInner) GetPathOk() (*string, bool)`

GetPathOk returns a tuple with the Path field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPath

`func (o *KbAddResponseAddedInner) SetPath(v string)`

SetPath sets Path field to given value.

### HasPath

`func (o *KbAddResponseAddedInner) HasPath() bool`

HasPath returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


