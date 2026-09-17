# MemorySyncResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Size** | Pointer to **int32** |  | [optional] 
**Memories** | [**[]Memory**](Memory.md) |  | 

## Methods

### NewMemorySyncResponse

`func NewMemorySyncResponse(ok bool, memories []Memory, ) *MemorySyncResponse`

NewMemorySyncResponse instantiates a new MemorySyncResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMemorySyncResponseWithDefaults

`func NewMemorySyncResponseWithDefaults() *MemorySyncResponse`

NewMemorySyncResponseWithDefaults instantiates a new MemorySyncResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *MemorySyncResponse) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *MemorySyncResponse) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *MemorySyncResponse) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetSize

`func (o *MemorySyncResponse) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *MemorySyncResponse) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *MemorySyncResponse) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *MemorySyncResponse) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetMemories

`func (o *MemorySyncResponse) GetMemories() []Memory`

GetMemories returns the Memories field if non-nil, zero value otherwise.

### GetMemoriesOk

`func (o *MemorySyncResponse) GetMemoriesOk() (*[]Memory, bool)`

GetMemoriesOk returns a tuple with the Memories field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemories

`func (o *MemorySyncResponse) SetMemories(v []Memory)`

SetMemories sets Memories field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


