# KbAddResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Added** | [**[]KbAddResponseAddedInner**](KbAddResponseAddedInner.md) |  | 
**Skipped** | [**[]KbAddResponseSkippedInner**](KbAddResponseSkippedInner.md) |  | 
**Embedded** | Pointer to **int32** | Passages given a vector in this call. | [optional] 
**Kb** | [**KbStatus**](KbStatus.md) |  | 
**Ms** | Pointer to **float32** |  | [optional] 

## Methods

### NewKbAddResponse

`func NewKbAddResponse(added []KbAddResponseAddedInner, skipped []KbAddResponseSkippedInner, kb KbStatus, ) *KbAddResponse`

NewKbAddResponse instantiates a new KbAddResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbAddResponseWithDefaults

`func NewKbAddResponseWithDefaults() *KbAddResponse`

NewKbAddResponseWithDefaults instantiates a new KbAddResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAdded

`func (o *KbAddResponse) GetAdded() []KbAddResponseAddedInner`

GetAdded returns the Added field if non-nil, zero value otherwise.

### GetAddedOk

`func (o *KbAddResponse) GetAddedOk() (*[]KbAddResponseAddedInner, bool)`

GetAddedOk returns a tuple with the Added field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdded

`func (o *KbAddResponse) SetAdded(v []KbAddResponseAddedInner)`

SetAdded sets Added field to given value.


### GetSkipped

`func (o *KbAddResponse) GetSkipped() []KbAddResponseSkippedInner`

GetSkipped returns the Skipped field if non-nil, zero value otherwise.

### GetSkippedOk

`func (o *KbAddResponse) GetSkippedOk() (*[]KbAddResponseSkippedInner, bool)`

GetSkippedOk returns a tuple with the Skipped field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkipped

`func (o *KbAddResponse) SetSkipped(v []KbAddResponseSkippedInner)`

SetSkipped sets Skipped field to given value.


### GetEmbedded

`func (o *KbAddResponse) GetEmbedded() int32`

GetEmbedded returns the Embedded field if non-nil, zero value otherwise.

### GetEmbeddedOk

`func (o *KbAddResponse) GetEmbeddedOk() (*int32, bool)`

GetEmbeddedOk returns a tuple with the Embedded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmbedded

`func (o *KbAddResponse) SetEmbedded(v int32)`

SetEmbedded sets Embedded field to given value.

### HasEmbedded

`func (o *KbAddResponse) HasEmbedded() bool`

HasEmbedded returns a boolean if a field has been set.

### GetKb

`func (o *KbAddResponse) GetKb() KbStatus`

GetKb returns the Kb field if non-nil, zero value otherwise.

### GetKbOk

`func (o *KbAddResponse) GetKbOk() (*KbStatus, bool)`

GetKbOk returns a tuple with the Kb field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKb

`func (o *KbAddResponse) SetKb(v KbStatus)`

SetKb sets Kb field to given value.


### GetMs

`func (o *KbAddResponse) GetMs() float32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *KbAddResponse) GetMsOk() (*float32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *KbAddResponse) SetMs(v float32)`

SetMs sets Ms field to given value.

### HasMs

`func (o *KbAddResponse) HasMs() bool`

HasMs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


