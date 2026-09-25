# AgentCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Description** | **string** |  | 
**Version** | **string** |  | 
**SupportedInterfaces** | Pointer to [**[]AgentCardSupportedInterfacesInner**](AgentCardSupportedInterfacesInner.md) |  | [optional] 
**Provider** | Pointer to [**AgentCardProvider**](AgentCardProvider.md) |  | [optional] 
**Capabilities** | Pointer to [**AgentCardCapabilities**](AgentCardCapabilities.md) |  | [optional] 
**DefaultInputModes** | Pointer to **[]string** |  | [optional] 
**DefaultOutputModes** | Pointer to **[]string** |  | [optional] 
**Skills** | Pointer to **[]map[string]interface{}** |  | [optional] 
**IconUrl** | Pointer to **string** |  | [optional] 
**DocumentationUrl** | Pointer to **string** |  | [optional] 

## Methods

### NewAgentCard

`func NewAgentCard(name string, description string, version string, ) *AgentCard`

NewAgentCard instantiates a new AgentCard object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAgentCardWithDefaults

`func NewAgentCardWithDefaults() *AgentCard`

NewAgentCardWithDefaults instantiates a new AgentCard object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AgentCard) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AgentCard) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AgentCard) SetName(v string)`

SetName sets Name field to given value.


### GetDescription

`func (o *AgentCard) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AgentCard) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AgentCard) SetDescription(v string)`

SetDescription sets Description field to given value.


### GetVersion

`func (o *AgentCard) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *AgentCard) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *AgentCard) SetVersion(v string)`

SetVersion sets Version field to given value.


### GetSupportedInterfaces

`func (o *AgentCard) GetSupportedInterfaces() []AgentCardSupportedInterfacesInner`

GetSupportedInterfaces returns the SupportedInterfaces field if non-nil, zero value otherwise.

### GetSupportedInterfacesOk

`func (o *AgentCard) GetSupportedInterfacesOk() (*[]AgentCardSupportedInterfacesInner, bool)`

GetSupportedInterfacesOk returns a tuple with the SupportedInterfaces field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSupportedInterfaces

`func (o *AgentCard) SetSupportedInterfaces(v []AgentCardSupportedInterfacesInner)`

SetSupportedInterfaces sets SupportedInterfaces field to given value.

### HasSupportedInterfaces

`func (o *AgentCard) HasSupportedInterfaces() bool`

HasSupportedInterfaces returns a boolean if a field has been set.

### GetProvider

`func (o *AgentCard) GetProvider() AgentCardProvider`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *AgentCard) GetProviderOk() (*AgentCardProvider, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *AgentCard) SetProvider(v AgentCardProvider)`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *AgentCard) HasProvider() bool`

HasProvider returns a boolean if a field has been set.

### GetCapabilities

`func (o *AgentCard) GetCapabilities() AgentCardCapabilities`

GetCapabilities returns the Capabilities field if non-nil, zero value otherwise.

### GetCapabilitiesOk

`func (o *AgentCard) GetCapabilitiesOk() (*AgentCardCapabilities, bool)`

GetCapabilitiesOk returns a tuple with the Capabilities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapabilities

`func (o *AgentCard) SetCapabilities(v AgentCardCapabilities)`

SetCapabilities sets Capabilities field to given value.

### HasCapabilities

`func (o *AgentCard) HasCapabilities() bool`

HasCapabilities returns a boolean if a field has been set.

### GetDefaultInputModes

`func (o *AgentCard) GetDefaultInputModes() []string`

GetDefaultInputModes returns the DefaultInputModes field if non-nil, zero value otherwise.

### GetDefaultInputModesOk

`func (o *AgentCard) GetDefaultInputModesOk() (*[]string, bool)`

GetDefaultInputModesOk returns a tuple with the DefaultInputModes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultInputModes

`func (o *AgentCard) SetDefaultInputModes(v []string)`

SetDefaultInputModes sets DefaultInputModes field to given value.

### HasDefaultInputModes

`func (o *AgentCard) HasDefaultInputModes() bool`

HasDefaultInputModes returns a boolean if a field has been set.

### GetDefaultOutputModes

`func (o *AgentCard) GetDefaultOutputModes() []string`

GetDefaultOutputModes returns the DefaultOutputModes field if non-nil, zero value otherwise.

### GetDefaultOutputModesOk

`func (o *AgentCard) GetDefaultOutputModesOk() (*[]string, bool)`

GetDefaultOutputModesOk returns a tuple with the DefaultOutputModes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultOutputModes

`func (o *AgentCard) SetDefaultOutputModes(v []string)`

SetDefaultOutputModes sets DefaultOutputModes field to given value.

### HasDefaultOutputModes

`func (o *AgentCard) HasDefaultOutputModes() bool`

HasDefaultOutputModes returns a boolean if a field has been set.

### GetSkills

`func (o *AgentCard) GetSkills() []map[string]interface{}`

GetSkills returns the Skills field if non-nil, zero value otherwise.

### GetSkillsOk

`func (o *AgentCard) GetSkillsOk() (*[]map[string]interface{}, bool)`

GetSkillsOk returns a tuple with the Skills field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkills

`func (o *AgentCard) SetSkills(v []map[string]interface{})`

SetSkills sets Skills field to given value.

### HasSkills

`func (o *AgentCard) HasSkills() bool`

HasSkills returns a boolean if a field has been set.

### GetIconUrl

`func (o *AgentCard) GetIconUrl() string`

GetIconUrl returns the IconUrl field if non-nil, zero value otherwise.

### GetIconUrlOk

`func (o *AgentCard) GetIconUrlOk() (*string, bool)`

GetIconUrlOk returns a tuple with the IconUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconUrl

`func (o *AgentCard) SetIconUrl(v string)`

SetIconUrl sets IconUrl field to given value.

### HasIconUrl

`func (o *AgentCard) HasIconUrl() bool`

HasIconUrl returns a boolean if a field has been set.

### GetDocumentationUrl

`func (o *AgentCard) GetDocumentationUrl() string`

GetDocumentationUrl returns the DocumentationUrl field if non-nil, zero value otherwise.

### GetDocumentationUrlOk

`func (o *AgentCard) GetDocumentationUrlOk() (*string, bool)`

GetDocumentationUrlOk returns a tuple with the DocumentationUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocumentationUrl

`func (o *AgentCard) SetDocumentationUrl(v string)`

SetDocumentationUrl sets DocumentationUrl field to given value.

### HasDocumentationUrl

`func (o *AgentCard) HasDocumentationUrl() bool`

HasDocumentationUrl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


