# LinkDevice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Kind** | Pointer to **string** |  | [optional] 
**Name** | **string** |  | 
**PairedAt** | Pointer to **NullableInt64** |  | [optional] 
**LastSeen** | Pointer to **NullableInt64** |  | [optional] 
**Online** | Pointer to **bool** |  | [optional] 
**Via** | Pointer to **NullableString** | tunnel or relay, while online. | [optional] 
**Partner** | Pointer to [**LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional] 
**Scopes** | Pointer to **[]string** |  | [optional] 
**Route** | Pointer to **NullableString** | A partner&#39;s route | [optional] 
**Host** | Pointer to **string** |  | [optional] 
**RouteClosed** | Pointer to **bool** | A tunnel partner whose door shut when the gateway&#39;s route moved — pair it again to move it. | [optional] 
**Folder** | Pointer to **string** | Where a partner&#39;s agents work (0.90.0+, with agents). | [optional] 
**StaleRelay** | Pointer to **string** |  | [optional] 
**TunnelNeedsRelink** | Pointer to **bool** |  | [optional] 

## Methods

### NewLinkDevice

`func NewLinkDevice(id string, name string, ) *LinkDevice`

NewLinkDevice instantiates a new LinkDevice object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLinkDeviceWithDefaults

`func NewLinkDeviceWithDefaults() *LinkDevice`

NewLinkDeviceWithDefaults instantiates a new LinkDevice object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *LinkDevice) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *LinkDevice) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *LinkDevice) SetId(v string)`

SetId sets Id field to given value.


### GetKind

`func (o *LinkDevice) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *LinkDevice) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *LinkDevice) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *LinkDevice) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetName

`func (o *LinkDevice) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *LinkDevice) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *LinkDevice) SetName(v string)`

SetName sets Name field to given value.


### GetPairedAt

`func (o *LinkDevice) GetPairedAt() int64`

GetPairedAt returns the PairedAt field if non-nil, zero value otherwise.

### GetPairedAtOk

`func (o *LinkDevice) GetPairedAtOk() (*int64, bool)`

GetPairedAtOk returns a tuple with the PairedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPairedAt

`func (o *LinkDevice) SetPairedAt(v int64)`

SetPairedAt sets PairedAt field to given value.

### HasPairedAt

`func (o *LinkDevice) HasPairedAt() bool`

HasPairedAt returns a boolean if a field has been set.

### SetPairedAtNil

`func (o *LinkDevice) SetPairedAtNil(b bool)`

 SetPairedAtNil sets the value for PairedAt to be an explicit nil

### UnsetPairedAt
`func (o *LinkDevice) UnsetPairedAt()`

UnsetPairedAt ensures that no value is present for PairedAt, not even an explicit nil
### GetLastSeen

`func (o *LinkDevice) GetLastSeen() int64`

GetLastSeen returns the LastSeen field if non-nil, zero value otherwise.

### GetLastSeenOk

`func (o *LinkDevice) GetLastSeenOk() (*int64, bool)`

GetLastSeenOk returns a tuple with the LastSeen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSeen

`func (o *LinkDevice) SetLastSeen(v int64)`

SetLastSeen sets LastSeen field to given value.

### HasLastSeen

`func (o *LinkDevice) HasLastSeen() bool`

HasLastSeen returns a boolean if a field has been set.

### SetLastSeenNil

`func (o *LinkDevice) SetLastSeenNil(b bool)`

 SetLastSeenNil sets the value for LastSeen to be an explicit nil

### UnsetLastSeen
`func (o *LinkDevice) UnsetLastSeen()`

UnsetLastSeen ensures that no value is present for LastSeen, not even an explicit nil
### GetOnline

`func (o *LinkDevice) GetOnline() bool`

GetOnline returns the Online field if non-nil, zero value otherwise.

### GetOnlineOk

`func (o *LinkDevice) GetOnlineOk() (*bool, bool)`

GetOnlineOk returns a tuple with the Online field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOnline

`func (o *LinkDevice) SetOnline(v bool)`

SetOnline sets Online field to given value.

### HasOnline

`func (o *LinkDevice) HasOnline() bool`

HasOnline returns a boolean if a field has been set.

### GetVia

`func (o *LinkDevice) GetVia() string`

GetVia returns the Via field if non-nil, zero value otherwise.

### GetViaOk

`func (o *LinkDevice) GetViaOk() (*string, bool)`

GetViaOk returns a tuple with the Via field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVia

`func (o *LinkDevice) SetVia(v string)`

SetVia sets Via field to given value.

### HasVia

`func (o *LinkDevice) HasVia() bool`

HasVia returns a boolean if a field has been set.

### SetViaNil

`func (o *LinkDevice) SetViaNil(b bool)`

 SetViaNil sets the value for Via to be an explicit nil

### UnsetVia
`func (o *LinkDevice) UnsetVia()`

UnsetVia ensures that no value is present for Via, not even an explicit nil
### GetPartner

`func (o *LinkDevice) GetPartner() LinkPairResultPartner`

GetPartner returns the Partner field if non-nil, zero value otherwise.

### GetPartnerOk

`func (o *LinkDevice) GetPartnerOk() (*LinkPairResultPartner, bool)`

GetPartnerOk returns a tuple with the Partner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPartner

`func (o *LinkDevice) SetPartner(v LinkPairResultPartner)`

SetPartner sets Partner field to given value.

### HasPartner

`func (o *LinkDevice) HasPartner() bool`

HasPartner returns a boolean if a field has been set.

### GetScopes

`func (o *LinkDevice) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *LinkDevice) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *LinkDevice) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *LinkDevice) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetRoute

`func (o *LinkDevice) GetRoute() string`

GetRoute returns the Route field if non-nil, zero value otherwise.

### GetRouteOk

`func (o *LinkDevice) GetRouteOk() (*string, bool)`

GetRouteOk returns a tuple with the Route field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoute

`func (o *LinkDevice) SetRoute(v string)`

SetRoute sets Route field to given value.

### HasRoute

`func (o *LinkDevice) HasRoute() bool`

HasRoute returns a boolean if a field has been set.

### SetRouteNil

`func (o *LinkDevice) SetRouteNil(b bool)`

 SetRouteNil sets the value for Route to be an explicit nil

### UnsetRoute
`func (o *LinkDevice) UnsetRoute()`

UnsetRoute ensures that no value is present for Route, not even an explicit nil
### GetHost

`func (o *LinkDevice) GetHost() string`

GetHost returns the Host field if non-nil, zero value otherwise.

### GetHostOk

`func (o *LinkDevice) GetHostOk() (*string, bool)`

GetHostOk returns a tuple with the Host field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHost

`func (o *LinkDevice) SetHost(v string)`

SetHost sets Host field to given value.

### HasHost

`func (o *LinkDevice) HasHost() bool`

HasHost returns a boolean if a field has been set.

### GetRouteClosed

`func (o *LinkDevice) GetRouteClosed() bool`

GetRouteClosed returns the RouteClosed field if non-nil, zero value otherwise.

### GetRouteClosedOk

`func (o *LinkDevice) GetRouteClosedOk() (*bool, bool)`

GetRouteClosedOk returns a tuple with the RouteClosed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRouteClosed

`func (o *LinkDevice) SetRouteClosed(v bool)`

SetRouteClosed sets RouteClosed field to given value.

### HasRouteClosed

`func (o *LinkDevice) HasRouteClosed() bool`

HasRouteClosed returns a boolean if a field has been set.

### GetFolder

`func (o *LinkDevice) GetFolder() string`

GetFolder returns the Folder field if non-nil, zero value otherwise.

### GetFolderOk

`func (o *LinkDevice) GetFolderOk() (*string, bool)`

GetFolderOk returns a tuple with the Folder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFolder

`func (o *LinkDevice) SetFolder(v string)`

SetFolder sets Folder field to given value.

### HasFolder

`func (o *LinkDevice) HasFolder() bool`

HasFolder returns a boolean if a field has been set.

### GetStaleRelay

`func (o *LinkDevice) GetStaleRelay() string`

GetStaleRelay returns the StaleRelay field if non-nil, zero value otherwise.

### GetStaleRelayOk

`func (o *LinkDevice) GetStaleRelayOk() (*string, bool)`

GetStaleRelayOk returns a tuple with the StaleRelay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStaleRelay

`func (o *LinkDevice) SetStaleRelay(v string)`

SetStaleRelay sets StaleRelay field to given value.

### HasStaleRelay

`func (o *LinkDevice) HasStaleRelay() bool`

HasStaleRelay returns a boolean if a field has been set.

### GetTunnelNeedsRelink

`func (o *LinkDevice) GetTunnelNeedsRelink() bool`

GetTunnelNeedsRelink returns the TunnelNeedsRelink field if non-nil, zero value otherwise.

### GetTunnelNeedsRelinkOk

`func (o *LinkDevice) GetTunnelNeedsRelinkOk() (*bool, bool)`

GetTunnelNeedsRelinkOk returns a tuple with the TunnelNeedsRelink field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTunnelNeedsRelink

`func (o *LinkDevice) SetTunnelNeedsRelink(v bool)`

SetTunnelNeedsRelink sets TunnelNeedsRelink field to given value.

### HasTunnelNeedsRelink

`func (o *LinkDevice) HasTunnelNeedsRelink() bool`

HasTunnelNeedsRelink returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


