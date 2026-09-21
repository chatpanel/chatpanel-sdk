# DecideQuestion

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** |  | 
**Instructions** | **string** |  | 
**Options** | Pointer to [**[]DecideQuestionOptionsInner**](DecideQuestionOptionsInner.md) | choice: the values to pick from; score: the rubric, in order. A noul has none. | [optional] 

## Methods

### NewDecideQuestion

`func NewDecideQuestion(type_ string, instructions string, ) *DecideQuestion`

NewDecideQuestion instantiates a new DecideQuestion object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDecideQuestionWithDefaults

`func NewDecideQuestionWithDefaults() *DecideQuestion`

NewDecideQuestionWithDefaults instantiates a new DecideQuestion object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DecideQuestion) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DecideQuestion) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DecideQuestion) SetType(v string)`

SetType sets Type field to given value.


### GetInstructions

`func (o *DecideQuestion) GetInstructions() string`

GetInstructions returns the Instructions field if non-nil, zero value otherwise.

### GetInstructionsOk

`func (o *DecideQuestion) GetInstructionsOk() (*string, bool)`

GetInstructionsOk returns a tuple with the Instructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstructions

`func (o *DecideQuestion) SetInstructions(v string)`

SetInstructions sets Instructions field to given value.


### GetOptions

`func (o *DecideQuestion) GetOptions() []DecideQuestionOptionsInner`

GetOptions returns the Options field if non-nil, zero value otherwise.

### GetOptionsOk

`func (o *DecideQuestion) GetOptionsOk() (*[]DecideQuestionOptionsInner, bool)`

GetOptionsOk returns a tuple with the Options field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptions

`func (o *DecideQuestion) SetOptions(v []DecideQuestionOptionsInner)`

SetOptions sets Options field to given value.

### HasOptions

`func (o *DecideQuestion) HasOptions() bool`

HasOptions returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


