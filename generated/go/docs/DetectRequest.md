# DetectRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **string** |  | 
**Model** | Pointer to **string** | A model this provider lists; 404 otherwise. | [optional] 
**Labels** | Pointer to **[]string** | Keep only these of the model&#39;s labels. | [optional] 
**BudgetMs** | Pointer to **float32** | Refused before running if the provider&#39;s record predicts it cannot be met. | [optional] 

## Methods

### NewDetectRequest

`func NewDetectRequest(text string, ) *DetectRequest`

NewDetectRequest instantiates a new DetectRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDetectRequestWithDefaults

`func NewDetectRequestWithDefaults() *DetectRequest`

NewDetectRequestWithDefaults instantiates a new DetectRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetText

`func (o *DetectRequest) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *DetectRequest) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *DetectRequest) SetText(v string)`

SetText sets Text field to given value.


### GetModel

`func (o *DetectRequest) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *DetectRequest) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *DetectRequest) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *DetectRequest) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetLabels

`func (o *DetectRequest) GetLabels() []string`

GetLabels returns the Labels field if non-nil, zero value otherwise.

### GetLabelsOk

`func (o *DetectRequest) GetLabelsOk() (*[]string, bool)`

GetLabelsOk returns a tuple with the Labels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabels

`func (o *DetectRequest) SetLabels(v []string)`

SetLabels sets Labels field to given value.

### HasLabels

`func (o *DetectRequest) HasLabels() bool`

HasLabels returns a boolean if a field has been set.

### GetBudgetMs

`func (o *DetectRequest) GetBudgetMs() float32`

GetBudgetMs returns the BudgetMs field if non-nil, zero value otherwise.

### GetBudgetMsOk

`func (o *DetectRequest) GetBudgetMsOk() (*float32, bool)`

GetBudgetMsOk returns a tuple with the BudgetMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetMs

`func (o *DetectRequest) SetBudgetMs(v float32)`

SetBudgetMs sets BudgetMs field to given value.

### HasBudgetMs

`func (o *DetectRequest) HasBudgetMs() bool`

HasBudgetMs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


