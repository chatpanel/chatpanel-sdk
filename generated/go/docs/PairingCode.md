# PairingCode

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Code** | **string** |  | 
**Display** | Pointer to **string** |  | [optional] 
**ExpiresAt** | **int64** | ms since epoch | 

## Methods

### NewPairingCode

`func NewPairingCode(ok bool, code string, expiresAt int64, ) *PairingCode`

NewPairingCode instantiates a new PairingCode object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPairingCodeWithDefaults

`func NewPairingCodeWithDefaults() *PairingCode`

NewPairingCodeWithDefaults instantiates a new PairingCode object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *PairingCode) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *PairingCode) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *PairingCode) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetCode

`func (o *PairingCode) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *PairingCode) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *PairingCode) SetCode(v string)`

SetCode sets Code field to given value.


### GetDisplay

`func (o *PairingCode) GetDisplay() string`

GetDisplay returns the Display field if non-nil, zero value otherwise.

### GetDisplayOk

`func (o *PairingCode) GetDisplayOk() (*string, bool)`

GetDisplayOk returns a tuple with the Display field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplay

`func (o *PairingCode) SetDisplay(v string)`

SetDisplay sets Display field to given value.

### HasDisplay

`func (o *PairingCode) HasDisplay() bool`

HasDisplay returns a boolean if a field has been set.

### GetExpiresAt

`func (o *PairingCode) GetExpiresAt() int64`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *PairingCode) GetExpiresAtOk() (*int64, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *PairingCode) SetExpiresAt(v int64)`

SetExpiresAt sets ExpiresAt field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


