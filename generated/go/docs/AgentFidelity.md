# AgentFidelity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dialect** | Pointer to **string** |  | [optional] 
**Lossless** | Pointer to **bool** |  | [optional] 
**Carried** | Pointer to **[]string** |  | [optional] 
**Dropped** | Pointer to [**[]AgentFidelityDroppedInner**](AgentFidelityDroppedInner.md) |  | [optional] 

## Methods

### NewAgentFidelity

`func NewAgentFidelity() *AgentFidelity`

NewAgentFidelity instantiates a new AgentFidelity object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAgentFidelityWithDefaults

`func NewAgentFidelityWithDefaults() *AgentFidelity`

NewAgentFidelityWithDefaults instantiates a new AgentFidelity object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDialect

`func (o *AgentFidelity) GetDialect() string`

GetDialect returns the Dialect field if non-nil, zero value otherwise.

### GetDialectOk

`func (o *AgentFidelity) GetDialectOk() (*string, bool)`

GetDialectOk returns a tuple with the Dialect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDialect

`func (o *AgentFidelity) SetDialect(v string)`

SetDialect sets Dialect field to given value.

### HasDialect

`func (o *AgentFidelity) HasDialect() bool`

HasDialect returns a boolean if a field has been set.

### GetLossless

`func (o *AgentFidelity) GetLossless() bool`

GetLossless returns the Lossless field if non-nil, zero value otherwise.

### GetLosslessOk

`func (o *AgentFidelity) GetLosslessOk() (*bool, bool)`

GetLosslessOk returns a tuple with the Lossless field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLossless

`func (o *AgentFidelity) SetLossless(v bool)`

SetLossless sets Lossless field to given value.

### HasLossless

`func (o *AgentFidelity) HasLossless() bool`

HasLossless returns a boolean if a field has been set.

### GetCarried

`func (o *AgentFidelity) GetCarried() []string`

GetCarried returns the Carried field if non-nil, zero value otherwise.

### GetCarriedOk

`func (o *AgentFidelity) GetCarriedOk() (*[]string, bool)`

GetCarriedOk returns a tuple with the Carried field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCarried

`func (o *AgentFidelity) SetCarried(v []string)`

SetCarried sets Carried field to given value.

### HasCarried

`func (o *AgentFidelity) HasCarried() bool`

HasCarried returns a boolean if a field has been set.

### GetDropped

`func (o *AgentFidelity) GetDropped() []AgentFidelityDroppedInner`

GetDropped returns the Dropped field if non-nil, zero value otherwise.

### GetDroppedOk

`func (o *AgentFidelity) GetDroppedOk() (*[]AgentFidelityDroppedInner, bool)`

GetDroppedOk returns a tuple with the Dropped field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDropped

`func (o *AgentFidelity) SetDropped(v []AgentFidelityDroppedInner)`

SetDropped sets Dropped field to given value.

### HasDropped

`func (o *AgentFidelity) HasDropped() bool`

HasDropped returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


