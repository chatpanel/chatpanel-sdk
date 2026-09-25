# AgentExportRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agent** | [**AgentDef**](AgentDef.md) |  | 
**To** | **string** | The dialect to write. | 
**Overwrite** | Pointer to **bool** | Only ever after a plan reported &#x60;theirs&#x60; and a person agreed. | [optional] [default to false]

## Methods

### NewAgentExportRequest

`func NewAgentExportRequest(agent AgentDef, to string, ) *AgentExportRequest`

NewAgentExportRequest instantiates a new AgentExportRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAgentExportRequestWithDefaults

`func NewAgentExportRequestWithDefaults() *AgentExportRequest`

NewAgentExportRequestWithDefaults instantiates a new AgentExportRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAgent

`func (o *AgentExportRequest) GetAgent() AgentDef`

GetAgent returns the Agent field if non-nil, zero value otherwise.

### GetAgentOk

`func (o *AgentExportRequest) GetAgentOk() (*AgentDef, bool)`

GetAgentOk returns a tuple with the Agent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgent

`func (o *AgentExportRequest) SetAgent(v AgentDef)`

SetAgent sets Agent field to given value.


### GetTo

`func (o *AgentExportRequest) GetTo() string`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *AgentExportRequest) GetToOk() (*string, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *AgentExportRequest) SetTo(v string)`

SetTo sets To field to given value.


### GetOverwrite

`func (o *AgentExportRequest) GetOverwrite() bool`

GetOverwrite returns the Overwrite field if non-nil, zero value otherwise.

### GetOverwriteOk

`func (o *AgentExportRequest) GetOverwriteOk() (*bool, bool)`

GetOverwriteOk returns a tuple with the Overwrite field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOverwrite

`func (o *AgentExportRequest) SetOverwrite(v bool)`

SetOverwrite sets Overwrite field to given value.

### HasOverwrite

`func (o *AgentExportRequest) HasOverwrite() bool`

HasOverwrite returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


