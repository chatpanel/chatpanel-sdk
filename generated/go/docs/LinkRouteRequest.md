# LinkRouteRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Route** | **string** |  | 
**Url** | Pointer to **string** | The relay (relay) or this computer&#39;s tunnel address (tailscale | [optional] 
**Fallback** | Pointer to **bool** | A tunnel route keeps ChatPanel Link as the phones&#39; fallback unless false. | [optional] 

## Methods

### NewLinkRouteRequest

`func NewLinkRouteRequest(route string, ) *LinkRouteRequest`

NewLinkRouteRequest instantiates a new LinkRouteRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLinkRouteRequestWithDefaults

`func NewLinkRouteRequestWithDefaults() *LinkRouteRequest`

NewLinkRouteRequestWithDefaults instantiates a new LinkRouteRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRoute

`func (o *LinkRouteRequest) GetRoute() string`

GetRoute returns the Route field if non-nil, zero value otherwise.

### GetRouteOk

`func (o *LinkRouteRequest) GetRouteOk() (*string, bool)`

GetRouteOk returns a tuple with the Route field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoute

`func (o *LinkRouteRequest) SetRoute(v string)`

SetRoute sets Route field to given value.


### GetUrl

`func (o *LinkRouteRequest) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *LinkRouteRequest) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *LinkRouteRequest) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *LinkRouteRequest) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetFallback

`func (o *LinkRouteRequest) GetFallback() bool`

GetFallback returns the Fallback field if non-nil, zero value otherwise.

### GetFallbackOk

`func (o *LinkRouteRequest) GetFallbackOk() (*bool, bool)`

GetFallbackOk returns a tuple with the Fallback field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFallback

`func (o *LinkRouteRequest) SetFallback(v bool)`

SetFallback sets Fallback field to given value.

### HasFallback

`func (o *LinkRouteRequest) HasFallback() bool`

HasFallback returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


