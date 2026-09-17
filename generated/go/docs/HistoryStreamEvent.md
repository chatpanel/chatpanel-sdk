# HistoryStreamEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Event** | **string** | The SSE event name. | 
**Newest** | Pointer to **int64** |  | [optional] 
**Size** | Pointer to **int32** |  | [optional] 
**Version** | Pointer to **string** |  | [optional] 
**Ids** | Pointer to **[]string** |  | [optional] 
**At** | Pointer to **int64** |  | [optional] 

## Methods

### NewHistoryStreamEvent

`func NewHistoryStreamEvent(event string, ) *HistoryStreamEvent`

NewHistoryStreamEvent instantiates a new HistoryStreamEvent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHistoryStreamEventWithDefaults

`func NewHistoryStreamEventWithDefaults() *HistoryStreamEvent`

NewHistoryStreamEventWithDefaults instantiates a new HistoryStreamEvent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEvent

`func (o *HistoryStreamEvent) GetEvent() string`

GetEvent returns the Event field if non-nil, zero value otherwise.

### GetEventOk

`func (o *HistoryStreamEvent) GetEventOk() (*string, bool)`

GetEventOk returns a tuple with the Event field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvent

`func (o *HistoryStreamEvent) SetEvent(v string)`

SetEvent sets Event field to given value.


### GetNewest

`func (o *HistoryStreamEvent) GetNewest() int64`

GetNewest returns the Newest field if non-nil, zero value otherwise.

### GetNewestOk

`func (o *HistoryStreamEvent) GetNewestOk() (*int64, bool)`

GetNewestOk returns a tuple with the Newest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNewest

`func (o *HistoryStreamEvent) SetNewest(v int64)`

SetNewest sets Newest field to given value.

### HasNewest

`func (o *HistoryStreamEvent) HasNewest() bool`

HasNewest returns a boolean if a field has been set.

### GetSize

`func (o *HistoryStreamEvent) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *HistoryStreamEvent) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *HistoryStreamEvent) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *HistoryStreamEvent) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetVersion

`func (o *HistoryStreamEvent) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *HistoryStreamEvent) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *HistoryStreamEvent) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *HistoryStreamEvent) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetIds

`func (o *HistoryStreamEvent) GetIds() []string`

GetIds returns the Ids field if non-nil, zero value otherwise.

### GetIdsOk

`func (o *HistoryStreamEvent) GetIdsOk() (*[]string, bool)`

GetIdsOk returns a tuple with the Ids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIds

`func (o *HistoryStreamEvent) SetIds(v []string)`

SetIds sets Ids field to given value.

### HasIds

`func (o *HistoryStreamEvent) HasIds() bool`

HasIds returns a boolean if a field has been set.

### GetAt

`func (o *HistoryStreamEvent) GetAt() int64`

GetAt returns the At field if non-nil, zero value otherwise.

### GetAtOk

`func (o *HistoryStreamEvent) GetAtOk() (*int64, bool)`

GetAtOk returns a tuple with the At field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAt

`func (o *HistoryStreamEvent) SetAt(v int64)`

SetAt sets At field to given value.

### HasAt

`func (o *HistoryStreamEvent) HasAt() bool`

HasAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


