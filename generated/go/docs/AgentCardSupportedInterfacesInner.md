# AgentCardSupportedInterfacesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | Pointer to **string** |  | [optional] 
**ProtocolBinding** | Pointer to **string** | JSONRPC, GRPC, HTTP+JSON — an open string, so an unknown binding is carried. | [optional] 
**ProtocolVersion** | Pointer to **string** |  | [optional] 
**Tenant** | Pointer to **string** | Echoed on every request to this interface when set. | [optional] 

## Methods

### NewAgentCardSupportedInterfacesInner

`func NewAgentCardSupportedInterfacesInner() *AgentCardSupportedInterfacesInner`

NewAgentCardSupportedInterfacesInner instantiates a new AgentCardSupportedInterfacesInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAgentCardSupportedInterfacesInnerWithDefaults

`func NewAgentCardSupportedInterfacesInnerWithDefaults() *AgentCardSupportedInterfacesInner`

NewAgentCardSupportedInterfacesInnerWithDefaults instantiates a new AgentCardSupportedInterfacesInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUrl

`func (o *AgentCardSupportedInterfacesInner) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *AgentCardSupportedInterfacesInner) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *AgentCardSupportedInterfacesInner) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *AgentCardSupportedInterfacesInner) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetProtocolBinding

`func (o *AgentCardSupportedInterfacesInner) GetProtocolBinding() string`

GetProtocolBinding returns the ProtocolBinding field if non-nil, zero value otherwise.

### GetProtocolBindingOk

`func (o *AgentCardSupportedInterfacesInner) GetProtocolBindingOk() (*string, bool)`

GetProtocolBindingOk returns a tuple with the ProtocolBinding field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtocolBinding

`func (o *AgentCardSupportedInterfacesInner) SetProtocolBinding(v string)`

SetProtocolBinding sets ProtocolBinding field to given value.

### HasProtocolBinding

`func (o *AgentCardSupportedInterfacesInner) HasProtocolBinding() bool`

HasProtocolBinding returns a boolean if a field has been set.

### GetProtocolVersion

`func (o *AgentCardSupportedInterfacesInner) GetProtocolVersion() string`

GetProtocolVersion returns the ProtocolVersion field if non-nil, zero value otherwise.

### GetProtocolVersionOk

`func (o *AgentCardSupportedInterfacesInner) GetProtocolVersionOk() (*string, bool)`

GetProtocolVersionOk returns a tuple with the ProtocolVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtocolVersion

`func (o *AgentCardSupportedInterfacesInner) SetProtocolVersion(v string)`

SetProtocolVersion sets ProtocolVersion field to given value.

### HasProtocolVersion

`func (o *AgentCardSupportedInterfacesInner) HasProtocolVersion() bool`

HasProtocolVersion returns a boolean if a field has been set.

### GetTenant

`func (o *AgentCardSupportedInterfacesInner) GetTenant() string`

GetTenant returns the Tenant field if non-nil, zero value otherwise.

### GetTenantOk

`func (o *AgentCardSupportedInterfacesInner) GetTenantOk() (*string, bool)`

GetTenantOk returns a tuple with the Tenant field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTenant

`func (o *AgentCardSupportedInterfacesInner) SetTenant(v string)`

SetTenant sets Tenant field to given value.

### HasTenant

`func (o *AgentCardSupportedInterfacesInner) HasTenant() bool`

HasTenant returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


