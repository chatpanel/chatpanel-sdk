# ProjectsList200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Projects** | [**[]Project**](Project.md) |  | 

## Methods

### NewProjectsList200Response

`func NewProjectsList200Response(ok bool, projects []Project, ) *ProjectsList200Response`

NewProjectsList200Response instantiates a new ProjectsList200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewProjectsList200ResponseWithDefaults

`func NewProjectsList200ResponseWithDefaults() *ProjectsList200Response`

NewProjectsList200ResponseWithDefaults instantiates a new ProjectsList200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *ProjectsList200Response) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *ProjectsList200Response) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *ProjectsList200Response) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetProjects

`func (o *ProjectsList200Response) GetProjects() []Project`

GetProjects returns the Projects field if non-nil, zero value otherwise.

### GetProjectsOk

`func (o *ProjectsList200Response) GetProjectsOk() (*[]Project, bool)`

GetProjectsOk returns a tuple with the Projects field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProjects

`func (o *ProjectsList200Response) SetProjects(v []Project)`

SetProjects sets Projects field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


