# AgentCardProvider

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Organization** | Pointer to **string** |  | [optional] 
**Url** | Pointer to **string** |  | [optional] 

## Methods

### NewAgentCardProvider

`func NewAgentCardProvider() *AgentCardProvider`

NewAgentCardProvider instantiates a new AgentCardProvider object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAgentCardProviderWithDefaults

`func NewAgentCardProviderWithDefaults() *AgentCardProvider`

NewAgentCardProviderWithDefaults instantiates a new AgentCardProvider object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrganization

`func (o *AgentCardProvider) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *AgentCardProvider) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *AgentCardProvider) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *AgentCardProvider) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetUrl

`func (o *AgentCardProvider) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *AgentCardProvider) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *AgentCardProvider) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *AgentCardProvider) HasUrl() bool`

HasUrl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


