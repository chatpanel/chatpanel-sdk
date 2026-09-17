# PrefSection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **interface{}** |  | 
**UpdatedAt** | Pointer to **int64** |  | [optional] 
**By** | Pointer to **string** |  | [optional] 

## Methods

### NewPrefSection

`func NewPrefSection(value interface{}, ) *PrefSection`

NewPrefSection instantiates a new PrefSection object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPrefSectionWithDefaults

`func NewPrefSectionWithDefaults() *PrefSection`

NewPrefSectionWithDefaults instantiates a new PrefSection object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetValue

`func (o *PrefSection) GetValue() interface{}`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *PrefSection) GetValueOk() (*interface{}, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *PrefSection) SetValue(v interface{})`

SetValue sets Value field to given value.


### SetValueNil

`func (o *PrefSection) SetValueNil(b bool)`

 SetValueNil sets the value for Value to be an explicit nil

### UnsetValue
`func (o *PrefSection) UnsetValue()`

UnsetValue ensures that no value is present for Value, not even an explicit nil
### GetUpdatedAt

`func (o *PrefSection) GetUpdatedAt() int64`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *PrefSection) GetUpdatedAtOk() (*int64, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *PrefSection) SetUpdatedAt(v int64)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *PrefSection) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### GetBy

`func (o *PrefSection) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *PrefSection) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *PrefSection) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *PrefSection) HasBy() bool`

HasBy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


