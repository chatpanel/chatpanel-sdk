# KbDocument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Title** | **string** |  | 
**Pages** | **int32** |  | 
**Chunks** | **int32** | Passages. | 
**Type** | Pointer to **string** |  | [optional] 
**Source** | Pointer to [**KbDocumentSource**](KbDocumentSource.md) |  | [optional] 
**AddedAt** | Pointer to **int64** |  | [optional] 

## Methods

### NewKbDocument

`func NewKbDocument(id string, title string, pages int32, chunks int32, ) *KbDocument`

NewKbDocument instantiates a new KbDocument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbDocumentWithDefaults

`func NewKbDocumentWithDefaults() *KbDocument`

NewKbDocumentWithDefaults instantiates a new KbDocument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *KbDocument) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *KbDocument) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *KbDocument) SetId(v string)`

SetId sets Id field to given value.


### GetTitle

`func (o *KbDocument) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *KbDocument) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *KbDocument) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetPages

`func (o *KbDocument) GetPages() int32`

GetPages returns the Pages field if non-nil, zero value otherwise.

### GetPagesOk

`func (o *KbDocument) GetPagesOk() (*int32, bool)`

GetPagesOk returns a tuple with the Pages field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPages

`func (o *KbDocument) SetPages(v int32)`

SetPages sets Pages field to given value.


### GetChunks

`func (o *KbDocument) GetChunks() int32`

GetChunks returns the Chunks field if non-nil, zero value otherwise.

### GetChunksOk

`func (o *KbDocument) GetChunksOk() (*int32, bool)`

GetChunksOk returns a tuple with the Chunks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChunks

`func (o *KbDocument) SetChunks(v int32)`

SetChunks sets Chunks field to given value.


### GetType

`func (o *KbDocument) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *KbDocument) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *KbDocument) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *KbDocument) HasType() bool`

HasType returns a boolean if a field has been set.

### GetSource

`func (o *KbDocument) GetSource() KbDocumentSource`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *KbDocument) GetSourceOk() (*KbDocumentSource, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *KbDocument) SetSource(v KbDocumentSource)`

SetSource sets Source field to given value.

### HasSource

`func (o *KbDocument) HasSource() bool`

HasSource returns a boolean if a field has been set.

### GetAddedAt

`func (o *KbDocument) GetAddedAt() int64`

GetAddedAt returns the AddedAt field if non-nil, zero value otherwise.

### GetAddedAtOk

`func (o *KbDocument) GetAddedAtOk() (*int64, bool)`

GetAddedAtOk returns a tuple with the AddedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddedAt

`func (o *KbDocument) SetAddedAt(v int64)`

SetAddedAt sets AddedAt field to given value.

### HasAddedAt

`func (o *KbDocument) HasAddedAt() bool`

HasAddedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


