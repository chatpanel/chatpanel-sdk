# CapabilityStats

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Calls** | **int32** |  | 
**P50Ms** | Pointer to **float32** |  | [optional] 
**P95Ms** | Pointer to **float32** |  | [optional] 
**MaxMs** | Pointer to **float32** |  | [optional] 
**LastMs** | Pointer to **float32** |  | [optional] 
**CharsPerSec** | Pointer to **NullableFloat32** |  | [optional] 

## Methods

### NewCapabilityStats

`func NewCapabilityStats(calls int32, ) *CapabilityStats`

NewCapabilityStats instantiates a new CapabilityStats object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCapabilityStatsWithDefaults

`func NewCapabilityStatsWithDefaults() *CapabilityStats`

NewCapabilityStatsWithDefaults instantiates a new CapabilityStats object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCalls

`func (o *CapabilityStats) GetCalls() int32`

GetCalls returns the Calls field if non-nil, zero value otherwise.

### GetCallsOk

`func (o *CapabilityStats) GetCallsOk() (*int32, bool)`

GetCallsOk returns a tuple with the Calls field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCalls

`func (o *CapabilityStats) SetCalls(v int32)`

SetCalls sets Calls field to given value.


### GetP50Ms

`func (o *CapabilityStats) GetP50Ms() float32`

GetP50Ms returns the P50Ms field if non-nil, zero value otherwise.

### GetP50MsOk

`func (o *CapabilityStats) GetP50MsOk() (*float32, bool)`

GetP50MsOk returns a tuple with the P50Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetP50Ms

`func (o *CapabilityStats) SetP50Ms(v float32)`

SetP50Ms sets P50Ms field to given value.

### HasP50Ms

`func (o *CapabilityStats) HasP50Ms() bool`

HasP50Ms returns a boolean if a field has been set.

### GetP95Ms

`func (o *CapabilityStats) GetP95Ms() float32`

GetP95Ms returns the P95Ms field if non-nil, zero value otherwise.

### GetP95MsOk

`func (o *CapabilityStats) GetP95MsOk() (*float32, bool)`

GetP95MsOk returns a tuple with the P95Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetP95Ms

`func (o *CapabilityStats) SetP95Ms(v float32)`

SetP95Ms sets P95Ms field to given value.

### HasP95Ms

`func (o *CapabilityStats) HasP95Ms() bool`

HasP95Ms returns a boolean if a field has been set.

### GetMaxMs

`func (o *CapabilityStats) GetMaxMs() float32`

GetMaxMs returns the MaxMs field if non-nil, zero value otherwise.

### GetMaxMsOk

`func (o *CapabilityStats) GetMaxMsOk() (*float32, bool)`

GetMaxMsOk returns a tuple with the MaxMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxMs

`func (o *CapabilityStats) SetMaxMs(v float32)`

SetMaxMs sets MaxMs field to given value.

### HasMaxMs

`func (o *CapabilityStats) HasMaxMs() bool`

HasMaxMs returns a boolean if a field has been set.

### GetLastMs

`func (o *CapabilityStats) GetLastMs() float32`

GetLastMs returns the LastMs field if non-nil, zero value otherwise.

### GetLastMsOk

`func (o *CapabilityStats) GetLastMsOk() (*float32, bool)`

GetLastMsOk returns a tuple with the LastMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastMs

`func (o *CapabilityStats) SetLastMs(v float32)`

SetLastMs sets LastMs field to given value.

### HasLastMs

`func (o *CapabilityStats) HasLastMs() bool`

HasLastMs returns a boolean if a field has been set.

### GetCharsPerSec

`func (o *CapabilityStats) GetCharsPerSec() float32`

GetCharsPerSec returns the CharsPerSec field if non-nil, zero value otherwise.

### GetCharsPerSecOk

`func (o *CapabilityStats) GetCharsPerSecOk() (*float32, bool)`

GetCharsPerSecOk returns a tuple with the CharsPerSec field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCharsPerSec

`func (o *CapabilityStats) SetCharsPerSec(v float32)`

SetCharsPerSec sets CharsPerSec field to given value.

### HasCharsPerSec

`func (o *CapabilityStats) HasCharsPerSec() bool`

HasCharsPerSec returns a boolean if a field has been set.

### SetCharsPerSecNil

`func (o *CapabilityStats) SetCharsPerSecNil(b bool)`

 SetCharsPerSecNil sets the value for CharsPerSec to be an explicit nil

### UnsetCharsPerSec
`func (o *CapabilityStats) UnsetCharsPerSec()`

UnsetCharsPerSec ensures that no value is present for CharsPerSec, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


