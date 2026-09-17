# WhoAmI

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Trust** | **string** |  | 
**Paired** | **bool** | True when this caller may reach token-gated routes. | 
**Version** | **string** |  | 

## Methods

### NewWhoAmI

`func NewWhoAmI(ok bool, trust string, paired bool, version string, ) *WhoAmI`

NewWhoAmI instantiates a new WhoAmI object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewWhoAmIWithDefaults

`func NewWhoAmIWithDefaults() *WhoAmI`

NewWhoAmIWithDefaults instantiates a new WhoAmI object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *WhoAmI) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *WhoAmI) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *WhoAmI) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetTrust

`func (o *WhoAmI) GetTrust() string`

GetTrust returns the Trust field if non-nil, zero value otherwise.

### GetTrustOk

`func (o *WhoAmI) GetTrustOk() (*string, bool)`

GetTrustOk returns a tuple with the Trust field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrust

`func (o *WhoAmI) SetTrust(v string)`

SetTrust sets Trust field to given value.


### GetPaired

`func (o *WhoAmI) GetPaired() bool`

GetPaired returns the Paired field if non-nil, zero value otherwise.

### GetPairedOk

`func (o *WhoAmI) GetPairedOk() (*bool, bool)`

GetPairedOk returns a tuple with the Paired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaired

`func (o *WhoAmI) SetPaired(v bool)`

SetPaired sets Paired field to given value.


### GetVersion

`func (o *WhoAmI) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *WhoAmI) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *WhoAmI) SetVersion(v string)`

SetVersion sets Version field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


