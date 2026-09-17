# HistoryStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Size** | **int32** |  | 
**Newest** | Pointer to **int64** |  | [optional] 
**Bytes** | Pointer to **int64** |  | [optional] 
**Lossless** | Pointer to [**NullableHistoryStatusLossless**](HistoryStatusLossless.md) |  | [optional] 

## Methods

### NewHistoryStatus

`func NewHistoryStatus(ok bool, size int32, ) *HistoryStatus`

NewHistoryStatus instantiates a new HistoryStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHistoryStatusWithDefaults

`func NewHistoryStatusWithDefaults() *HistoryStatus`

NewHistoryStatusWithDefaults instantiates a new HistoryStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *HistoryStatus) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *HistoryStatus) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *HistoryStatus) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetSize

`func (o *HistoryStatus) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *HistoryStatus) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *HistoryStatus) SetSize(v int32)`

SetSize sets Size field to given value.


### GetNewest

`func (o *HistoryStatus) GetNewest() int64`

GetNewest returns the Newest field if non-nil, zero value otherwise.

### GetNewestOk

`func (o *HistoryStatus) GetNewestOk() (*int64, bool)`

GetNewestOk returns a tuple with the Newest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNewest

`func (o *HistoryStatus) SetNewest(v int64)`

SetNewest sets Newest field to given value.

### HasNewest

`func (o *HistoryStatus) HasNewest() bool`

HasNewest returns a boolean if a field has been set.

### GetBytes

`func (o *HistoryStatus) GetBytes() int64`

GetBytes returns the Bytes field if non-nil, zero value otherwise.

### GetBytesOk

`func (o *HistoryStatus) GetBytesOk() (*int64, bool)`

GetBytesOk returns a tuple with the Bytes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBytes

`func (o *HistoryStatus) SetBytes(v int64)`

SetBytes sets Bytes field to given value.

### HasBytes

`func (o *HistoryStatus) HasBytes() bool`

HasBytes returns a boolean if a field has been set.

### GetLossless

`func (o *HistoryStatus) GetLossless() HistoryStatusLossless`

GetLossless returns the Lossless field if non-nil, zero value otherwise.

### GetLosslessOk

`func (o *HistoryStatus) GetLosslessOk() (*HistoryStatusLossless, bool)`

GetLosslessOk returns a tuple with the Lossless field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLossless

`func (o *HistoryStatus) SetLossless(v HistoryStatusLossless)`

SetLossless sets Lossless field to given value.

### HasLossless

`func (o *HistoryStatus) HasLossless() bool`

HasLossless returns a boolean if a field has been set.

### SetLosslessNil

`func (o *HistoryStatus) SetLosslessNil(b bool)`

 SetLosslessNil sets the value for Lossless to be an explicit nil

### UnsetLossless
`func (o *HistoryStatus) UnsetLossless()`

UnsetLossless ensures that no value is present for Lossless, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


