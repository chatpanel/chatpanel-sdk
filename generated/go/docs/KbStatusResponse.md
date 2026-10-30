# KbStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kb** | [**KbStatus**](KbStatus.md) |  | 
**Existed** | Pointer to **bool** |  | [optional] 
**Ok** | Pointer to **bool** |  | [optional] 

## Methods

### NewKbStatusResponse

`func NewKbStatusResponse(kb KbStatus, ) *KbStatusResponse`

NewKbStatusResponse instantiates a new KbStatusResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbStatusResponseWithDefaults

`func NewKbStatusResponseWithDefaults() *KbStatusResponse`

NewKbStatusResponseWithDefaults instantiates a new KbStatusResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKb

`func (o *KbStatusResponse) GetKb() KbStatus`

GetKb returns the Kb field if non-nil, zero value otherwise.

### GetKbOk

`func (o *KbStatusResponse) GetKbOk() (*KbStatus, bool)`

GetKbOk returns a tuple with the Kb field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKb

`func (o *KbStatusResponse) SetKb(v KbStatus)`

SetKb sets Kb field to given value.


### GetExisted

`func (o *KbStatusResponse) GetExisted() bool`

GetExisted returns the Existed field if non-nil, zero value otherwise.

### GetExistedOk

`func (o *KbStatusResponse) GetExistedOk() (*bool, bool)`

GetExistedOk returns a tuple with the Existed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExisted

`func (o *KbStatusResponse) SetExisted(v bool)`

SetExisted sets Existed field to given value.

### HasExisted

`func (o *KbStatusResponse) HasExisted() bool`

HasExisted returns a boolean if a field has been set.

### GetOk

`func (o *KbStatusResponse) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *KbStatusResponse) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *KbStatusResponse) SetOk(v bool)`

SetOk sets Ok field to given value.

### HasOk

`func (o *KbStatusResponse) HasOk() bool`

HasOk returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


