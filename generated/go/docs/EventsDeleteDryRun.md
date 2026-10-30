# EventsDeleteDryRun

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**WouldDelete** | **int32** | What &#x60;force&#x3D;1&#x60; would delete. | 
**Host** | Pointer to **string** |  | [optional] 
**All** | Pointer to **bool** |  | [optional] 
**Error** | [**EventsDeleteDryRunError**](EventsDeleteDryRunError.md) |  | 

## Methods

### NewEventsDeleteDryRun

`func NewEventsDeleteDryRun(ok bool, wouldDelete int32, error_ EventsDeleteDryRunError, ) *EventsDeleteDryRun`

NewEventsDeleteDryRun instantiates a new EventsDeleteDryRun object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEventsDeleteDryRunWithDefaults

`func NewEventsDeleteDryRunWithDefaults() *EventsDeleteDryRun`

NewEventsDeleteDryRunWithDefaults instantiates a new EventsDeleteDryRun object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *EventsDeleteDryRun) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *EventsDeleteDryRun) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *EventsDeleteDryRun) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetWouldDelete

`func (o *EventsDeleteDryRun) GetWouldDelete() int32`

GetWouldDelete returns the WouldDelete field if non-nil, zero value otherwise.

### GetWouldDeleteOk

`func (o *EventsDeleteDryRun) GetWouldDeleteOk() (*int32, bool)`

GetWouldDeleteOk returns a tuple with the WouldDelete field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWouldDelete

`func (o *EventsDeleteDryRun) SetWouldDelete(v int32)`

SetWouldDelete sets WouldDelete field to given value.


### GetHost

`func (o *EventsDeleteDryRun) GetHost() string`

GetHost returns the Host field if non-nil, zero value otherwise.

### GetHostOk

`func (o *EventsDeleteDryRun) GetHostOk() (*string, bool)`

GetHostOk returns a tuple with the Host field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHost

`func (o *EventsDeleteDryRun) SetHost(v string)`

SetHost sets Host field to given value.

### HasHost

`func (o *EventsDeleteDryRun) HasHost() bool`

HasHost returns a boolean if a field has been set.

### GetAll

`func (o *EventsDeleteDryRun) GetAll() bool`

GetAll returns the All field if non-nil, zero value otherwise.

### GetAllOk

`func (o *EventsDeleteDryRun) GetAllOk() (*bool, bool)`

GetAllOk returns a tuple with the All field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAll

`func (o *EventsDeleteDryRun) SetAll(v bool)`

SetAll sets All field to given value.

### HasAll

`func (o *EventsDeleteDryRun) HasAll() bool`

HasAll returns a boolean if a field has been set.

### GetError

`func (o *EventsDeleteDryRun) GetError() EventsDeleteDryRunError`

GetError returns the Error field if non-nil, zero value otherwise.

### GetErrorOk

`func (o *EventsDeleteDryRun) GetErrorOk() (*EventsDeleteDryRunError, bool)`

GetErrorOk returns a tuple with the Error field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetError

`func (o *EventsDeleteDryRun) SetError(v EventsDeleteDryRunError)`

SetError sets Error field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


