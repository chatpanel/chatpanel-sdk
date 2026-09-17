# MemoryList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Size** | Pointer to **int32** |  | [optional] 
**Memories** | [**[]Memory**](Memory.md) |  | 

## Methods

### NewMemoryList

`func NewMemoryList(ok bool, memories []Memory, ) *MemoryList`

NewMemoryList instantiates a new MemoryList object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMemoryListWithDefaults

`func NewMemoryListWithDefaults() *MemoryList`

NewMemoryListWithDefaults instantiates a new MemoryList object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *MemoryList) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *MemoryList) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *MemoryList) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetSize

`func (o *MemoryList) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *MemoryList) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *MemoryList) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *MemoryList) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetMemories

`func (o *MemoryList) GetMemories() []Memory`

GetMemories returns the Memories field if non-nil, zero value otherwise.

### GetMemoriesOk

`func (o *MemoryList) GetMemoriesOk() (*[]Memory, bool)`

GetMemoriesOk returns a tuple with the Memories field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemories

`func (o *MemoryList) SetMemories(v []Memory)`

SetMemories sets Memories field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


