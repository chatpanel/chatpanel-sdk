# Health

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Version** | **string** | The gateway&#39;s semver; every version gate reads this. | 
**Backend** | Pointer to **string** |  | [optional] 
**Tier** | Pointer to **string** | Redaction tier. | [optional] 
**Pairing** | Pointer to **bool** | Present from 0.9.0 — this gateway can pair a client. | [optional] 
**Managed** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**ManagedBy** | Pointer to **string** |  | [optional] 
**Bridge** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**Stt** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**Tts** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

## Methods

### NewHealth

`func NewHealth(ok bool, version string, ) *Health`

NewHealth instantiates a new Health object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHealthWithDefaults

`func NewHealthWithDefaults() *Health`

NewHealthWithDefaults instantiates a new Health object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *Health) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *Health) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *Health) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetVersion

`func (o *Health) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *Health) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *Health) SetVersion(v string)`

SetVersion sets Version field to given value.


### GetBackend

`func (o *Health) GetBackend() string`

GetBackend returns the Backend field if non-nil, zero value otherwise.

### GetBackendOk

`func (o *Health) GetBackendOk() (*string, bool)`

GetBackendOk returns a tuple with the Backend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackend

`func (o *Health) SetBackend(v string)`

SetBackend sets Backend field to given value.

### HasBackend

`func (o *Health) HasBackend() bool`

HasBackend returns a boolean if a field has been set.

### GetTier

`func (o *Health) GetTier() string`

GetTier returns the Tier field if non-nil, zero value otherwise.

### GetTierOk

`func (o *Health) GetTierOk() (*string, bool)`

GetTierOk returns a tuple with the Tier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTier

`func (o *Health) SetTier(v string)`

SetTier sets Tier field to given value.

### HasTier

`func (o *Health) HasTier() bool`

HasTier returns a boolean if a field has been set.

### GetPairing

`func (o *Health) GetPairing() bool`

GetPairing returns the Pairing field if non-nil, zero value otherwise.

### GetPairingOk

`func (o *Health) GetPairingOk() (*bool, bool)`

GetPairingOk returns a tuple with the Pairing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPairing

`func (o *Health) SetPairing(v bool)`

SetPairing sets Pairing field to given value.

### HasPairing

`func (o *Health) HasPairing() bool`

HasPairing returns a boolean if a field has been set.

### GetManaged

`func (o *Health) GetManaged() map[string]interface{}`

GetManaged returns the Managed field if non-nil, zero value otherwise.

### GetManagedOk

`func (o *Health) GetManagedOk() (*map[string]interface{}, bool)`

GetManagedOk returns a tuple with the Managed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetManaged

`func (o *Health) SetManaged(v map[string]interface{})`

SetManaged sets Managed field to given value.

### HasManaged

`func (o *Health) HasManaged() bool`

HasManaged returns a boolean if a field has been set.

### GetManagedBy

`func (o *Health) GetManagedBy() string`

GetManagedBy returns the ManagedBy field if non-nil, zero value otherwise.

### GetManagedByOk

`func (o *Health) GetManagedByOk() (*string, bool)`

GetManagedByOk returns a tuple with the ManagedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetManagedBy

`func (o *Health) SetManagedBy(v string)`

SetManagedBy sets ManagedBy field to given value.

### HasManagedBy

`func (o *Health) HasManagedBy() bool`

HasManagedBy returns a boolean if a field has been set.

### GetBridge

`func (o *Health) GetBridge() map[string]interface{}`

GetBridge returns the Bridge field if non-nil, zero value otherwise.

### GetBridgeOk

`func (o *Health) GetBridgeOk() (*map[string]interface{}, bool)`

GetBridgeOk returns a tuple with the Bridge field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBridge

`func (o *Health) SetBridge(v map[string]interface{})`

SetBridge sets Bridge field to given value.

### HasBridge

`func (o *Health) HasBridge() bool`

HasBridge returns a boolean if a field has been set.

### GetStt

`func (o *Health) GetStt() map[string]interface{}`

GetStt returns the Stt field if non-nil, zero value otherwise.

### GetSttOk

`func (o *Health) GetSttOk() (*map[string]interface{}, bool)`

GetSttOk returns a tuple with the Stt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStt

`func (o *Health) SetStt(v map[string]interface{})`

SetStt sets Stt field to given value.

### HasStt

`func (o *Health) HasStt() bool`

HasStt returns a boolean if a field has been set.

### GetTts

`func (o *Health) GetTts() map[string]interface{}`

GetTts returns the Tts field if non-nil, zero value otherwise.

### GetTtsOk

`func (o *Health) GetTtsOk() (*map[string]interface{}, bool)`

GetTtsOk returns a tuple with the Tts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTts

`func (o *Health) SetTts(v map[string]interface{})`

SetTts sets Tts field to given value.

### HasTts

`func (o *Health) HasTts() bool`

HasTts returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


