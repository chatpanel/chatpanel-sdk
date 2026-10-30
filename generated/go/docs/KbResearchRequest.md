# KbResearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Question** | **string** |  | 
**Answer** | Pointer to **string** | The person&#39;s answer to a previous &#x60;ask&#x60; (a document title, or &#x60;all&#x60;). | [optional] 
**Ask** | Pointer to **bool** | &#x60;false&#x60;: never pause; search every document. | [optional] [default to true]
**Model** | Pointer to **string** | A model (from &#x60;GET /v1/models&#x60;) for the evidence check; token-gated. | [optional] 
**Previous** | Pointer to **map[string]interface{}** | The previous response&#39;s &#x60;frame&#x60;, for a follow-up. | [optional] 
**Docs** | Pointer to **[]string** | Only these documents. | [optional] 

## Methods

### NewKbResearchRequest

`func NewKbResearchRequest(question string, ) *KbResearchRequest`

NewKbResearchRequest instantiates a new KbResearchRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbResearchRequestWithDefaults

`func NewKbResearchRequestWithDefaults() *KbResearchRequest`

NewKbResearchRequestWithDefaults instantiates a new KbResearchRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetQuestion

`func (o *KbResearchRequest) GetQuestion() string`

GetQuestion returns the Question field if non-nil, zero value otherwise.

### GetQuestionOk

`func (o *KbResearchRequest) GetQuestionOk() (*string, bool)`

GetQuestionOk returns a tuple with the Question field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuestion

`func (o *KbResearchRequest) SetQuestion(v string)`

SetQuestion sets Question field to given value.


### GetAnswer

`func (o *KbResearchRequest) GetAnswer() string`

GetAnswer returns the Answer field if non-nil, zero value otherwise.

### GetAnswerOk

`func (o *KbResearchRequest) GetAnswerOk() (*string, bool)`

GetAnswerOk returns a tuple with the Answer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnswer

`func (o *KbResearchRequest) SetAnswer(v string)`

SetAnswer sets Answer field to given value.

### HasAnswer

`func (o *KbResearchRequest) HasAnswer() bool`

HasAnswer returns a boolean if a field has been set.

### GetAsk

`func (o *KbResearchRequest) GetAsk() bool`

GetAsk returns the Ask field if non-nil, zero value otherwise.

### GetAskOk

`func (o *KbResearchRequest) GetAskOk() (*bool, bool)`

GetAskOk returns a tuple with the Ask field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsk

`func (o *KbResearchRequest) SetAsk(v bool)`

SetAsk sets Ask field to given value.

### HasAsk

`func (o *KbResearchRequest) HasAsk() bool`

HasAsk returns a boolean if a field has been set.

### GetModel

`func (o *KbResearchRequest) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *KbResearchRequest) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *KbResearchRequest) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *KbResearchRequest) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetPrevious

`func (o *KbResearchRequest) GetPrevious() map[string]interface{}`

GetPrevious returns the Previous field if non-nil, zero value otherwise.

### GetPreviousOk

`func (o *KbResearchRequest) GetPreviousOk() (*map[string]interface{}, bool)`

GetPreviousOk returns a tuple with the Previous field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrevious

`func (o *KbResearchRequest) SetPrevious(v map[string]interface{})`

SetPrevious sets Previous field to given value.

### HasPrevious

`func (o *KbResearchRequest) HasPrevious() bool`

HasPrevious returns a boolean if a field has been set.

### GetDocs

`func (o *KbResearchRequest) GetDocs() []string`

GetDocs returns the Docs field if non-nil, zero value otherwise.

### GetDocsOk

`func (o *KbResearchRequest) GetDocsOk() (*[]string, bool)`

GetDocsOk returns a tuple with the Docs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocs

`func (o *KbResearchRequest) SetDocs(v []string)`

SetDocs sets Docs field to given value.

### HasDocs

`func (o *KbResearchRequest) HasDocs() bool`

HasDocs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


