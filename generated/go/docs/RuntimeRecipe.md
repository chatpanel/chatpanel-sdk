# RuntimeRecipe

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Model** | **string** | owner/name:QUANT — what to pass as the service&#39;s model. | 
**Quant** | **string** |  | 
**Arch** | Pointer to **NullableString** | The weights&#39; general.architecture; null when the header could not be read. | [optional] 
**Layout** | Pointer to **string** |  | [optional] 
**Main** | Pointer to **string** | The weights file in the repo (the first shard of a split model). | [optional] 
**Size** | Pointer to **int32** | Bytes of the weights for this quant. | [optional] 
**Fits** | Pointer to **NullableBool** | Weights + projector + draft against about three quarters of the memory; null when the memory is unknown. | [optional] 
**RamGB** | Pointer to **float32** |  | [optional] 
**Quants** | [**[]RuntimeRecipeQuantsInner**](RuntimeRecipeQuantsInner.md) |  | 
**Projector** | Pointer to [**NullableRuntimeRecipeProjector**](RuntimeRecipeProjector.md) |  | [optional] 
**Draft** | Pointer to [**NullableRuntimeRecipeDraft**](RuntimeRecipeDraft.md) |  | [optional] 

## Methods

### NewRuntimeRecipe

`func NewRuntimeRecipe(ok bool, model string, quant string, quants []RuntimeRecipeQuantsInner, ) *RuntimeRecipe`

NewRuntimeRecipe instantiates a new RuntimeRecipe object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuntimeRecipeWithDefaults

`func NewRuntimeRecipeWithDefaults() *RuntimeRecipe`

NewRuntimeRecipeWithDefaults instantiates a new RuntimeRecipe object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *RuntimeRecipe) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *RuntimeRecipe) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *RuntimeRecipe) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetModel

`func (o *RuntimeRecipe) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *RuntimeRecipe) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *RuntimeRecipe) SetModel(v string)`

SetModel sets Model field to given value.


### GetQuant

`func (o *RuntimeRecipe) GetQuant() string`

GetQuant returns the Quant field if non-nil, zero value otherwise.

### GetQuantOk

`func (o *RuntimeRecipe) GetQuantOk() (*string, bool)`

GetQuantOk returns a tuple with the Quant field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuant

`func (o *RuntimeRecipe) SetQuant(v string)`

SetQuant sets Quant field to given value.


### GetArch

`func (o *RuntimeRecipe) GetArch() string`

GetArch returns the Arch field if non-nil, zero value otherwise.

### GetArchOk

`func (o *RuntimeRecipe) GetArchOk() (*string, bool)`

GetArchOk returns a tuple with the Arch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArch

`func (o *RuntimeRecipe) SetArch(v string)`

SetArch sets Arch field to given value.

### HasArch

`func (o *RuntimeRecipe) HasArch() bool`

HasArch returns a boolean if a field has been set.

### SetArchNil

`func (o *RuntimeRecipe) SetArchNil(b bool)`

 SetArchNil sets the value for Arch to be an explicit nil

### UnsetArch
`func (o *RuntimeRecipe) UnsetArch()`

UnsetArch ensures that no value is present for Arch, not even an explicit nil
### GetLayout

`func (o *RuntimeRecipe) GetLayout() string`

GetLayout returns the Layout field if non-nil, zero value otherwise.

### GetLayoutOk

`func (o *RuntimeRecipe) GetLayoutOk() (*string, bool)`

GetLayoutOk returns a tuple with the Layout field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLayout

`func (o *RuntimeRecipe) SetLayout(v string)`

SetLayout sets Layout field to given value.

### HasLayout

`func (o *RuntimeRecipe) HasLayout() bool`

HasLayout returns a boolean if a field has been set.

### GetMain

`func (o *RuntimeRecipe) GetMain() string`

GetMain returns the Main field if non-nil, zero value otherwise.

### GetMainOk

`func (o *RuntimeRecipe) GetMainOk() (*string, bool)`

GetMainOk returns a tuple with the Main field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMain

`func (o *RuntimeRecipe) SetMain(v string)`

SetMain sets Main field to given value.

### HasMain

`func (o *RuntimeRecipe) HasMain() bool`

HasMain returns a boolean if a field has been set.

### GetSize

`func (o *RuntimeRecipe) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *RuntimeRecipe) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *RuntimeRecipe) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *RuntimeRecipe) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetFits

`func (o *RuntimeRecipe) GetFits() bool`

GetFits returns the Fits field if non-nil, zero value otherwise.

### GetFitsOk

`func (o *RuntimeRecipe) GetFitsOk() (*bool, bool)`

GetFitsOk returns a tuple with the Fits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFits

`func (o *RuntimeRecipe) SetFits(v bool)`

SetFits sets Fits field to given value.

### HasFits

`func (o *RuntimeRecipe) HasFits() bool`

HasFits returns a boolean if a field has been set.

### SetFitsNil

`func (o *RuntimeRecipe) SetFitsNil(b bool)`

 SetFitsNil sets the value for Fits to be an explicit nil

### UnsetFits
`func (o *RuntimeRecipe) UnsetFits()`

UnsetFits ensures that no value is present for Fits, not even an explicit nil
### GetRamGB

`func (o *RuntimeRecipe) GetRamGB() float32`

GetRamGB returns the RamGB field if non-nil, zero value otherwise.

### GetRamGBOk

`func (o *RuntimeRecipe) GetRamGBOk() (*float32, bool)`

GetRamGBOk returns a tuple with the RamGB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRamGB

`func (o *RuntimeRecipe) SetRamGB(v float32)`

SetRamGB sets RamGB field to given value.

### HasRamGB

`func (o *RuntimeRecipe) HasRamGB() bool`

HasRamGB returns a boolean if a field has been set.

### GetQuants

`func (o *RuntimeRecipe) GetQuants() []RuntimeRecipeQuantsInner`

GetQuants returns the Quants field if non-nil, zero value otherwise.

### GetQuantsOk

`func (o *RuntimeRecipe) GetQuantsOk() (*[]RuntimeRecipeQuantsInner, bool)`

GetQuantsOk returns a tuple with the Quants field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuants

`func (o *RuntimeRecipe) SetQuants(v []RuntimeRecipeQuantsInner)`

SetQuants sets Quants field to given value.


### GetProjector

`func (o *RuntimeRecipe) GetProjector() RuntimeRecipeProjector`

GetProjector returns the Projector field if non-nil, zero value otherwise.

### GetProjectorOk

`func (o *RuntimeRecipe) GetProjectorOk() (*RuntimeRecipeProjector, bool)`

GetProjectorOk returns a tuple with the Projector field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProjector

`func (o *RuntimeRecipe) SetProjector(v RuntimeRecipeProjector)`

SetProjector sets Projector field to given value.

### HasProjector

`func (o *RuntimeRecipe) HasProjector() bool`

HasProjector returns a boolean if a field has been set.

### SetProjectorNil

`func (o *RuntimeRecipe) SetProjectorNil(b bool)`

 SetProjectorNil sets the value for Projector to be an explicit nil

### UnsetProjector
`func (o *RuntimeRecipe) UnsetProjector()`

UnsetProjector ensures that no value is present for Projector, not even an explicit nil
### GetDraft

`func (o *RuntimeRecipe) GetDraft() RuntimeRecipeDraft`

GetDraft returns the Draft field if non-nil, zero value otherwise.

### GetDraftOk

`func (o *RuntimeRecipe) GetDraftOk() (*RuntimeRecipeDraft, bool)`

GetDraftOk returns a tuple with the Draft field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDraft

`func (o *RuntimeRecipe) SetDraft(v RuntimeRecipeDraft)`

SetDraft sets Draft field to given value.

### HasDraft

`func (o *RuntimeRecipe) HasDraft() bool`

HasDraft returns a boolean if a field has been set.

### SetDraftNil

`func (o *RuntimeRecipe) SetDraftNil(b bool)`

 SetDraftNil sets the value for Draft to be an explicit nil

### UnsetDraft
`func (o *RuntimeRecipe) UnsetDraft()`

UnsetDraft ensures that no value is present for Draft, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


