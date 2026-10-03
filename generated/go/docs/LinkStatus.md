# LinkStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **bool** |  | 
**Route** | Pointer to **string** |  | [optional] 
**Relay** | Pointer to **NullableString** |  | [optional] 
**Tunnel** | Pointer to **NullableString** |  | [optional] 
**Problem** | Pointer to **string** |  | [optional] 
**Routes** | Pointer to **[]map[string]interface{}** |  | [optional] 
**Setup** | Pointer to **map[string]interface{}** |  | [optional] 
**Devices** | [**[]LinkDevice**](LinkDevice.md) |  | 
**Pairing** | Pointer to **map[string]interface{}** | A phone code waiting to be scanned. | [optional] 
**PartnerPairing** | Pointer to **map[string]interface{}** | A partner code waiting to be used. | [optional] 
**AgentSessions** | Pointer to **bool** |  | [optional] 

## Methods

### NewLinkStatus

`func NewLinkStatus(enabled bool, devices []LinkDevice, ) *LinkStatus`

NewLinkStatus instantiates a new LinkStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLinkStatusWithDefaults

`func NewLinkStatusWithDefaults() *LinkStatus`

NewLinkStatusWithDefaults instantiates a new LinkStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *LinkStatus) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *LinkStatus) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *LinkStatus) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.


### GetRoute

`func (o *LinkStatus) GetRoute() string`

GetRoute returns the Route field if non-nil, zero value otherwise.

### GetRouteOk

`func (o *LinkStatus) GetRouteOk() (*string, bool)`

GetRouteOk returns a tuple with the Route field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoute

`func (o *LinkStatus) SetRoute(v string)`

SetRoute sets Route field to given value.

### HasRoute

`func (o *LinkStatus) HasRoute() bool`

HasRoute returns a boolean if a field has been set.

### GetRelay

`func (o *LinkStatus) GetRelay() string`

GetRelay returns the Relay field if non-nil, zero value otherwise.

### GetRelayOk

`func (o *LinkStatus) GetRelayOk() (*string, bool)`

GetRelayOk returns a tuple with the Relay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRelay

`func (o *LinkStatus) SetRelay(v string)`

SetRelay sets Relay field to given value.

### HasRelay

`func (o *LinkStatus) HasRelay() bool`

HasRelay returns a boolean if a field has been set.

### SetRelayNil

`func (o *LinkStatus) SetRelayNil(b bool)`

 SetRelayNil sets the value for Relay to be an explicit nil

### UnsetRelay
`func (o *LinkStatus) UnsetRelay()`

UnsetRelay ensures that no value is present for Relay, not even an explicit nil
### GetTunnel

`func (o *LinkStatus) GetTunnel() string`

GetTunnel returns the Tunnel field if non-nil, zero value otherwise.

### GetTunnelOk

`func (o *LinkStatus) GetTunnelOk() (*string, bool)`

GetTunnelOk returns a tuple with the Tunnel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTunnel

`func (o *LinkStatus) SetTunnel(v string)`

SetTunnel sets Tunnel field to given value.

### HasTunnel

`func (o *LinkStatus) HasTunnel() bool`

HasTunnel returns a boolean if a field has been set.

### SetTunnelNil

`func (o *LinkStatus) SetTunnelNil(b bool)`

 SetTunnelNil sets the value for Tunnel to be an explicit nil

### UnsetTunnel
`func (o *LinkStatus) UnsetTunnel()`

UnsetTunnel ensures that no value is present for Tunnel, not even an explicit nil
### GetProblem

`func (o *LinkStatus) GetProblem() string`

GetProblem returns the Problem field if non-nil, zero value otherwise.

### GetProblemOk

`func (o *LinkStatus) GetProblemOk() (*string, bool)`

GetProblemOk returns a tuple with the Problem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProblem

`func (o *LinkStatus) SetProblem(v string)`

SetProblem sets Problem field to given value.

### HasProblem

`func (o *LinkStatus) HasProblem() bool`

HasProblem returns a boolean if a field has been set.

### GetRoutes

`func (o *LinkStatus) GetRoutes() []map[string]interface{}`

GetRoutes returns the Routes field if non-nil, zero value otherwise.

### GetRoutesOk

`func (o *LinkStatus) GetRoutesOk() (*[]map[string]interface{}, bool)`

GetRoutesOk returns a tuple with the Routes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoutes

`func (o *LinkStatus) SetRoutes(v []map[string]interface{})`

SetRoutes sets Routes field to given value.

### HasRoutes

`func (o *LinkStatus) HasRoutes() bool`

HasRoutes returns a boolean if a field has been set.

### GetSetup

`func (o *LinkStatus) GetSetup() map[string]interface{}`

GetSetup returns the Setup field if non-nil, zero value otherwise.

### GetSetupOk

`func (o *LinkStatus) GetSetupOk() (*map[string]interface{}, bool)`

GetSetupOk returns a tuple with the Setup field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSetup

`func (o *LinkStatus) SetSetup(v map[string]interface{})`

SetSetup sets Setup field to given value.

### HasSetup

`func (o *LinkStatus) HasSetup() bool`

HasSetup returns a boolean if a field has been set.

### GetDevices

`func (o *LinkStatus) GetDevices() []LinkDevice`

GetDevices returns the Devices field if non-nil, zero value otherwise.

### GetDevicesOk

`func (o *LinkStatus) GetDevicesOk() (*[]LinkDevice, bool)`

GetDevicesOk returns a tuple with the Devices field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDevices

`func (o *LinkStatus) SetDevices(v []LinkDevice)`

SetDevices sets Devices field to given value.


### GetPairing

`func (o *LinkStatus) GetPairing() map[string]interface{}`

GetPairing returns the Pairing field if non-nil, zero value otherwise.

### GetPairingOk

`func (o *LinkStatus) GetPairingOk() (*map[string]interface{}, bool)`

GetPairingOk returns a tuple with the Pairing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPairing

`func (o *LinkStatus) SetPairing(v map[string]interface{})`

SetPairing sets Pairing field to given value.

### HasPairing

`func (o *LinkStatus) HasPairing() bool`

HasPairing returns a boolean if a field has been set.

### SetPairingNil

`func (o *LinkStatus) SetPairingNil(b bool)`

 SetPairingNil sets the value for Pairing to be an explicit nil

### UnsetPairing
`func (o *LinkStatus) UnsetPairing()`

UnsetPairing ensures that no value is present for Pairing, not even an explicit nil
### GetPartnerPairing

`func (o *LinkStatus) GetPartnerPairing() map[string]interface{}`

GetPartnerPairing returns the PartnerPairing field if non-nil, zero value otherwise.

### GetPartnerPairingOk

`func (o *LinkStatus) GetPartnerPairingOk() (*map[string]interface{}, bool)`

GetPartnerPairingOk returns a tuple with the PartnerPairing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPartnerPairing

`func (o *LinkStatus) SetPartnerPairing(v map[string]interface{})`

SetPartnerPairing sets PartnerPairing field to given value.

### HasPartnerPairing

`func (o *LinkStatus) HasPartnerPairing() bool`

HasPartnerPairing returns a boolean if a field has been set.

### SetPartnerPairingNil

`func (o *LinkStatus) SetPartnerPairingNil(b bool)`

 SetPartnerPairingNil sets the value for PartnerPairing to be an explicit nil

### UnsetPartnerPairing
`func (o *LinkStatus) UnsetPartnerPairing()`

UnsetPartnerPairing ensures that no value is present for PartnerPairing, not even an explicit nil
### GetAgentSessions

`func (o *LinkStatus) GetAgentSessions() bool`

GetAgentSessions returns the AgentSessions field if non-nil, zero value otherwise.

### GetAgentSessionsOk

`func (o *LinkStatus) GetAgentSessionsOk() (*bool, bool)`

GetAgentSessionsOk returns a tuple with the AgentSessions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentSessions

`func (o *LinkStatus) SetAgentSessions(v bool)`

SetAgentSessions sets AgentSessions field to given value.

### HasAgentSessions

`func (o *LinkStatus) HasAgentSessions() bool`

HasAgentSessions returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


