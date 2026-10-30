# KbListKbsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Name** | **string** |  | 
**Docs** | **int32** |  | 
**UpdatedAt** | Pointer to **int64** |  | [optional] 
**Vectors** | Pointer to **int32** |  | [optional] 
**Model** | Pointer to **string** |  | [optional] 
**Access** | Pointer to [**KbAccess**](KbAccess.md) |  | [optional] 

## Methods

### NewKbListKbsInner

`func NewKbListKbsInner(id string, name string, docs int32, ) *KbListKbsInner`

NewKbListKbsInner instantiates a new KbListKbsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbListKbsInnerWithDefaults

`func NewKbListKbsInnerWithDefaults() *KbListKbsInner`

NewKbListKbsInnerWithDefaults instantiates a new KbListKbsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *KbListKbsInner) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *KbListKbsInner) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *KbListKbsInner) SetId(v string)`

SetId sets Id field to given value.


### GetName

`func (o *KbListKbsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *KbListKbsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *KbListKbsInner) SetName(v string)`

SetName sets Name field to given value.


### GetDocs

`func (o *KbListKbsInner) GetDocs() int32`

GetDocs returns the Docs field if non-nil, zero value otherwise.

### GetDocsOk

`func (o *KbListKbsInner) GetDocsOk() (*int32, bool)`

GetDocsOk returns a tuple with the Docs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocs

`func (o *KbListKbsInner) SetDocs(v int32)`

SetDocs sets Docs field to given value.


### GetUpdatedAt

`func (o *KbListKbsInner) GetUpdatedAt() int64`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *KbListKbsInner) GetUpdatedAtOk() (*int64, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *KbListKbsInner) SetUpdatedAt(v int64)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *KbListKbsInner) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### GetVectors

`func (o *KbListKbsInner) GetVectors() int32`

GetVectors returns the Vectors field if non-nil, zero value otherwise.

### GetVectorsOk

`func (o *KbListKbsInner) GetVectorsOk() (*int32, bool)`

GetVectorsOk returns a tuple with the Vectors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVectors

`func (o *KbListKbsInner) SetVectors(v int32)`

SetVectors sets Vectors field to given value.

### HasVectors

`func (o *KbListKbsInner) HasVectors() bool`

HasVectors returns a boolean if a field has been set.

### GetModel

`func (o *KbListKbsInner) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *KbListKbsInner) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *KbListKbsInner) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *KbListKbsInner) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetAccess

`func (o *KbListKbsInner) GetAccess() KbAccess`

GetAccess returns the Access field if non-nil, zero value otherwise.

### GetAccessOk

`func (o *KbListKbsInner) GetAccessOk() (*KbAccess, bool)`

GetAccessOk returns a tuple with the Access field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccess

`func (o *KbListKbsInner) SetAccess(v KbAccess)`

SetAccess sets Access field to given value.

### HasAccess

`func (o *KbListKbsInner) HasAccess() bool`

HasAccess returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


