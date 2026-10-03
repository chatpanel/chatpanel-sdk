# LinkPairRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | Pointer to **string** | Absent is a phone. | [optional] 
**Name** | Pointer to **string** | A phone pairing — what the phone calls this computer. | [optional] 
**Partner** | Pointer to [**LinkPairRequestPartner**](LinkPairRequestPartner.md) |  | [optional] 
**Scopes** | Pointer to [**LinkPairRequestScopes**](LinkPairRequestScopes.md) |  | [optional] 
**Route** | Pointer to **string** | The partner&#39;s one path. Absent is the gateway&#39;s own route. | [optional] 
**Relay** | Pointer to **string** | The https relay for &#x60;route relay&#x60;. | [optional] 
**Folder** | Pointer to **string** | Where the partner&#39;s agents work (with &#x60;agents&#x60;, 0.90.0+): an absolute path or ~/…; absent is ~/.chatpanel/partners/&lt;name&gt;. Never the disk or the home folder. | [optional] 
**Confirm** | Pointer to **bool** | The owner saw the preview and said yes. Without it nothing is issued. | [optional] 

## Methods

### NewLinkPairRequest

`func NewLinkPairRequest() *LinkPairRequest`

NewLinkPairRequest instantiates a new LinkPairRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLinkPairRequestWithDefaults

`func NewLinkPairRequestWithDefaults() *LinkPairRequest`

NewLinkPairRequestWithDefaults instantiates a new LinkPairRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *LinkPairRequest) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *LinkPairRequest) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *LinkPairRequest) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *LinkPairRequest) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetName

`func (o *LinkPairRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *LinkPairRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *LinkPairRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *LinkPairRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetPartner

`func (o *LinkPairRequest) GetPartner() LinkPairRequestPartner`

GetPartner returns the Partner field if non-nil, zero value otherwise.

### GetPartnerOk

`func (o *LinkPairRequest) GetPartnerOk() (*LinkPairRequestPartner, bool)`

GetPartnerOk returns a tuple with the Partner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPartner

`func (o *LinkPairRequest) SetPartner(v LinkPairRequestPartner)`

SetPartner sets Partner field to given value.

### HasPartner

`func (o *LinkPairRequest) HasPartner() bool`

HasPartner returns a boolean if a field has been set.

### GetScopes

`func (o *LinkPairRequest) GetScopes() LinkPairRequestScopes`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *LinkPairRequest) GetScopesOk() (*LinkPairRequestScopes, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *LinkPairRequest) SetScopes(v LinkPairRequestScopes)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *LinkPairRequest) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetRoute

`func (o *LinkPairRequest) GetRoute() string`

GetRoute returns the Route field if non-nil, zero value otherwise.

### GetRouteOk

`func (o *LinkPairRequest) GetRouteOk() (*string, bool)`

GetRouteOk returns a tuple with the Route field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoute

`func (o *LinkPairRequest) SetRoute(v string)`

SetRoute sets Route field to given value.

### HasRoute

`func (o *LinkPairRequest) HasRoute() bool`

HasRoute returns a boolean if a field has been set.

### GetRelay

`func (o *LinkPairRequest) GetRelay() string`

GetRelay returns the Relay field if non-nil, zero value otherwise.

### GetRelayOk

`func (o *LinkPairRequest) GetRelayOk() (*string, bool)`

GetRelayOk returns a tuple with the Relay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRelay

`func (o *LinkPairRequest) SetRelay(v string)`

SetRelay sets Relay field to given value.

### HasRelay

`func (o *LinkPairRequest) HasRelay() bool`

HasRelay returns a boolean if a field has been set.

### GetFolder

`func (o *LinkPairRequest) GetFolder() string`

GetFolder returns the Folder field if non-nil, zero value otherwise.

### GetFolderOk

`func (o *LinkPairRequest) GetFolderOk() (*string, bool)`

GetFolderOk returns a tuple with the Folder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFolder

`func (o *LinkPairRequest) SetFolder(v string)`

SetFolder sets Folder field to given value.

### HasFolder

`func (o *LinkPairRequest) HasFolder() bool`

HasFolder returns a boolean if a field has been set.

### GetConfirm

`func (o *LinkPairRequest) GetConfirm() bool`

GetConfirm returns the Confirm field if non-nil, zero value otherwise.

### GetConfirmOk

`func (o *LinkPairRequest) GetConfirmOk() (*bool, bool)`

GetConfirmOk returns a tuple with the Confirm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfirm

`func (o *LinkPairRequest) SetConfirm(v bool)`

SetConfirm sets Confirm field to given value.

### HasConfirm

`func (o *LinkPairRequest) HasConfirm() bool`

HasConfirm returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


