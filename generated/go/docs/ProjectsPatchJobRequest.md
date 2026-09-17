# ProjectsPatchJobRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Patch** | **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | 
**By** | Pointer to **string** |  | [optional] 

## Methods

### NewProjectsPatchJobRequest

`func NewProjectsPatchJobRequest(patch map[string]interface{}, ) *ProjectsPatchJobRequest`

NewProjectsPatchJobRequest instantiates a new ProjectsPatchJobRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewProjectsPatchJobRequestWithDefaults

`func NewProjectsPatchJobRequestWithDefaults() *ProjectsPatchJobRequest`

NewProjectsPatchJobRequestWithDefaults instantiates a new ProjectsPatchJobRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPatch

`func (o *ProjectsPatchJobRequest) GetPatch() map[string]interface{}`

GetPatch returns the Patch field if non-nil, zero value otherwise.

### GetPatchOk

`func (o *ProjectsPatchJobRequest) GetPatchOk() (*map[string]interface{}, bool)`

GetPatchOk returns a tuple with the Patch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPatch

`func (o *ProjectsPatchJobRequest) SetPatch(v map[string]interface{})`

SetPatch sets Patch field to given value.


### GetBy

`func (o *ProjectsPatchJobRequest) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *ProjectsPatchJobRequest) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *ProjectsPatchJobRequest) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *ProjectsPatchJobRequest) HasBy() bool`

HasBy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


