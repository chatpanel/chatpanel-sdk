# SearchTrailResting

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | The resting engine. | 
**Until** | **int64** | When it may be asked again, ms since epoch. | 

## Methods

### NewSearchTrailResting

`func NewSearchTrailResting(id string, until int64, ) *SearchTrailResting`

NewSearchTrailResting instantiates a new SearchTrailResting object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchTrailRestingWithDefaults

`func NewSearchTrailRestingWithDefaults() *SearchTrailResting`

NewSearchTrailRestingWithDefaults instantiates a new SearchTrailResting object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SearchTrailResting) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchTrailResting) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchTrailResting) SetId(v string)`

SetId sets Id field to given value.


### GetUntil

`func (o *SearchTrailResting) GetUntil() int64`

GetUntil returns the Until field if non-nil, zero value otherwise.

### GetUntilOk

`func (o *SearchTrailResting) GetUntilOk() (*int64, bool)`

GetUntilOk returns a tuple with the Until field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntil

`func (o *SearchTrailResting) SetUntil(v int64)`

SetUntil sets Until field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


