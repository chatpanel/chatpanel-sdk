# MemorySyncRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Upserts** | Pointer to [**[]Memory**](Memory.md) |  | [optional] 
**Removes** | Pointer to **[]string** |  | [optional] 

## Methods

### NewMemorySyncRequest

`func NewMemorySyncRequest() *MemorySyncRequest`

NewMemorySyncRequest instantiates a new MemorySyncRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMemorySyncRequestWithDefaults

`func NewMemorySyncRequestWithDefaults() *MemorySyncRequest`

NewMemorySyncRequestWithDefaults instantiates a new MemorySyncRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUpserts

`func (o *MemorySyncRequest) GetUpserts() []Memory`

GetUpserts returns the Upserts field if non-nil, zero value otherwise.

### GetUpsertsOk

`func (o *MemorySyncRequest) GetUpsertsOk() (*[]Memory, bool)`

GetUpsertsOk returns a tuple with the Upserts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpserts

`func (o *MemorySyncRequest) SetUpserts(v []Memory)`

SetUpserts sets Upserts field to given value.

### HasUpserts

`func (o *MemorySyncRequest) HasUpserts() bool`

HasUpserts returns a boolean if a field has been set.

### GetRemoves

`func (o *MemorySyncRequest) GetRemoves() []string`

GetRemoves returns the Removes field if non-nil, zero value otherwise.

### GetRemovesOk

`func (o *MemorySyncRequest) GetRemovesOk() (*[]string, bool)`

GetRemovesOk returns a tuple with the Removes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemoves

`func (o *MemorySyncRequest) SetRemoves(v []string)`

SetRemoves sets Removes field to given value.

### HasRemoves

`func (o *MemorySyncRequest) HasRemoves() bool`

HasRemoves returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


