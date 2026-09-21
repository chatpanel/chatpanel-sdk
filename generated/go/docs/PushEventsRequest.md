# PushEventsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Events** | [**[]CloudEvent**](CloudEvent.md) |  | 

## Methods

### NewPushEventsRequest

`func NewPushEventsRequest(events []CloudEvent, ) *PushEventsRequest`

NewPushEventsRequest instantiates a new PushEventsRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPushEventsRequestWithDefaults

`func NewPushEventsRequestWithDefaults() *PushEventsRequest`

NewPushEventsRequestWithDefaults instantiates a new PushEventsRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEvents

`func (o *PushEventsRequest) GetEvents() []CloudEvent`

GetEvents returns the Events field if non-nil, zero value otherwise.

### GetEventsOk

`func (o *PushEventsRequest) GetEventsOk() (*[]CloudEvent, bool)`

GetEventsOk returns a tuple with the Events field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvents

`func (o *PushEventsRequest) SetEvents(v []CloudEvent)`

SetEvents sets Events field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


