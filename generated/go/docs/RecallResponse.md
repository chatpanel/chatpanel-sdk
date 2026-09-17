# RecallResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Size** | Pointer to **int32** |  | [optional] 
**Memories** | [**[]Memory**](Memory.md) |  | 
**Block** | Pointer to **string** | A prompt block carrying the recalled memories. | [optional] 

## Methods

### NewRecallResponse

`func NewRecallResponse(ok bool, memories []Memory, ) *RecallResponse`

NewRecallResponse instantiates a new RecallResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRecallResponseWithDefaults

`func NewRecallResponseWithDefaults() *RecallResponse`

NewRecallResponseWithDefaults instantiates a new RecallResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *RecallResponse) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *RecallResponse) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *RecallResponse) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetSize

`func (o *RecallResponse) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *RecallResponse) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *RecallResponse) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *RecallResponse) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetMemories

`func (o *RecallResponse) GetMemories() []Memory`

GetMemories returns the Memories field if non-nil, zero value otherwise.

### GetMemoriesOk

`func (o *RecallResponse) GetMemoriesOk() (*[]Memory, bool)`

GetMemoriesOk returns a tuple with the Memories field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemories

`func (o *RecallResponse) SetMemories(v []Memory)`

SetMemories sets Memories field to given value.


### GetBlock

`func (o *RecallResponse) GetBlock() string`

GetBlock returns the Block field if non-nil, zero value otherwise.

### GetBlockOk

`func (o *RecallResponse) GetBlockOk() (*string, bool)`

GetBlockOk returns a tuple with the Block field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlock

`func (o *RecallResponse) SetBlock(v string)`

SetBlock sets Block field to given value.

### HasBlock

`func (o *RecallResponse) HasBlock() bool`

HasBlock returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


