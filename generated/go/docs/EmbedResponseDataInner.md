# EmbedResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Object** | **string** |  | 
**Index** | **int32** |  | 
**Embedding** | **[]float32** | Unit length. | 

## Methods

### NewEmbedResponseDataInner

`func NewEmbedResponseDataInner(object string, index int32, embedding []float32, ) *EmbedResponseDataInner`

NewEmbedResponseDataInner instantiates a new EmbedResponseDataInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEmbedResponseDataInnerWithDefaults

`func NewEmbedResponseDataInnerWithDefaults() *EmbedResponseDataInner`

NewEmbedResponseDataInnerWithDefaults instantiates a new EmbedResponseDataInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetObject

`func (o *EmbedResponseDataInner) GetObject() string`

GetObject returns the Object field if non-nil, zero value otherwise.

### GetObjectOk

`func (o *EmbedResponseDataInner) GetObjectOk() (*string, bool)`

GetObjectOk returns a tuple with the Object field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObject

`func (o *EmbedResponseDataInner) SetObject(v string)`

SetObject sets Object field to given value.


### GetIndex

`func (o *EmbedResponseDataInner) GetIndex() int32`

GetIndex returns the Index field if non-nil, zero value otherwise.

### GetIndexOk

`func (o *EmbedResponseDataInner) GetIndexOk() (*int32, bool)`

GetIndexOk returns a tuple with the Index field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIndex

`func (o *EmbedResponseDataInner) SetIndex(v int32)`

SetIndex sets Index field to given value.


### GetEmbedding

`func (o *EmbedResponseDataInner) GetEmbedding() []float32`

GetEmbedding returns the Embedding field if non-nil, zero value otherwise.

### GetEmbeddingOk

`func (o *EmbedResponseDataInner) GetEmbeddingOk() (*[]float32, bool)`

GetEmbeddingOk returns a tuple with the Embedding field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmbedding

`func (o *EmbedResponseDataInner) SetEmbedding(v []float32)`

SetEmbedding sets Embedding field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


