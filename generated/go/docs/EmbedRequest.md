# EmbedRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Input** | [**EmbedRequestInput**](EmbedRequestInput.md) |  | 
**Model** | Pointer to **string** | The model &#x60;GET /v1/capabilities&#x60; lists for &#x60;embed&#x60;; 404 otherwise. | [optional] 
**Kind** | Pointer to **string** | What the texts are — a model with instruction prefixes (E5) prefixes each accordingly. | [optional] [default to "passage"]
**BudgetMs** | Pointer to **float32** |  | [optional] 

## Methods

### NewEmbedRequest

`func NewEmbedRequest(input EmbedRequestInput, ) *EmbedRequest`

NewEmbedRequest instantiates a new EmbedRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEmbedRequestWithDefaults

`func NewEmbedRequestWithDefaults() *EmbedRequest`

NewEmbedRequestWithDefaults instantiates a new EmbedRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInput

`func (o *EmbedRequest) GetInput() EmbedRequestInput`

GetInput returns the Input field if non-nil, zero value otherwise.

### GetInputOk

`func (o *EmbedRequest) GetInputOk() (*EmbedRequestInput, bool)`

GetInputOk returns a tuple with the Input field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInput

`func (o *EmbedRequest) SetInput(v EmbedRequestInput)`

SetInput sets Input field to given value.


### GetModel

`func (o *EmbedRequest) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *EmbedRequest) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *EmbedRequest) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *EmbedRequest) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetKind

`func (o *EmbedRequest) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *EmbedRequest) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *EmbedRequest) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *EmbedRequest) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetBudgetMs

`func (o *EmbedRequest) GetBudgetMs() float32`

GetBudgetMs returns the BudgetMs field if non-nil, zero value otherwise.

### GetBudgetMsOk

`func (o *EmbedRequest) GetBudgetMsOk() (*float32, bool)`

GetBudgetMsOk returns a tuple with the BudgetMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetMs

`func (o *EmbedRequest) SetBudgetMs(v float32)`

SetBudgetMs sets BudgetMs field to given value.

### HasBudgetMs

`func (o *EmbedRequest) HasBudgetMs() bool`

HasBudgetMs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


