# KbEmbedResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Embedded** | **int32** |  | 
**Vectors** | **int32** |  | 
**Model** | Pointer to **string** |  | [optional] 
**Dims** | Pointer to **int32** |  | [optional] 
**State** | **string** | &#x60;ready&#x60;, &#x60;idle&#x60;, &#x60;loading&#x60;, &#x60;downloading&#x60;, &#x60;down&#x60;, &#x60;off&#x60;. | 
**Progress** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewKbEmbedResponse

`func NewKbEmbedResponse(embedded int32, vectors int32, state string, ) *KbEmbedResponse`

NewKbEmbedResponse instantiates a new KbEmbedResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbEmbedResponseWithDefaults

`func NewKbEmbedResponseWithDefaults() *KbEmbedResponse`

NewKbEmbedResponseWithDefaults instantiates a new KbEmbedResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEmbedded

`func (o *KbEmbedResponse) GetEmbedded() int32`

GetEmbedded returns the Embedded field if non-nil, zero value otherwise.

### GetEmbeddedOk

`func (o *KbEmbedResponse) GetEmbeddedOk() (*int32, bool)`

GetEmbeddedOk returns a tuple with the Embedded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmbedded

`func (o *KbEmbedResponse) SetEmbedded(v int32)`

SetEmbedded sets Embedded field to given value.


### GetVectors

`func (o *KbEmbedResponse) GetVectors() int32`

GetVectors returns the Vectors field if non-nil, zero value otherwise.

### GetVectorsOk

`func (o *KbEmbedResponse) GetVectorsOk() (*int32, bool)`

GetVectorsOk returns a tuple with the Vectors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVectors

`func (o *KbEmbedResponse) SetVectors(v int32)`

SetVectors sets Vectors field to given value.


### GetModel

`func (o *KbEmbedResponse) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *KbEmbedResponse) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *KbEmbedResponse) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *KbEmbedResponse) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetDims

`func (o *KbEmbedResponse) GetDims() int32`

GetDims returns the Dims field if non-nil, zero value otherwise.

### GetDimsOk

`func (o *KbEmbedResponse) GetDimsOk() (*int32, bool)`

GetDimsOk returns a tuple with the Dims field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDims

`func (o *KbEmbedResponse) SetDims(v int32)`

SetDims sets Dims field to given value.

### HasDims

`func (o *KbEmbedResponse) HasDims() bool`

HasDims returns a boolean if a field has been set.

### GetState

`func (o *KbEmbedResponse) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *KbEmbedResponse) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *KbEmbedResponse) SetState(v string)`

SetState sets State field to given value.


### GetProgress

`func (o *KbEmbedResponse) GetProgress() map[string]interface{}`

GetProgress returns the Progress field if non-nil, zero value otherwise.

### GetProgressOk

`func (o *KbEmbedResponse) GetProgressOk() (*map[string]interface{}, bool)`

GetProgressOk returns a tuple with the Progress field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProgress

`func (o *KbEmbedResponse) SetProgress(v map[string]interface{})`

SetProgress sets Progress field to given value.

### HasProgress

`func (o *KbEmbedResponse) HasProgress() bool`

HasProgress returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


