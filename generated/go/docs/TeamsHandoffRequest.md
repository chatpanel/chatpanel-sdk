# TeamsHandoffRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TaskId** | **string** |  | 
**Model** | **string** |  | 
**By** | Pointer to **string** |  | [optional] 
**Reason** | Pointer to **string** |  | [optional] 

## Methods

### NewTeamsHandoffRequest

`func NewTeamsHandoffRequest(taskId string, model string, ) *TeamsHandoffRequest`

NewTeamsHandoffRequest instantiates a new TeamsHandoffRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTeamsHandoffRequestWithDefaults

`func NewTeamsHandoffRequestWithDefaults() *TeamsHandoffRequest`

NewTeamsHandoffRequestWithDefaults instantiates a new TeamsHandoffRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTaskId

`func (o *TeamsHandoffRequest) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *TeamsHandoffRequest) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *TeamsHandoffRequest) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.


### GetModel

`func (o *TeamsHandoffRequest) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *TeamsHandoffRequest) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *TeamsHandoffRequest) SetModel(v string)`

SetModel sets Model field to given value.


### GetBy

`func (o *TeamsHandoffRequest) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *TeamsHandoffRequest) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *TeamsHandoffRequest) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *TeamsHandoffRequest) HasBy() bool`

HasBy returns a boolean if a field has been set.

### GetReason

`func (o *TeamsHandoffRequest) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *TeamsHandoffRequest) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *TeamsHandoffRequest) SetReason(v string)`

SetReason sets Reason field to given value.

### HasReason

`func (o *TeamsHandoffRequest) HasReason() bool`

HasReason returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


