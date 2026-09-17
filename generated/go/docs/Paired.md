# Paired

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Token** | **string** | The gateway token. A secret — store it 0600 or in the platform keychain; never log it. | 
**BridgeToken** | Pointer to **string** | The bridge&#39;s token when this machine has one. | [optional] 

## Methods

### NewPaired

`func NewPaired(ok bool, token string, ) *Paired`

NewPaired instantiates a new Paired object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPairedWithDefaults

`func NewPairedWithDefaults() *Paired`

NewPairedWithDefaults instantiates a new Paired object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *Paired) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *Paired) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *Paired) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetToken

`func (o *Paired) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *Paired) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *Paired) SetToken(v string)`

SetToken sets Token field to given value.


### GetBridgeToken

`func (o *Paired) GetBridgeToken() string`

GetBridgeToken returns the BridgeToken field if non-nil, zero value otherwise.

### GetBridgeTokenOk

`func (o *Paired) GetBridgeTokenOk() (*string, bool)`

GetBridgeTokenOk returns a tuple with the BridgeToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBridgeToken

`func (o *Paired) SetBridgeToken(v string)`

SetBridgeToken sets BridgeToken field to given value.

### HasBridgeToken

`func (o *Paired) HasBridgeToken() bool`

HasBridgeToken returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


