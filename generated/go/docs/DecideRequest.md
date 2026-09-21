# DecideRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | **string** | The text judged. | 
**Questions** | [**map[string]DecideQuestion**](DecideQuestion.md) | Keyed by identifier ([A-Za-z_][A-Za-z0-9_]*). | 
**Model** | Pointer to **string** | The model this provider serves; 404 otherwise. | [optional] 
**BudgetMs** | Pointer to **float32** |  | [optional] 

## Methods

### NewDecideRequest

`func NewDecideRequest(state string, questions map[string]DecideQuestion, ) *DecideRequest`

NewDecideRequest instantiates a new DecideRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDecideRequestWithDefaults

`func NewDecideRequestWithDefaults() *DecideRequest`

NewDecideRequestWithDefaults instantiates a new DecideRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetState

`func (o *DecideRequest) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *DecideRequest) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *DecideRequest) SetState(v string)`

SetState sets State field to given value.


### GetQuestions

`func (o *DecideRequest) GetQuestions() map[string]DecideQuestion`

GetQuestions returns the Questions field if non-nil, zero value otherwise.

### GetQuestionsOk

`func (o *DecideRequest) GetQuestionsOk() (*map[string]DecideQuestion, bool)`

GetQuestionsOk returns a tuple with the Questions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuestions

`func (o *DecideRequest) SetQuestions(v map[string]DecideQuestion)`

SetQuestions sets Questions field to given value.


### GetModel

`func (o *DecideRequest) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *DecideRequest) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *DecideRequest) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *DecideRequest) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetBudgetMs

`func (o *DecideRequest) GetBudgetMs() float32`

GetBudgetMs returns the BudgetMs field if non-nil, zero value otherwise.

### GetBudgetMsOk

`func (o *DecideRequest) GetBudgetMsOk() (*float32, bool)`

GetBudgetMsOk returns a tuple with the BudgetMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetMs

`func (o *DecideRequest) SetBudgetMs(v float32)`

SetBudgetMs sets BudgetMs field to given value.

### HasBudgetMs

`func (o *DecideRequest) HasBudgetMs() bool`

HasBudgetMs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


