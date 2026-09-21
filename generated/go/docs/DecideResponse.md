# DecideResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Answers** | [**map[string]DecideAnswer**](DecideAnswer.md) | One per question asked, under the same key. | 
**Model** | **string** |  | 
**Ms** | **float32** |  | 
**Calibrated** | Pointer to **bool** | Whether &#x60;p&#x60; is a calibrated probability. false for a zero-shot NLI concentration. | [optional] 

## Methods

### NewDecideResponse

`func NewDecideResponse(answers map[string]DecideAnswer, model string, ms float32, ) *DecideResponse`

NewDecideResponse instantiates a new DecideResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDecideResponseWithDefaults

`func NewDecideResponseWithDefaults() *DecideResponse`

NewDecideResponseWithDefaults instantiates a new DecideResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAnswers

`func (o *DecideResponse) GetAnswers() map[string]DecideAnswer`

GetAnswers returns the Answers field if non-nil, zero value otherwise.

### GetAnswersOk

`func (o *DecideResponse) GetAnswersOk() (*map[string]DecideAnswer, bool)`

GetAnswersOk returns a tuple with the Answers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnswers

`func (o *DecideResponse) SetAnswers(v map[string]DecideAnswer)`

SetAnswers sets Answers field to given value.


### GetModel

`func (o *DecideResponse) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *DecideResponse) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *DecideResponse) SetModel(v string)`

SetModel sets Model field to given value.


### GetMs

`func (o *DecideResponse) GetMs() float32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *DecideResponse) GetMsOk() (*float32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *DecideResponse) SetMs(v float32)`

SetMs sets Ms field to given value.


### GetCalibrated

`func (o *DecideResponse) GetCalibrated() bool`

GetCalibrated returns the Calibrated field if non-nil, zero value otherwise.

### GetCalibratedOk

`func (o *DecideResponse) GetCalibratedOk() (*bool, bool)`

GetCalibratedOk returns a tuple with the Calibrated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCalibrated

`func (o *DecideResponse) SetCalibrated(v bool)`

SetCalibrated sets Calibrated field to given value.

### HasCalibrated

`func (o *DecideResponse) HasCalibrated() bool`

HasCalibrated returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


