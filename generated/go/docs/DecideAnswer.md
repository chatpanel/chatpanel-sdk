# DecideAnswer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **interface{}** | choice: the option picked; score: a number on the rubric; noul: a boolean. | 
**P** | **float32** | The probability of &#x60;value&#x60; — read it as one only when the response says &#x60;calibrated&#x60;. | 
**Options** | [**[]DecideAnswerOption**](DecideAnswerOption.md) | The whole distribution. | 
**Confidence** | Pointer to **float32** | The provider&#39;s own confidence, when it reports one. | [optional] 

## Methods

### NewDecideAnswer

`func NewDecideAnswer(value interface{}, p float32, options []DecideAnswerOption, ) *DecideAnswer`

NewDecideAnswer instantiates a new DecideAnswer object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDecideAnswerWithDefaults

`func NewDecideAnswerWithDefaults() *DecideAnswer`

NewDecideAnswerWithDefaults instantiates a new DecideAnswer object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetValue

`func (o *DecideAnswer) GetValue() interface{}`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *DecideAnswer) GetValueOk() (*interface{}, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *DecideAnswer) SetValue(v interface{})`

SetValue sets Value field to given value.


### SetValueNil

`func (o *DecideAnswer) SetValueNil(b bool)`

 SetValueNil sets the value for Value to be an explicit nil

### UnsetValue
`func (o *DecideAnswer) UnsetValue()`

UnsetValue ensures that no value is present for Value, not even an explicit nil
### GetP

`func (o *DecideAnswer) GetP() float32`

GetP returns the P field if non-nil, zero value otherwise.

### GetPOk

`func (o *DecideAnswer) GetPOk() (*float32, bool)`

GetPOk returns a tuple with the P field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetP

`func (o *DecideAnswer) SetP(v float32)`

SetP sets P field to given value.


### GetOptions

`func (o *DecideAnswer) GetOptions() []DecideAnswerOption`

GetOptions returns the Options field if non-nil, zero value otherwise.

### GetOptionsOk

`func (o *DecideAnswer) GetOptionsOk() (*[]DecideAnswerOption, bool)`

GetOptionsOk returns a tuple with the Options field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptions

`func (o *DecideAnswer) SetOptions(v []DecideAnswerOption)`

SetOptions sets Options field to given value.


### GetConfidence

`func (o *DecideAnswer) GetConfidence() float32`

GetConfidence returns the Confidence field if non-nil, zero value otherwise.

### GetConfidenceOk

`func (o *DecideAnswer) GetConfidenceOk() (*float32, bool)`

GetConfidenceOk returns a tuple with the Confidence field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfidence

`func (o *DecideAnswer) SetConfidence(v float32)`

SetConfidence sets Confidence field to given value.

### HasConfidence

`func (o *DecideAnswer) HasConfidence() bool`

HasConfidence returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


