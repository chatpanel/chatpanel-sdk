# TeamsAppendRunEventsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Events** | [**[]RunEvent**](RunEvent.md) |  | 

## Methods

### NewTeamsAppendRunEventsRequest

`func NewTeamsAppendRunEventsRequest(events []RunEvent, ) *TeamsAppendRunEventsRequest`

NewTeamsAppendRunEventsRequest instantiates a new TeamsAppendRunEventsRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTeamsAppendRunEventsRequestWithDefaults

`func NewTeamsAppendRunEventsRequestWithDefaults() *TeamsAppendRunEventsRequest`

NewTeamsAppendRunEventsRequestWithDefaults instantiates a new TeamsAppendRunEventsRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEvents

`func (o *TeamsAppendRunEventsRequest) GetEvents() []RunEvent`

GetEvents returns the Events field if non-nil, zero value otherwise.

### GetEventsOk

`func (o *TeamsAppendRunEventsRequest) GetEventsOk() (*[]RunEvent, bool)`

GetEventsOk returns a tuple with the Events field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvents

`func (o *TeamsAppendRunEventsRequest) SetEvents(v []RunEvent)`

SetEvents sets Events field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


