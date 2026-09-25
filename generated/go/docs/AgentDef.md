# AgentDef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Name** | Pointer to **string** |  | [optional] 
**Purpose** | Pointer to **string** |  | [optional] 
**Dialect** | Pointer to **string** |  | [optional] 
**Source** | Pointer to **string** | The folder it was read from: chatpanel, claude, codex, agents-dir, external. | [optional] 
**Label** | Pointer to **string** |  | [optional] 
**Path** | Pointer to **string** | Relative to the root it was found in. | [optional] 
**Writable** | Pointer to **bool** |  | [optional] 
**Engine** | Pointer to **map[string]interface{}** |  | [optional] 
**Grants** | Pointer to **[]string** |  | [optional] 
**Skills** | Pointer to **[]string** |  | [optional] 
**PromptChars** | Pointer to **int32** |  | [optional] 
**Prompt** | Pointer to **string** | Only on &#x60;GET /agent-defs/{agentId}&#x60;. | [optional] 
**Warnings** | Pointer to **[]string** | What the dialect could not map — an unmapped tool is reported, never widened into a grant. | [optional] 
**Scanned** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewAgentDef

`func NewAgentDef(id string, ) *AgentDef`

NewAgentDef instantiates a new AgentDef object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAgentDefWithDefaults

`func NewAgentDefWithDefaults() *AgentDef`

NewAgentDefWithDefaults instantiates a new AgentDef object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AgentDef) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AgentDef) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AgentDef) SetId(v string)`

SetId sets Id field to given value.


### GetName

`func (o *AgentDef) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AgentDef) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AgentDef) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *AgentDef) HasName() bool`

HasName returns a boolean if a field has been set.

### GetPurpose

`func (o *AgentDef) GetPurpose() string`

GetPurpose returns the Purpose field if non-nil, zero value otherwise.

### GetPurposeOk

`func (o *AgentDef) GetPurposeOk() (*string, bool)`

GetPurposeOk returns a tuple with the Purpose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPurpose

`func (o *AgentDef) SetPurpose(v string)`

SetPurpose sets Purpose field to given value.

### HasPurpose

`func (o *AgentDef) HasPurpose() bool`

HasPurpose returns a boolean if a field has been set.

### GetDialect

`func (o *AgentDef) GetDialect() string`

GetDialect returns the Dialect field if non-nil, zero value otherwise.

### GetDialectOk

`func (o *AgentDef) GetDialectOk() (*string, bool)`

GetDialectOk returns a tuple with the Dialect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDialect

`func (o *AgentDef) SetDialect(v string)`

SetDialect sets Dialect field to given value.

### HasDialect

`func (o *AgentDef) HasDialect() bool`

HasDialect returns a boolean if a field has been set.

### GetSource

`func (o *AgentDef) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *AgentDef) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *AgentDef) SetSource(v string)`

SetSource sets Source field to given value.

### HasSource

`func (o *AgentDef) HasSource() bool`

HasSource returns a boolean if a field has been set.

### GetLabel

`func (o *AgentDef) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *AgentDef) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *AgentDef) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *AgentDef) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetPath

`func (o *AgentDef) GetPath() string`

GetPath returns the Path field if non-nil, zero value otherwise.

### GetPathOk

`func (o *AgentDef) GetPathOk() (*string, bool)`

GetPathOk returns a tuple with the Path field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPath

`func (o *AgentDef) SetPath(v string)`

SetPath sets Path field to given value.

### HasPath

`func (o *AgentDef) HasPath() bool`

HasPath returns a boolean if a field has been set.

### GetWritable

`func (o *AgentDef) GetWritable() bool`

GetWritable returns the Writable field if non-nil, zero value otherwise.

### GetWritableOk

`func (o *AgentDef) GetWritableOk() (*bool, bool)`

GetWritableOk returns a tuple with the Writable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWritable

`func (o *AgentDef) SetWritable(v bool)`

SetWritable sets Writable field to given value.

### HasWritable

`func (o *AgentDef) HasWritable() bool`

HasWritable returns a boolean if a field has been set.

### GetEngine

`func (o *AgentDef) GetEngine() map[string]interface{}`

GetEngine returns the Engine field if non-nil, zero value otherwise.

### GetEngineOk

`func (o *AgentDef) GetEngineOk() (*map[string]interface{}, bool)`

GetEngineOk returns a tuple with the Engine field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEngine

`func (o *AgentDef) SetEngine(v map[string]interface{})`

SetEngine sets Engine field to given value.

### HasEngine

`func (o *AgentDef) HasEngine() bool`

HasEngine returns a boolean if a field has been set.

### GetGrants

`func (o *AgentDef) GetGrants() []string`

GetGrants returns the Grants field if non-nil, zero value otherwise.

### GetGrantsOk

`func (o *AgentDef) GetGrantsOk() (*[]string, bool)`

GetGrantsOk returns a tuple with the Grants field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrants

`func (o *AgentDef) SetGrants(v []string)`

SetGrants sets Grants field to given value.

### HasGrants

`func (o *AgentDef) HasGrants() bool`

HasGrants returns a boolean if a field has been set.

### GetSkills

`func (o *AgentDef) GetSkills() []string`

GetSkills returns the Skills field if non-nil, zero value otherwise.

### GetSkillsOk

`func (o *AgentDef) GetSkillsOk() (*[]string, bool)`

GetSkillsOk returns a tuple with the Skills field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkills

`func (o *AgentDef) SetSkills(v []string)`

SetSkills sets Skills field to given value.

### HasSkills

`func (o *AgentDef) HasSkills() bool`

HasSkills returns a boolean if a field has been set.

### GetPromptChars

`func (o *AgentDef) GetPromptChars() int32`

GetPromptChars returns the PromptChars field if non-nil, zero value otherwise.

### GetPromptCharsOk

`func (o *AgentDef) GetPromptCharsOk() (*int32, bool)`

GetPromptCharsOk returns a tuple with the PromptChars field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPromptChars

`func (o *AgentDef) SetPromptChars(v int32)`

SetPromptChars sets PromptChars field to given value.

### HasPromptChars

`func (o *AgentDef) HasPromptChars() bool`

HasPromptChars returns a boolean if a field has been set.

### GetPrompt

`func (o *AgentDef) GetPrompt() string`

GetPrompt returns the Prompt field if non-nil, zero value otherwise.

### GetPromptOk

`func (o *AgentDef) GetPromptOk() (*string, bool)`

GetPromptOk returns a tuple with the Prompt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrompt

`func (o *AgentDef) SetPrompt(v string)`

SetPrompt sets Prompt field to given value.

### HasPrompt

`func (o *AgentDef) HasPrompt() bool`

HasPrompt returns a boolean if a field has been set.

### GetWarnings

`func (o *AgentDef) GetWarnings() []string`

GetWarnings returns the Warnings field if non-nil, zero value otherwise.

### GetWarningsOk

`func (o *AgentDef) GetWarningsOk() (*[]string, bool)`

GetWarningsOk returns a tuple with the Warnings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWarnings

`func (o *AgentDef) SetWarnings(v []string)`

SetWarnings sets Warnings field to given value.

### HasWarnings

`func (o *AgentDef) HasWarnings() bool`

HasWarnings returns a boolean if a field has been set.

### GetScanned

`func (o *AgentDef) GetScanned() map[string]interface{}`

GetScanned returns the Scanned field if non-nil, zero value otherwise.

### GetScannedOk

`func (o *AgentDef) GetScannedOk() (*map[string]interface{}, bool)`

GetScannedOk returns a tuple with the Scanned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScanned

`func (o *AgentDef) SetScanned(v map[string]interface{})`

SetScanned sets Scanned field to given value.

### HasScanned

`func (o *AgentDef) HasScanned() bool`

HasScanned returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


