# RuntimeRecipeDraft

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Path** | **string** |  | 
**Size** | Pointer to **int32** |  | [optional] 
**Spec** | **string** | llama-server --spec-type: draft-dspark, draft-mtp, draft-eagle3, draft-dflash or draft-simple. | 

## Methods

### NewRuntimeRecipeDraft

`func NewRuntimeRecipeDraft(path string, spec string, ) *RuntimeRecipeDraft`

NewRuntimeRecipeDraft instantiates a new RuntimeRecipeDraft object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuntimeRecipeDraftWithDefaults

`func NewRuntimeRecipeDraftWithDefaults() *RuntimeRecipeDraft`

NewRuntimeRecipeDraftWithDefaults instantiates a new RuntimeRecipeDraft object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPath

`func (o *RuntimeRecipeDraft) GetPath() string`

GetPath returns the Path field if non-nil, zero value otherwise.

### GetPathOk

`func (o *RuntimeRecipeDraft) GetPathOk() (*string, bool)`

GetPathOk returns a tuple with the Path field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPath

`func (o *RuntimeRecipeDraft) SetPath(v string)`

SetPath sets Path field to given value.


### GetSize

`func (o *RuntimeRecipeDraft) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *RuntimeRecipeDraft) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *RuntimeRecipeDraft) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *RuntimeRecipeDraft) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetSpec

`func (o *RuntimeRecipeDraft) GetSpec() string`

GetSpec returns the Spec field if non-nil, zero value otherwise.

### GetSpecOk

`func (o *RuntimeRecipeDraft) GetSpecOk() (*string, bool)`

GetSpecOk returns a tuple with the Spec field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpec

`func (o *RuntimeRecipeDraft) SetSpec(v string)`

SetSpec sets Spec field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


