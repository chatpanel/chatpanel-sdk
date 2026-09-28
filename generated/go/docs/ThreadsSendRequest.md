# ThreadsSendRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**To** | **string** | The chat to ask — a record id, chat:… | 
**Message** | **string** |  | 
**From** | Pointer to [**ThreadsSendRequestFrom**](ThreadsSendRequestFrom.md) |  | [optional] 
**DryRun** | Pointer to **bool** | Only which chat and model — nothing is run. | [optional] 

## Methods

### NewThreadsSendRequest

`func NewThreadsSendRequest(to string, message string, ) *ThreadsSendRequest`

NewThreadsSendRequest instantiates a new ThreadsSendRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewThreadsSendRequestWithDefaults

`func NewThreadsSendRequestWithDefaults() *ThreadsSendRequest`

NewThreadsSendRequestWithDefaults instantiates a new ThreadsSendRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTo

`func (o *ThreadsSendRequest) GetTo() string`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *ThreadsSendRequest) GetToOk() (*string, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *ThreadsSendRequest) SetTo(v string)`

SetTo sets To field to given value.


### GetMessage

`func (o *ThreadsSendRequest) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *ThreadsSendRequest) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *ThreadsSendRequest) SetMessage(v string)`

SetMessage sets Message field to given value.


### GetFrom

`func (o *ThreadsSendRequest) GetFrom() ThreadsSendRequestFrom`

GetFrom returns the From field if non-nil, zero value otherwise.

### GetFromOk

`func (o *ThreadsSendRequest) GetFromOk() (*ThreadsSendRequestFrom, bool)`

GetFromOk returns a tuple with the From field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrom

`func (o *ThreadsSendRequest) SetFrom(v ThreadsSendRequestFrom)`

SetFrom sets From field to given value.

### HasFrom

`func (o *ThreadsSendRequest) HasFrom() bool`

HasFrom returns a boolean if a field has been set.

### GetDryRun

`func (o *ThreadsSendRequest) GetDryRun() bool`

GetDryRun returns the DryRun field if non-nil, zero value otherwise.

### GetDryRunOk

`func (o *ThreadsSendRequest) GetDryRunOk() (*bool, bool)`

GetDryRunOk returns a tuple with the DryRun field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDryRun

`func (o *ThreadsSendRequest) SetDryRun(v bool)`

SetDryRun sets DryRun field to given value.

### HasDryRun

`func (o *ThreadsSendRequest) HasDryRun() bool`

HasDryRun returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


