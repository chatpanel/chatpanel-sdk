# EventsCursor

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Cursor** | **map[string]int32** | &#x60;{ host: seq }&#x60; — the highest seq held per host. | 
**Count** | Pointer to **int32** |  | [optional] 

## Methods

### NewEventsCursor

`func NewEventsCursor(ok bool, cursor map[string]int32, ) *EventsCursor`

NewEventsCursor instantiates a new EventsCursor object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEventsCursorWithDefaults

`func NewEventsCursorWithDefaults() *EventsCursor`

NewEventsCursorWithDefaults instantiates a new EventsCursor object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *EventsCursor) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *EventsCursor) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *EventsCursor) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetCursor

`func (o *EventsCursor) GetCursor() map[string]int32`

GetCursor returns the Cursor field if non-nil, zero value otherwise.

### GetCursorOk

`func (o *EventsCursor) GetCursorOk() (*map[string]int32, bool)`

GetCursorOk returns a tuple with the Cursor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCursor

`func (o *EventsCursor) SetCursor(v map[string]int32)`

SetCursor sets Cursor field to given value.


### GetCount

`func (o *EventsCursor) GetCount() int32`

GetCount returns the Count field if non-nil, zero value otherwise.

### GetCountOk

`func (o *EventsCursor) GetCountOk() (*int32, bool)`

GetCountOk returns a tuple with the Count field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCount

`func (o *EventsCursor) SetCount(v int32)`

SetCount sets Count field to given value.

### HasCount

`func (o *EventsCursor) HasCount() bool`

HasCount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


