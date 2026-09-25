# A2AResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | Pointer to **bool** |  | [optional] 
**Kind** | Pointer to **string** | A2A returns one or the other; an agent answering at once creates no task. | [optional] 
**Task** | Pointer to **map[string]interface{}** |  | [optional] 
**Message** | Pointer to **map[string]interface{}** |  | [optional] 
**Text** | Pointer to **string** | The answer as text — artifacts first, then what the agent actually said. | [optional] 
**Done** | Pointer to **bool** |  | [optional] 
**Needs** | Pointer to **string** | &#x60;answer&#x60; for TASK_STATE_INPUT_REQUIRED, &#x60;approval&#x60; for TASK_STATE_AUTH_REQUIRED, null otherwise. | [optional] 

## Methods

### NewA2AResult

`func NewA2AResult() *A2AResult`

NewA2AResult instantiates a new A2AResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewA2AResultWithDefaults

`func NewA2AResultWithDefaults() *A2AResult`

NewA2AResultWithDefaults instantiates a new A2AResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *A2AResult) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *A2AResult) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *A2AResult) SetOk(v bool)`

SetOk sets Ok field to given value.

### HasOk

`func (o *A2AResult) HasOk() bool`

HasOk returns a boolean if a field has been set.

### GetKind

`func (o *A2AResult) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *A2AResult) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *A2AResult) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *A2AResult) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetTask

`func (o *A2AResult) GetTask() map[string]interface{}`

GetTask returns the Task field if non-nil, zero value otherwise.

### GetTaskOk

`func (o *A2AResult) GetTaskOk() (*map[string]interface{}, bool)`

GetTaskOk returns a tuple with the Task field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTask

`func (o *A2AResult) SetTask(v map[string]interface{})`

SetTask sets Task field to given value.

### HasTask

`func (o *A2AResult) HasTask() bool`

HasTask returns a boolean if a field has been set.

### GetMessage

`func (o *A2AResult) GetMessage() map[string]interface{}`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *A2AResult) GetMessageOk() (*map[string]interface{}, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *A2AResult) SetMessage(v map[string]interface{})`

SetMessage sets Message field to given value.

### HasMessage

`func (o *A2AResult) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetText

`func (o *A2AResult) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *A2AResult) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *A2AResult) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *A2AResult) HasText() bool`

HasText returns a boolean if a field has been set.

### GetDone

`func (o *A2AResult) GetDone() bool`

GetDone returns the Done field if non-nil, zero value otherwise.

### GetDoneOk

`func (o *A2AResult) GetDoneOk() (*bool, bool)`

GetDoneOk returns a tuple with the Done field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDone

`func (o *A2AResult) SetDone(v bool)`

SetDone sets Done field to given value.

### HasDone

`func (o *A2AResult) HasDone() bool`

HasDone returns a boolean if a field has been set.

### GetNeeds

`func (o *A2AResult) GetNeeds() string`

GetNeeds returns the Needs field if non-nil, zero value otherwise.

### GetNeedsOk

`func (o *A2AResult) GetNeedsOk() (*string, bool)`

GetNeedsOk returns a tuple with the Needs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNeeds

`func (o *A2AResult) SetNeeds(v string)`

SetNeeds sets Needs field to given value.

### HasNeeds

`func (o *A2AResult) HasNeeds() bool`

HasNeeds returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


