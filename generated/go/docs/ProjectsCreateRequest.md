# ProjectsCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Project** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**By** | Pointer to **string** |  | [optional] 

## Methods

### NewProjectsCreateRequest

`func NewProjectsCreateRequest() *ProjectsCreateRequest`

NewProjectsCreateRequest instantiates a new ProjectsCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewProjectsCreateRequestWithDefaults

`func NewProjectsCreateRequestWithDefaults() *ProjectsCreateRequest`

NewProjectsCreateRequestWithDefaults instantiates a new ProjectsCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ProjectsCreateRequest) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ProjectsCreateRequest) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ProjectsCreateRequest) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *ProjectsCreateRequest) HasId() bool`

HasId returns a boolean if a field has been set.

### GetProject

`func (o *ProjectsCreateRequest) GetProject() map[string]interface{}`

GetProject returns the Project field if non-nil, zero value otherwise.

### GetProjectOk

`func (o *ProjectsCreateRequest) GetProjectOk() (*map[string]interface{}, bool)`

GetProjectOk returns a tuple with the Project field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProject

`func (o *ProjectsCreateRequest) SetProject(v map[string]interface{})`

SetProject sets Project field to given value.

### HasProject

`func (o *ProjectsCreateRequest) HasProject() bool`

HasProject returns a boolean if a field has been set.

### GetBy

`func (o *ProjectsCreateRequest) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *ProjectsCreateRequest) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *ProjectsCreateRequest) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *ProjectsCreateRequest) HasBy() bool`

HasBy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


