# LinkPartnerPreview

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Partner** | **string** |  | 
**Scopes** | **[]string** |  | 
**Agents** | **bool** |  | 
**Route** | **string** |  | 
**Host** | **string** | The one host the partner&#39;s server will connect to. | 
**Folder** | Pointer to **string** | Where its agents will work (with agents). | [optional] 
**Lines** | **[]string** | The confirmation as the owner reads it. | 

## Methods

### NewLinkPartnerPreview

`func NewLinkPartnerPreview(partner string, scopes []string, agents bool, route string, host string, lines []string, ) *LinkPartnerPreview`

NewLinkPartnerPreview instantiates a new LinkPartnerPreview object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLinkPartnerPreviewWithDefaults

`func NewLinkPartnerPreviewWithDefaults() *LinkPartnerPreview`

NewLinkPartnerPreviewWithDefaults instantiates a new LinkPartnerPreview object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPartner

`func (o *LinkPartnerPreview) GetPartner() string`

GetPartner returns the Partner field if non-nil, zero value otherwise.

### GetPartnerOk

`func (o *LinkPartnerPreview) GetPartnerOk() (*string, bool)`

GetPartnerOk returns a tuple with the Partner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPartner

`func (o *LinkPartnerPreview) SetPartner(v string)`

SetPartner sets Partner field to given value.


### GetScopes

`func (o *LinkPartnerPreview) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *LinkPartnerPreview) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *LinkPartnerPreview) SetScopes(v []string)`

SetScopes sets Scopes field to given value.


### GetAgents

`func (o *LinkPartnerPreview) GetAgents() bool`

GetAgents returns the Agents field if non-nil, zero value otherwise.

### GetAgentsOk

`func (o *LinkPartnerPreview) GetAgentsOk() (*bool, bool)`

GetAgentsOk returns a tuple with the Agents field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgents

`func (o *LinkPartnerPreview) SetAgents(v bool)`

SetAgents sets Agents field to given value.


### GetRoute

`func (o *LinkPartnerPreview) GetRoute() string`

GetRoute returns the Route field if non-nil, zero value otherwise.

### GetRouteOk

`func (o *LinkPartnerPreview) GetRouteOk() (*string, bool)`

GetRouteOk returns a tuple with the Route field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoute

`func (o *LinkPartnerPreview) SetRoute(v string)`

SetRoute sets Route field to given value.


### GetHost

`func (o *LinkPartnerPreview) GetHost() string`

GetHost returns the Host field if non-nil, zero value otherwise.

### GetHostOk

`func (o *LinkPartnerPreview) GetHostOk() (*string, bool)`

GetHostOk returns a tuple with the Host field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHost

`func (o *LinkPartnerPreview) SetHost(v string)`

SetHost sets Host field to given value.


### GetFolder

`func (o *LinkPartnerPreview) GetFolder() string`

GetFolder returns the Folder field if non-nil, zero value otherwise.

### GetFolderOk

`func (o *LinkPartnerPreview) GetFolderOk() (*string, bool)`

GetFolderOk returns a tuple with the Folder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFolder

`func (o *LinkPartnerPreview) SetFolder(v string)`

SetFolder sets Folder field to given value.

### HasFolder

`func (o *LinkPartnerPreview) HasFolder() bool`

HasFolder returns a boolean if a field has been set.

### GetLines

`func (o *LinkPartnerPreview) GetLines() []string`

GetLines returns the Lines field if non-nil, zero value otherwise.

### GetLinesOk

`func (o *LinkPartnerPreview) GetLinesOk() (*[]string, bool)`

GetLinesOk returns a tuple with the Lines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLines

`func (o *LinkPartnerPreview) SetLines(v []string)`

SetLines sets Lines field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


