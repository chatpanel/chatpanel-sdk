# EventsStreamEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Event** | **string** | The SSE event name. | 
**Cursor** | Pointer to **map[string]int32** | &#x60;{ host: seq }&#x60; — the highest seq held per host. | [optional] 
**Count** | Pointer to **int32** |  | [optional] 
**Version** | Pointer to **string** |  | [optional] 

## Methods

### NewEventsStreamEvent

`func NewEventsStreamEvent(event string, ) *EventsStreamEvent`

NewEventsStreamEvent instantiates a new EventsStreamEvent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEventsStreamEventWithDefaults

`func NewEventsStreamEventWithDefaults() *EventsStreamEvent`

NewEventsStreamEventWithDefaults instantiates a new EventsStreamEvent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEvent

`func (o *EventsStreamEvent) GetEvent() string`

GetEvent returns the Event field if non-nil, zero value otherwise.

### GetEventOk

`func (o *EventsStreamEvent) GetEventOk() (*string, bool)`

GetEventOk returns a tuple with the Event field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvent

`func (o *EventsStreamEvent) SetEvent(v string)`

SetEvent sets Event field to given value.


### GetCursor

`func (o *EventsStreamEvent) GetCursor() map[string]int32`

GetCursor returns the Cursor field if non-nil, zero value otherwise.

### GetCursorOk

`func (o *EventsStreamEvent) GetCursorOk() (*map[string]int32, bool)`

GetCursorOk returns a tuple with the Cursor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCursor

`func (o *EventsStreamEvent) SetCursor(v map[string]int32)`

SetCursor sets Cursor field to given value.

### HasCursor

`func (o *EventsStreamEvent) HasCursor() bool`

HasCursor returns a boolean if a field has been set.

### GetCount

`func (o *EventsStreamEvent) GetCount() int32`

GetCount returns the Count field if non-nil, zero value otherwise.

### GetCountOk

`func (o *EventsStreamEvent) GetCountOk() (*int32, bool)`

GetCountOk returns a tuple with the Count field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCount

`func (o *EventsStreamEvent) SetCount(v int32)`

SetCount sets Count field to given value.

### HasCount

`func (o *EventsStreamEvent) HasCount() bool`

HasCount returns a boolean if a field has been set.

### GetVersion

`func (o *EventsStreamEvent) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *EventsStreamEvent) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *EventsStreamEvent) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *EventsStreamEvent) HasVersion() bool`

HasVersion returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


