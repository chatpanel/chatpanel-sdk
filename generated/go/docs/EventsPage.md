# EventsPage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Events** | [**[]CloudEvent**](CloudEvent.md) |  | 
**Cursor** | **map[string]int32** | Pass back as &#x60;cursor&#x60; for the next page. | 
**More** | **bool** |  | 

## Methods

### NewEventsPage

`func NewEventsPage(ok bool, events []CloudEvent, cursor map[string]int32, more bool, ) *EventsPage`

NewEventsPage instantiates a new EventsPage object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEventsPageWithDefaults

`func NewEventsPageWithDefaults() *EventsPage`

NewEventsPageWithDefaults instantiates a new EventsPage object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *EventsPage) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *EventsPage) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *EventsPage) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetEvents

`func (o *EventsPage) GetEvents() []CloudEvent`

GetEvents returns the Events field if non-nil, zero value otherwise.

### GetEventsOk

`func (o *EventsPage) GetEventsOk() (*[]CloudEvent, bool)`

GetEventsOk returns a tuple with the Events field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvents

`func (o *EventsPage) SetEvents(v []CloudEvent)`

SetEvents sets Events field to given value.


### GetCursor

`func (o *EventsPage) GetCursor() map[string]int32`

GetCursor returns the Cursor field if non-nil, zero value otherwise.

### GetCursorOk

`func (o *EventsPage) GetCursorOk() (*map[string]int32, bool)`

GetCursorOk returns a tuple with the Cursor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCursor

`func (o *EventsPage) SetCursor(v map[string]int32)`

SetCursor sets Cursor field to given value.


### GetMore

`func (o *EventsPage) GetMore() bool`

GetMore returns the More field if non-nil, zero value otherwise.

### GetMoreOk

`func (o *EventsPage) GetMoreOk() (*bool, bool)`

GetMoreOk returns a tuple with the More field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMore

`func (o *EventsPage) SetMore(v bool)`

SetMore sets More field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


