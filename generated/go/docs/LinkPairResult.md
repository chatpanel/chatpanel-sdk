# LinkPairResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uri** | Pointer to **string** | A phone&#39;s QR text. | [optional] 
**Svg** | Pointer to **string** | The QR as SVG. | [optional] 
**ExpiresAt** | Pointer to **int64** | Epoch ms when the code stops working. | [optional] 
**Room** | Pointer to **string** | The device id it pairs. | [optional] 
**Confirmed** | Pointer to **bool** | Partner pairings — false is a preview only. | [optional] 
**Preview** | Pointer to [**LinkPartnerPreview**](LinkPartnerPreview.md) |  | [optional] 
**Code** | Pointer to **string** | A partner&#39;s one-time &#x60;cplink1.&#x60; code — give it to the partner through a channel you trust. | [optional] 
**Kind** | Pointer to **string** |  | [optional] 
**Partner** | Pointer to [**LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional] 
**Scopes** | Pointer to **[]string** |  | [optional] 
**Route** | Pointer to **string** |  | [optional] 
**Host** | Pointer to **string** |  | [optional] 

## Methods

### NewLinkPairResult

`func NewLinkPairResult() *LinkPairResult`

NewLinkPairResult instantiates a new LinkPairResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLinkPairResultWithDefaults

`func NewLinkPairResultWithDefaults() *LinkPairResult`

NewLinkPairResultWithDefaults instantiates a new LinkPairResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUri

`func (o *LinkPairResult) GetUri() string`

GetUri returns the Uri field if non-nil, zero value otherwise.

### GetUriOk

`func (o *LinkPairResult) GetUriOk() (*string, bool)`

GetUriOk returns a tuple with the Uri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUri

`func (o *LinkPairResult) SetUri(v string)`

SetUri sets Uri field to given value.

### HasUri

`func (o *LinkPairResult) HasUri() bool`

HasUri returns a boolean if a field has been set.

### GetSvg

`func (o *LinkPairResult) GetSvg() string`

GetSvg returns the Svg field if non-nil, zero value otherwise.

### GetSvgOk

`func (o *LinkPairResult) GetSvgOk() (*string, bool)`

GetSvgOk returns a tuple with the Svg field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSvg

`func (o *LinkPairResult) SetSvg(v string)`

SetSvg sets Svg field to given value.

### HasSvg

`func (o *LinkPairResult) HasSvg() bool`

HasSvg returns a boolean if a field has been set.

### GetExpiresAt

`func (o *LinkPairResult) GetExpiresAt() int64`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *LinkPairResult) GetExpiresAtOk() (*int64, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *LinkPairResult) SetExpiresAt(v int64)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *LinkPairResult) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetRoom

`func (o *LinkPairResult) GetRoom() string`

GetRoom returns the Room field if non-nil, zero value otherwise.

### GetRoomOk

`func (o *LinkPairResult) GetRoomOk() (*string, bool)`

GetRoomOk returns a tuple with the Room field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoom

`func (o *LinkPairResult) SetRoom(v string)`

SetRoom sets Room field to given value.

### HasRoom

`func (o *LinkPairResult) HasRoom() bool`

HasRoom returns a boolean if a field has been set.

### GetConfirmed

`func (o *LinkPairResult) GetConfirmed() bool`

GetConfirmed returns the Confirmed field if non-nil, zero value otherwise.

### GetConfirmedOk

`func (o *LinkPairResult) GetConfirmedOk() (*bool, bool)`

GetConfirmedOk returns a tuple with the Confirmed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfirmed

`func (o *LinkPairResult) SetConfirmed(v bool)`

SetConfirmed sets Confirmed field to given value.

### HasConfirmed

`func (o *LinkPairResult) HasConfirmed() bool`

HasConfirmed returns a boolean if a field has been set.

### GetPreview

`func (o *LinkPairResult) GetPreview() LinkPartnerPreview`

GetPreview returns the Preview field if non-nil, zero value otherwise.

### GetPreviewOk

`func (o *LinkPairResult) GetPreviewOk() (*LinkPartnerPreview, bool)`

GetPreviewOk returns a tuple with the Preview field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPreview

`func (o *LinkPairResult) SetPreview(v LinkPartnerPreview)`

SetPreview sets Preview field to given value.

### HasPreview

`func (o *LinkPairResult) HasPreview() bool`

HasPreview returns a boolean if a field has been set.

### GetCode

`func (o *LinkPairResult) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *LinkPairResult) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *LinkPairResult) SetCode(v string)`

SetCode sets Code field to given value.

### HasCode

`func (o *LinkPairResult) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetKind

`func (o *LinkPairResult) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *LinkPairResult) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *LinkPairResult) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *LinkPairResult) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetPartner

`func (o *LinkPairResult) GetPartner() LinkPairResultPartner`

GetPartner returns the Partner field if non-nil, zero value otherwise.

### GetPartnerOk

`func (o *LinkPairResult) GetPartnerOk() (*LinkPairResultPartner, bool)`

GetPartnerOk returns a tuple with the Partner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPartner

`func (o *LinkPairResult) SetPartner(v LinkPairResultPartner)`

SetPartner sets Partner field to given value.

### HasPartner

`func (o *LinkPairResult) HasPartner() bool`

HasPartner returns a boolean if a field has been set.

### GetScopes

`func (o *LinkPairResult) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *LinkPairResult) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *LinkPairResult) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *LinkPairResult) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetRoute

`func (o *LinkPairResult) GetRoute() string`

GetRoute returns the Route field if non-nil, zero value otherwise.

### GetRouteOk

`func (o *LinkPairResult) GetRouteOk() (*string, bool)`

GetRouteOk returns a tuple with the Route field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoute

`func (o *LinkPairResult) SetRoute(v string)`

SetRoute sets Route field to given value.

### HasRoute

`func (o *LinkPairResult) HasRoute() bool`

HasRoute returns a boolean if a field has been set.

### GetHost

`func (o *LinkPairResult) GetHost() string`

GetHost returns the Host field if non-nil, zero value otherwise.

### GetHostOk

`func (o *LinkPairResult) GetHostOk() (*string, bool)`

GetHostOk returns a tuple with the Host field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHost

`func (o *LinkPairResult) SetHost(v string)`

SetHost sets Host field to given value.

### HasHost

`func (o *LinkPairResult) HasHost() bool`

HasHost returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


