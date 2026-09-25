# AgentsListDefs200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agents** | [**[]AgentDef**](AgentDef.md) |  | 
**Quarantined** | Pointer to **[]map[string]*interface{}** | Definitions the scanner refused. | [optional] 
**Problems** | Pointer to **[]map[string]interface{}** | Files that parsed as a definition and could not be made one. | [optional] 

## Methods

### NewAgentsListDefs200Response

`func NewAgentsListDefs200Response(agents []AgentDef, ) *AgentsListDefs200Response`

NewAgentsListDefs200Response instantiates a new AgentsListDefs200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAgentsListDefs200ResponseWithDefaults

`func NewAgentsListDefs200ResponseWithDefaults() *AgentsListDefs200Response`

NewAgentsListDefs200ResponseWithDefaults instantiates a new AgentsListDefs200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAgents

`func (o *AgentsListDefs200Response) GetAgents() []AgentDef`

GetAgents returns the Agents field if non-nil, zero value otherwise.

### GetAgentsOk

`func (o *AgentsListDefs200Response) GetAgentsOk() (*[]AgentDef, bool)`

GetAgentsOk returns a tuple with the Agents field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgents

`func (o *AgentsListDefs200Response) SetAgents(v []AgentDef)`

SetAgents sets Agents field to given value.


### GetQuarantined

`func (o *AgentsListDefs200Response) GetQuarantined() []map[string]*interface{}`

GetQuarantined returns the Quarantined field if non-nil, zero value otherwise.

### GetQuarantinedOk

`func (o *AgentsListDefs200Response) GetQuarantinedOk() (*[]map[string]*interface{}, bool)`

GetQuarantinedOk returns a tuple with the Quarantined field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuarantined

`func (o *AgentsListDefs200Response) SetQuarantined(v []map[string]*interface{})`

SetQuarantined sets Quarantined field to given value.

### HasQuarantined

`func (o *AgentsListDefs200Response) HasQuarantined() bool`

HasQuarantined returns a boolean if a field has been set.

### GetProblems

`func (o *AgentsListDefs200Response) GetProblems() []map[string]interface{}`

GetProblems returns the Problems field if non-nil, zero value otherwise.

### GetProblemsOk

`func (o *AgentsListDefs200Response) GetProblemsOk() (*[]map[string]interface{}, bool)`

GetProblemsOk returns a tuple with the Problems field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProblems

`func (o *AgentsListDefs200Response) SetProblems(v []map[string]interface{})`

SetProblems sets Problems field to given value.

### HasProblems

`func (o *AgentsListDefs200Response) HasProblems() bool`

HasProblems returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


