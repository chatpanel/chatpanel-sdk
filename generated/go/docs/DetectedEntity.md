# DetectedEntity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **string** |  | 
**Type** | **string** | The model&#39;s own label. | 
**Start** | **int32** | Character offset into the request text. | 
**End** | **int32** |  | 
**Score** | **float32** |  | 

## Methods

### NewDetectedEntity

`func NewDetectedEntity(value string, type_ string, start int32, end int32, score float32, ) *DetectedEntity`

NewDetectedEntity instantiates a new DetectedEntity object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDetectedEntityWithDefaults

`func NewDetectedEntityWithDefaults() *DetectedEntity`

NewDetectedEntityWithDefaults instantiates a new DetectedEntity object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetValue

`func (o *DetectedEntity) GetValue() string`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *DetectedEntity) GetValueOk() (*string, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *DetectedEntity) SetValue(v string)`

SetValue sets Value field to given value.


### GetType

`func (o *DetectedEntity) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DetectedEntity) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DetectedEntity) SetType(v string)`

SetType sets Type field to given value.


### GetStart

`func (o *DetectedEntity) GetStart() int32`

GetStart returns the Start field if non-nil, zero value otherwise.

### GetStartOk

`func (o *DetectedEntity) GetStartOk() (*int32, bool)`

GetStartOk returns a tuple with the Start field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStart

`func (o *DetectedEntity) SetStart(v int32)`

SetStart sets Start field to given value.


### GetEnd

`func (o *DetectedEntity) GetEnd() int32`

GetEnd returns the End field if non-nil, zero value otherwise.

### GetEndOk

`func (o *DetectedEntity) GetEndOk() (*int32, bool)`

GetEndOk returns a tuple with the End field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnd

`func (o *DetectedEntity) SetEnd(v int32)`

SetEnd sets End field to given value.


### GetScore

`func (o *DetectedEntity) GetScore() float32`

GetScore returns the Score field if non-nil, zero value otherwise.

### GetScoreOk

`func (o *DetectedEntity) GetScoreOk() (*float32, bool)`

GetScoreOk returns a tuple with the Score field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScore

`func (o *DetectedEntity) SetScore(v float32)`

SetScore sets Score field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


