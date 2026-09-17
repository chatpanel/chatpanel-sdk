# PrefsEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** |  | 
**Revision** | Pointer to **int32** |  | [optional] 
**Stamps** | Pointer to **map[string]int64** |  | [optional] 
**Applied** | Pointer to **[]string** | The sections the other client wrote. | [optional] 
**By** | Pointer to **string** |  | [optional] 

## Methods

### NewPrefsEvent

`func NewPrefsEvent(type_ string, ) *PrefsEvent`

NewPrefsEvent instantiates a new PrefsEvent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPrefsEventWithDefaults

`func NewPrefsEventWithDefaults() *PrefsEvent`

NewPrefsEventWithDefaults instantiates a new PrefsEvent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *PrefsEvent) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *PrefsEvent) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *PrefsEvent) SetType(v string)`

SetType sets Type field to given value.


### GetRevision

`func (o *PrefsEvent) GetRevision() int32`

GetRevision returns the Revision field if non-nil, zero value otherwise.

### GetRevisionOk

`func (o *PrefsEvent) GetRevisionOk() (*int32, bool)`

GetRevisionOk returns a tuple with the Revision field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRevision

`func (o *PrefsEvent) SetRevision(v int32)`

SetRevision sets Revision field to given value.

### HasRevision

`func (o *PrefsEvent) HasRevision() bool`

HasRevision returns a boolean if a field has been set.

### GetStamps

`func (o *PrefsEvent) GetStamps() map[string]int64`

GetStamps returns the Stamps field if non-nil, zero value otherwise.

### GetStampsOk

`func (o *PrefsEvent) GetStampsOk() (*map[string]int64, bool)`

GetStampsOk returns a tuple with the Stamps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStamps

`func (o *PrefsEvent) SetStamps(v map[string]int64)`

SetStamps sets Stamps field to given value.

### HasStamps

`func (o *PrefsEvent) HasStamps() bool`

HasStamps returns a boolean if a field has been set.

### GetApplied

`func (o *PrefsEvent) GetApplied() []string`

GetApplied returns the Applied field if non-nil, zero value otherwise.

### GetAppliedOk

`func (o *PrefsEvent) GetAppliedOk() (*[]string, bool)`

GetAppliedOk returns a tuple with the Applied field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplied

`func (o *PrefsEvent) SetApplied(v []string)`

SetApplied sets Applied field to given value.

### HasApplied

`func (o *PrefsEvent) HasApplied() bool`

HasApplied returns a boolean if a field has been set.

### GetBy

`func (o *PrefsEvent) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *PrefsEvent) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *PrefsEvent) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *PrefsEvent) HasBy() bool`

HasBy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


