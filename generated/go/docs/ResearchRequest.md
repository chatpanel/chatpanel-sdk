# ResearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Question** | **string** | The person&#39;s question, in their words. | 
**Previous** | Pointer to [**ResearchFollowUp**](ResearchFollowUp.md) |  | [optional] 
**Model** | Pointer to **string** | A model id to read with (condense long records, check the evidence). Needs the gateway token; without one the parts are quoted as they are. | [optional] 
**ExcludeId** | Pointer to **string** | A record that is not evidence — the conversation asking. | [optional] 

## Methods

### NewResearchRequest

`func NewResearchRequest(question string, ) *ResearchRequest`

NewResearchRequest instantiates a new ResearchRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResearchRequestWithDefaults

`func NewResearchRequestWithDefaults() *ResearchRequest`

NewResearchRequestWithDefaults instantiates a new ResearchRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetQuestion

`func (o *ResearchRequest) GetQuestion() string`

GetQuestion returns the Question field if non-nil, zero value otherwise.

### GetQuestionOk

`func (o *ResearchRequest) GetQuestionOk() (*string, bool)`

GetQuestionOk returns a tuple with the Question field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuestion

`func (o *ResearchRequest) SetQuestion(v string)`

SetQuestion sets Question field to given value.


### GetPrevious

`func (o *ResearchRequest) GetPrevious() ResearchFollowUp`

GetPrevious returns the Previous field if non-nil, zero value otherwise.

### GetPreviousOk

`func (o *ResearchRequest) GetPreviousOk() (*ResearchFollowUp, bool)`

GetPreviousOk returns a tuple with the Previous field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrevious

`func (o *ResearchRequest) SetPrevious(v ResearchFollowUp)`

SetPrevious sets Previous field to given value.

### HasPrevious

`func (o *ResearchRequest) HasPrevious() bool`

HasPrevious returns a boolean if a field has been set.

### GetModel

`func (o *ResearchRequest) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *ResearchRequest) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *ResearchRequest) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *ResearchRequest) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetExcludeId

`func (o *ResearchRequest) GetExcludeId() string`

GetExcludeId returns the ExcludeId field if non-nil, zero value otherwise.

### GetExcludeIdOk

`func (o *ResearchRequest) GetExcludeIdOk() (*string, bool)`

GetExcludeIdOk returns a tuple with the ExcludeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExcludeId

`func (o *ResearchRequest) SetExcludeId(v string)`

SetExcludeId sets ExcludeId field to given value.

### HasExcludeId

`func (o *ResearchRequest) HasExcludeId() bool`

HasExcludeId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


