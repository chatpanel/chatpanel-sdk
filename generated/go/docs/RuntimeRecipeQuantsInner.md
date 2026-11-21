# RuntimeRecipeQuantsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Quant** | **string** |  | 
**Size** | **int32** |  | 
**Fits** | Pointer to **NullableBool** |  | [optional] 

## Methods

### NewRuntimeRecipeQuantsInner

`func NewRuntimeRecipeQuantsInner(quant string, size int32, ) *RuntimeRecipeQuantsInner`

NewRuntimeRecipeQuantsInner instantiates a new RuntimeRecipeQuantsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuntimeRecipeQuantsInnerWithDefaults

`func NewRuntimeRecipeQuantsInnerWithDefaults() *RuntimeRecipeQuantsInner`

NewRuntimeRecipeQuantsInnerWithDefaults instantiates a new RuntimeRecipeQuantsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetQuant

`func (o *RuntimeRecipeQuantsInner) GetQuant() string`

GetQuant returns the Quant field if non-nil, zero value otherwise.

### GetQuantOk

`func (o *RuntimeRecipeQuantsInner) GetQuantOk() (*string, bool)`

GetQuantOk returns a tuple with the Quant field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuant

`func (o *RuntimeRecipeQuantsInner) SetQuant(v string)`

SetQuant sets Quant field to given value.


### GetSize

`func (o *RuntimeRecipeQuantsInner) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *RuntimeRecipeQuantsInner) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *RuntimeRecipeQuantsInner) SetSize(v int32)`

SetSize sets Size field to given value.


### GetFits

`func (o *RuntimeRecipeQuantsInner) GetFits() bool`

GetFits returns the Fits field if non-nil, zero value otherwise.

### GetFitsOk

`func (o *RuntimeRecipeQuantsInner) GetFitsOk() (*bool, bool)`

GetFitsOk returns a tuple with the Fits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFits

`func (o *RuntimeRecipeQuantsInner) SetFits(v bool)`

SetFits sets Fits field to given value.

### HasFits

`func (o *RuntimeRecipeQuantsInner) HasFits() bool`

HasFits returns a boolean if a field has been set.

### SetFitsNil

`func (o *RuntimeRecipeQuantsInner) SetFitsNil(b bool)`

 SetFitsNil sets the value for Fits to be an explicit nil

### UnsetFits
`func (o *RuntimeRecipeQuantsInner) UnsetFits()`

UnsetFits ensures that no value is present for Fits, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


