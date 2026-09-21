# PushEventsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Appended** | **int32** |  | 
**Duplicates** | **int32** | Events already held — a retry&#39;s share. | 
**Rejected** | [**[]PushEventsResponseRejectedInner**](PushEventsResponseRejectedInner.md) |  | 
**Cursor** | **map[string]int32** | &#x60;{ host: seq }&#x60; — the highest seq held per host. | 

## Methods

### NewPushEventsResponse

`func NewPushEventsResponse(ok bool, appended int32, duplicates int32, rejected []PushEventsResponseRejectedInner, cursor map[string]int32, ) *PushEventsResponse`

NewPushEventsResponse instantiates a new PushEventsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPushEventsResponseWithDefaults

`func NewPushEventsResponseWithDefaults() *PushEventsResponse`

NewPushEventsResponseWithDefaults instantiates a new PushEventsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *PushEventsResponse) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *PushEventsResponse) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *PushEventsResponse) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetAppended

`func (o *PushEventsResponse) GetAppended() int32`

GetAppended returns the Appended field if non-nil, zero value otherwise.

### GetAppendedOk

`func (o *PushEventsResponse) GetAppendedOk() (*int32, bool)`

GetAppendedOk returns a tuple with the Appended field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAppended

`func (o *PushEventsResponse) SetAppended(v int32)`

SetAppended sets Appended field to given value.


### GetDuplicates

`func (o *PushEventsResponse) GetDuplicates() int32`

GetDuplicates returns the Duplicates field if non-nil, zero value otherwise.

### GetDuplicatesOk

`func (o *PushEventsResponse) GetDuplicatesOk() (*int32, bool)`

GetDuplicatesOk returns a tuple with the Duplicates field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDuplicates

`func (o *PushEventsResponse) SetDuplicates(v int32)`

SetDuplicates sets Duplicates field to given value.


### GetRejected

`func (o *PushEventsResponse) GetRejected() []PushEventsResponseRejectedInner`

GetRejected returns the Rejected field if non-nil, zero value otherwise.

### GetRejectedOk

`func (o *PushEventsResponse) GetRejectedOk() (*[]PushEventsResponseRejectedInner, bool)`

GetRejectedOk returns a tuple with the Rejected field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRejected

`func (o *PushEventsResponse) SetRejected(v []PushEventsResponseRejectedInner)`

SetRejected sets Rejected field to given value.


### GetCursor

`func (o *PushEventsResponse) GetCursor() map[string]int32`

GetCursor returns the Cursor field if non-nil, zero value otherwise.

### GetCursorOk

`func (o *PushEventsResponse) GetCursorOk() (*map[string]int32, bool)`

GetCursorOk returns a tuple with the Cursor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCursor

`func (o *PushEventsResponse) SetCursor(v map[string]int32)`

SetCursor sets Cursor field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


