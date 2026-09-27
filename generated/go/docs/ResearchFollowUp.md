# ResearchFollowUp

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Plan** | [**ResearchPlan**](ResearchPlan.md) |  | 
**Top** | Pointer to **NullableString** | The record the answer pointed at. | [optional] 
**Answer** | Pointer to **string** | What the answer said (a date in it bounds \&quot;even later\&quot;). | [optional] 

## Methods

### NewResearchFollowUp

`func NewResearchFollowUp(plan ResearchPlan, ) *ResearchFollowUp`

NewResearchFollowUp instantiates a new ResearchFollowUp object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResearchFollowUpWithDefaults

`func NewResearchFollowUpWithDefaults() *ResearchFollowUp`

NewResearchFollowUpWithDefaults instantiates a new ResearchFollowUp object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPlan

`func (o *ResearchFollowUp) GetPlan() ResearchPlan`

GetPlan returns the Plan field if non-nil, zero value otherwise.

### GetPlanOk

`func (o *ResearchFollowUp) GetPlanOk() (*ResearchPlan, bool)`

GetPlanOk returns a tuple with the Plan field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlan

`func (o *ResearchFollowUp) SetPlan(v ResearchPlan)`

SetPlan sets Plan field to given value.


### GetTop

`func (o *ResearchFollowUp) GetTop() string`

GetTop returns the Top field if non-nil, zero value otherwise.

### GetTopOk

`func (o *ResearchFollowUp) GetTopOk() (*string, bool)`

GetTopOk returns a tuple with the Top field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTop

`func (o *ResearchFollowUp) SetTop(v string)`

SetTop sets Top field to given value.

### HasTop

`func (o *ResearchFollowUp) HasTop() bool`

HasTop returns a boolean if a field has been set.

### SetTopNil

`func (o *ResearchFollowUp) SetTopNil(b bool)`

 SetTopNil sets the value for Top to be an explicit nil

### UnsetTop
`func (o *ResearchFollowUp) UnsetTop()`

UnsetTop ensures that no value is present for Top, not even an explicit nil
### GetAnswer

`func (o *ResearchFollowUp) GetAnswer() string`

GetAnswer returns the Answer field if non-nil, zero value otherwise.

### GetAnswerOk

`func (o *ResearchFollowUp) GetAnswerOk() (*string, bool)`

GetAnswerOk returns a tuple with the Answer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnswer

`func (o *ResearchFollowUp) SetAnswer(v string)`

SetAnswer sets Answer field to given value.

### HasAnswer

`func (o *ResearchFollowUp) HasAnswer() bool`

HasAnswer returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


