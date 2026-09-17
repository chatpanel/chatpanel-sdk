# ProjectsRecruitRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**By** | Pointer to **string** |  | [optional] 
**Reach** | Pointer to **string** |  | [optional] 
**ChatModel** | Pointer to **string** |  | [optional] 
**Evaluation** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**Text** | Pointer to **string** |  | [optional] 

## Methods

### NewProjectsRecruitRequest

`func NewProjectsRecruitRequest() *ProjectsRecruitRequest`

NewProjectsRecruitRequest instantiates a new ProjectsRecruitRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewProjectsRecruitRequestWithDefaults

`func NewProjectsRecruitRequestWithDefaults() *ProjectsRecruitRequest`

NewProjectsRecruitRequestWithDefaults instantiates a new ProjectsRecruitRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBy

`func (o *ProjectsRecruitRequest) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *ProjectsRecruitRequest) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *ProjectsRecruitRequest) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *ProjectsRecruitRequest) HasBy() bool`

HasBy returns a boolean if a field has been set.

### GetReach

`func (o *ProjectsRecruitRequest) GetReach() string`

GetReach returns the Reach field if non-nil, zero value otherwise.

### GetReachOk

`func (o *ProjectsRecruitRequest) GetReachOk() (*string, bool)`

GetReachOk returns a tuple with the Reach field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReach

`func (o *ProjectsRecruitRequest) SetReach(v string)`

SetReach sets Reach field to given value.

### HasReach

`func (o *ProjectsRecruitRequest) HasReach() bool`

HasReach returns a boolean if a field has been set.

### GetChatModel

`func (o *ProjectsRecruitRequest) GetChatModel() string`

GetChatModel returns the ChatModel field if non-nil, zero value otherwise.

### GetChatModelOk

`func (o *ProjectsRecruitRequest) GetChatModelOk() (*string, bool)`

GetChatModelOk returns a tuple with the ChatModel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChatModel

`func (o *ProjectsRecruitRequest) SetChatModel(v string)`

SetChatModel sets ChatModel field to given value.

### HasChatModel

`func (o *ProjectsRecruitRequest) HasChatModel() bool`

HasChatModel returns a boolean if a field has been set.

### GetEvaluation

`func (o *ProjectsRecruitRequest) GetEvaluation() map[string]interface{}`

GetEvaluation returns the Evaluation field if non-nil, zero value otherwise.

### GetEvaluationOk

`func (o *ProjectsRecruitRequest) GetEvaluationOk() (*map[string]interface{}, bool)`

GetEvaluationOk returns a tuple with the Evaluation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluation

`func (o *ProjectsRecruitRequest) SetEvaluation(v map[string]interface{})`

SetEvaluation sets Evaluation field to given value.

### HasEvaluation

`func (o *ProjectsRecruitRequest) HasEvaluation() bool`

HasEvaluation returns a boolean if a field has been set.

### GetText

`func (o *ProjectsRecruitRequest) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *ProjectsRecruitRequest) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *ProjectsRecruitRequest) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *ProjectsRecruitRequest) HasText() bool`

HasText returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


