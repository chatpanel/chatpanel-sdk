# AgentExportPlan

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**To** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Path** | Pointer to **string** | The exact file that would be written. | [optional] 
**Text** | Pointer to **string** | Its rendered contents. | [optional] 
**Exists** | Pointer to **bool** |  | [optional] 
**Status** | Pointer to **string** | &#x60;theirs&#x60; means ChatPanel did not write it, or it has been edited since. | [optional] 
**Fidelity** | Pointer to [**AgentFidelity**](AgentFidelity.md) |  | [optional] 

## Methods

### NewAgentExportPlan

`func NewAgentExportPlan() *AgentExportPlan`

NewAgentExportPlan instantiates a new AgentExportPlan object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAgentExportPlanWithDefaults

`func NewAgentExportPlanWithDefaults() *AgentExportPlan`

NewAgentExportPlanWithDefaults instantiates a new AgentExportPlan object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTo

`func (o *AgentExportPlan) GetTo() string`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *AgentExportPlan) GetToOk() (*string, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *AgentExportPlan) SetTo(v string)`

SetTo sets To field to given value.

### HasTo

`func (o *AgentExportPlan) HasTo() bool`

HasTo returns a boolean if a field has been set.

### GetLabel

`func (o *AgentExportPlan) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *AgentExportPlan) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *AgentExportPlan) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *AgentExportPlan) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetPath

`func (o *AgentExportPlan) GetPath() string`

GetPath returns the Path field if non-nil, zero value otherwise.

### GetPathOk

`func (o *AgentExportPlan) GetPathOk() (*string, bool)`

GetPathOk returns a tuple with the Path field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPath

`func (o *AgentExportPlan) SetPath(v string)`

SetPath sets Path field to given value.

### HasPath

`func (o *AgentExportPlan) HasPath() bool`

HasPath returns a boolean if a field has been set.

### GetText

`func (o *AgentExportPlan) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *AgentExportPlan) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *AgentExportPlan) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *AgentExportPlan) HasText() bool`

HasText returns a boolean if a field has been set.

### GetExists

`func (o *AgentExportPlan) GetExists() bool`

GetExists returns the Exists field if non-nil, zero value otherwise.

### GetExistsOk

`func (o *AgentExportPlan) GetExistsOk() (*bool, bool)`

GetExistsOk returns a tuple with the Exists field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExists

`func (o *AgentExportPlan) SetExists(v bool)`

SetExists sets Exists field to given value.

### HasExists

`func (o *AgentExportPlan) HasExists() bool`

HasExists returns a boolean if a field has been set.

### GetStatus

`func (o *AgentExportPlan) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AgentExportPlan) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AgentExportPlan) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AgentExportPlan) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetFidelity

`func (o *AgentExportPlan) GetFidelity() AgentFidelity`

GetFidelity returns the Fidelity field if non-nil, zero value otherwise.

### GetFidelityOk

`func (o *AgentExportPlan) GetFidelityOk() (*AgentFidelity, bool)`

GetFidelityOk returns a tuple with the Fidelity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFidelity

`func (o *AgentExportPlan) SetFidelity(v AgentFidelity)`

SetFidelity sets Fidelity field to given value.

### HasFidelity

`func (o *AgentExportPlan) HasFidelity() bool`

HasFidelity returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


