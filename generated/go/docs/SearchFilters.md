# SearchFilters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to [**RecordType**](RecordType.md) |  | [optional] 
**Since** | Pointer to **int64** | ms since epoch | [optional] 
**Before** | Pointer to **int64** | ms since epoch | [optional] 
**Limit** | Pointer to **int32** |  | [optional] [default to 10]

## Methods

### NewSearchFilters

`func NewSearchFilters() *SearchFilters`

NewSearchFilters instantiates a new SearchFilters object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchFiltersWithDefaults

`func NewSearchFiltersWithDefaults() *SearchFilters`

NewSearchFiltersWithDefaults instantiates a new SearchFilters object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *SearchFilters) GetType() RecordType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *SearchFilters) GetTypeOk() (*RecordType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *SearchFilters) SetType(v RecordType)`

SetType sets Type field to given value.

### HasType

`func (o *SearchFilters) HasType() bool`

HasType returns a boolean if a field has been set.

### GetSince

`func (o *SearchFilters) GetSince() int64`

GetSince returns the Since field if non-nil, zero value otherwise.

### GetSinceOk

`func (o *SearchFilters) GetSinceOk() (*int64, bool)`

GetSinceOk returns a tuple with the Since field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSince

`func (o *SearchFilters) SetSince(v int64)`

SetSince sets Since field to given value.

### HasSince

`func (o *SearchFilters) HasSince() bool`

HasSince returns a boolean if a field has been set.

### GetBefore

`func (o *SearchFilters) GetBefore() int64`

GetBefore returns the Before field if non-nil, zero value otherwise.

### GetBeforeOk

`func (o *SearchFilters) GetBeforeOk() (*int64, bool)`

GetBeforeOk returns a tuple with the Before field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBefore

`func (o *SearchFilters) SetBefore(v int64)`

SetBefore sets Before field to given value.

### HasBefore

`func (o *SearchFilters) HasBefore() bool`

HasBefore returns a boolean if a field has been set.

### GetLimit

`func (o *SearchFilters) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *SearchFilters) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *SearchFilters) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *SearchFilters) HasLimit() bool`

HasLimit returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


