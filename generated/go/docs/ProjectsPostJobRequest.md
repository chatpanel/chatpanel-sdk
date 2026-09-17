# ProjectsPostJobRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Job** | **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | 
**By** | Pointer to **string** |  | [optional] 

## Methods

### NewProjectsPostJobRequest

`func NewProjectsPostJobRequest(job map[string]interface{}, ) *ProjectsPostJobRequest`

NewProjectsPostJobRequest instantiates a new ProjectsPostJobRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewProjectsPostJobRequestWithDefaults

`func NewProjectsPostJobRequestWithDefaults() *ProjectsPostJobRequest`

NewProjectsPostJobRequestWithDefaults instantiates a new ProjectsPostJobRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetJob

`func (o *ProjectsPostJobRequest) GetJob() map[string]interface{}`

GetJob returns the Job field if non-nil, zero value otherwise.

### GetJobOk

`func (o *ProjectsPostJobRequest) GetJobOk() (*map[string]interface{}, bool)`

GetJobOk returns a tuple with the Job field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJob

`func (o *ProjectsPostJobRequest) SetJob(v map[string]interface{})`

SetJob sets Job field to given value.


### GetBy

`func (o *ProjectsPostJobRequest) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *ProjectsPostJobRequest) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *ProjectsPostJobRequest) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *ProjectsPostJobRequest) HasBy() bool`

HasBy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


