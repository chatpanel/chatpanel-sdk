# AgentsRateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Score** | **float32** |  | 
**Note** | Pointer to **string** |  | [optional] 
**About** | Pointer to **string** |  | [optional] 
**By** | Pointer to **string** |  | [optional] 
**RunId** | Pointer to **string** |  | [optional] 
**TaskId** | Pointer to **string** |  | [optional] 
**JobId** | Pointer to **string** |  | [optional] 
**Refs** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

## Methods

### NewAgentsRateRequest

`func NewAgentsRateRequest(score float32, ) *AgentsRateRequest`

NewAgentsRateRequest instantiates a new AgentsRateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAgentsRateRequestWithDefaults

`func NewAgentsRateRequestWithDefaults() *AgentsRateRequest`

NewAgentsRateRequestWithDefaults instantiates a new AgentsRateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetScore

`func (o *AgentsRateRequest) GetScore() float32`

GetScore returns the Score field if non-nil, zero value otherwise.

### GetScoreOk

`func (o *AgentsRateRequest) GetScoreOk() (*float32, bool)`

GetScoreOk returns a tuple with the Score field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScore

`func (o *AgentsRateRequest) SetScore(v float32)`

SetScore sets Score field to given value.


### GetNote

`func (o *AgentsRateRequest) GetNote() string`

GetNote returns the Note field if non-nil, zero value otherwise.

### GetNoteOk

`func (o *AgentsRateRequest) GetNoteOk() (*string, bool)`

GetNoteOk returns a tuple with the Note field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNote

`func (o *AgentsRateRequest) SetNote(v string)`

SetNote sets Note field to given value.

### HasNote

`func (o *AgentsRateRequest) HasNote() bool`

HasNote returns a boolean if a field has been set.

### GetAbout

`func (o *AgentsRateRequest) GetAbout() string`

GetAbout returns the About field if non-nil, zero value otherwise.

### GetAboutOk

`func (o *AgentsRateRequest) GetAboutOk() (*string, bool)`

GetAboutOk returns a tuple with the About field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAbout

`func (o *AgentsRateRequest) SetAbout(v string)`

SetAbout sets About field to given value.

### HasAbout

`func (o *AgentsRateRequest) HasAbout() bool`

HasAbout returns a boolean if a field has been set.

### GetBy

`func (o *AgentsRateRequest) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *AgentsRateRequest) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *AgentsRateRequest) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *AgentsRateRequest) HasBy() bool`

HasBy returns a boolean if a field has been set.

### GetRunId

`func (o *AgentsRateRequest) GetRunId() string`

GetRunId returns the RunId field if non-nil, zero value otherwise.

### GetRunIdOk

`func (o *AgentsRateRequest) GetRunIdOk() (*string, bool)`

GetRunIdOk returns a tuple with the RunId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRunId

`func (o *AgentsRateRequest) SetRunId(v string)`

SetRunId sets RunId field to given value.

### HasRunId

`func (o *AgentsRateRequest) HasRunId() bool`

HasRunId returns a boolean if a field has been set.

### GetTaskId

`func (o *AgentsRateRequest) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *AgentsRateRequest) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *AgentsRateRequest) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.

### HasTaskId

`func (o *AgentsRateRequest) HasTaskId() bool`

HasTaskId returns a boolean if a field has been set.

### GetJobId

`func (o *AgentsRateRequest) GetJobId() string`

GetJobId returns the JobId field if non-nil, zero value otherwise.

### GetJobIdOk

`func (o *AgentsRateRequest) GetJobIdOk() (*string, bool)`

GetJobIdOk returns a tuple with the JobId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJobId

`func (o *AgentsRateRequest) SetJobId(v string)`

SetJobId sets JobId field to given value.

### HasJobId

`func (o *AgentsRateRequest) HasJobId() bool`

HasJobId returns a boolean if a field has been set.

### GetRefs

`func (o *AgentsRateRequest) GetRefs() map[string]interface{}`

GetRefs returns the Refs field if non-nil, zero value otherwise.

### GetRefsOk

`func (o *AgentsRateRequest) GetRefsOk() (*map[string]interface{}, bool)`

GetRefsOk returns a tuple with the Refs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRefs

`func (o *AgentsRateRequest) SetRefs(v map[string]interface{})`

SetRefs sets Refs field to given value.

### HasRefs

`func (o *AgentsRateRequest) HasRefs() bool`

HasRefs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


