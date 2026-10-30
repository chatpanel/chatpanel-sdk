# EventsDeleted

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Deleted** | **int32** | How many events went. | 
**Host** | Pointer to **string** |  | [optional] 
**All** | Pointer to **bool** |  | [optional] 
**Cursor** | **map[string]int32** | &#x60;{ host: seq }&#x60; — the highest seq held per host. | 

## Methods

### NewEventsDeleted

`func NewEventsDeleted(ok bool, deleted int32, cursor map[string]int32, ) *EventsDeleted`

NewEventsDeleted instantiates a new EventsDeleted object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEventsDeletedWithDefaults

`func NewEventsDeletedWithDefaults() *EventsDeleted`

NewEventsDeletedWithDefaults instantiates a new EventsDeleted object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *EventsDeleted) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *EventsDeleted) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *EventsDeleted) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetDeleted

`func (o *EventsDeleted) GetDeleted() int32`

GetDeleted returns the Deleted field if non-nil, zero value otherwise.

### GetDeletedOk

`func (o *EventsDeleted) GetDeletedOk() (*int32, bool)`

GetDeletedOk returns a tuple with the Deleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleted

`func (o *EventsDeleted) SetDeleted(v int32)`

SetDeleted sets Deleted field to given value.


### GetHost

`func (o *EventsDeleted) GetHost() string`

GetHost returns the Host field if non-nil, zero value otherwise.

### GetHostOk

`func (o *EventsDeleted) GetHostOk() (*string, bool)`

GetHostOk returns a tuple with the Host field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHost

`func (o *EventsDeleted) SetHost(v string)`

SetHost sets Host field to given value.

### HasHost

`func (o *EventsDeleted) HasHost() bool`

HasHost returns a boolean if a field has been set.

### GetAll

`func (o *EventsDeleted) GetAll() bool`

GetAll returns the All field if non-nil, zero value otherwise.

### GetAllOk

`func (o *EventsDeleted) GetAllOk() (*bool, bool)`

GetAllOk returns a tuple with the All field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAll

`func (o *EventsDeleted) SetAll(v bool)`

SetAll sets All field to given value.

### HasAll

`func (o *EventsDeleted) HasAll() bool`

HasAll returns a boolean if a field has been set.

### GetCursor

`func (o *EventsDeleted) GetCursor() map[string]int32`

GetCursor returns the Cursor field if non-nil, zero value otherwise.

### GetCursorOk

`func (o *EventsDeleted) GetCursorOk() (*map[string]int32, bool)`

GetCursorOk returns a tuple with the Cursor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCursor

`func (o *EventsDeleted) SetCursor(v map[string]int32)`

SetCursor sets Cursor field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


