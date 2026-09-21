# DecideOption

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **string** |  | 
**Describe** | Pointer to **string** | What the option means — travels to the model as its criterion. | [optional] 

## Methods

### NewDecideOption

`func NewDecideOption(value string, ) *DecideOption`

NewDecideOption instantiates a new DecideOption object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDecideOptionWithDefaults

`func NewDecideOptionWithDefaults() *DecideOption`

NewDecideOptionWithDefaults instantiates a new DecideOption object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetValue

`func (o *DecideOption) GetValue() string`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *DecideOption) GetValueOk() (*string, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *DecideOption) SetValue(v string)`

SetValue sets Value field to given value.


### GetDescribe

`func (o *DecideOption) GetDescribe() string`

GetDescribe returns the Describe field if non-nil, zero value otherwise.

### GetDescribeOk

`func (o *DecideOption) GetDescribeOk() (*string, bool)`

GetDescribeOk returns a tuple with the Describe field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescribe

`func (o *DecideOption) SetDescribe(v string)`

SetDescribe sets Describe field to given value.

### HasDescribe

`func (o *DecideOption) HasDescribe() bool`

HasDescribe returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


