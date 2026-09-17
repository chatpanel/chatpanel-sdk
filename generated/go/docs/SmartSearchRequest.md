# SmartSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to [**RecordType**](RecordType.md) |  | [optional] 
**Since** | Pointer to **int64** | ms since epoch | [optional] 
**Before** | Pointer to **int64** | ms since epoch | [optional] 
**Limit** | Pointer to **int32** |  | [optional] [default to 10]
**Question** | **string** | The natural-language question. | 
**Queries** | Pointer to **[]string** | 2–4 keyword phrasings of your own; they lead. | [optional] 
**MaxQueries** | Pointer to **int32** |  | [optional] [default to 4]

## Methods

### NewSmartSearchRequest

`func NewSmartSearchRequest(question string, ) *SmartSearchRequest`

NewSmartSearchRequest instantiates a new SmartSearchRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSmartSearchRequestWithDefaults

`func NewSmartSearchRequestWithDefaults() *SmartSearchRequest`

NewSmartSearchRequestWithDefaults instantiates a new SmartSearchRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *SmartSearchRequest) GetType() RecordType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *SmartSearchRequest) GetTypeOk() (*RecordType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *SmartSearchRequest) SetType(v RecordType)`

SetType sets Type field to given value.

### HasType

`func (o *SmartSearchRequest) HasType() bool`

HasType returns a boolean if a field has been set.

### GetSince

`func (o *SmartSearchRequest) GetSince() int64`

GetSince returns the Since field if non-nil, zero value otherwise.

### GetSinceOk

`func (o *SmartSearchRequest) GetSinceOk() (*int64, bool)`

GetSinceOk returns a tuple with the Since field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSince

`func (o *SmartSearchRequest) SetSince(v int64)`

SetSince sets Since field to given value.

### HasSince

`func (o *SmartSearchRequest) HasSince() bool`

HasSince returns a boolean if a field has been set.

### GetBefore

`func (o *SmartSearchRequest) GetBefore() int64`

GetBefore returns the Before field if non-nil, zero value otherwise.

### GetBeforeOk

`func (o *SmartSearchRequest) GetBeforeOk() (*int64, bool)`

GetBeforeOk returns a tuple with the Before field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBefore

`func (o *SmartSearchRequest) SetBefore(v int64)`

SetBefore sets Before field to given value.

### HasBefore

`func (o *SmartSearchRequest) HasBefore() bool`

HasBefore returns a boolean if a field has been set.

### GetLimit

`func (o *SmartSearchRequest) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *SmartSearchRequest) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *SmartSearchRequest) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *SmartSearchRequest) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetQuestion

`func (o *SmartSearchRequest) GetQuestion() string`

GetQuestion returns the Question field if non-nil, zero value otherwise.

### GetQuestionOk

`func (o *SmartSearchRequest) GetQuestionOk() (*string, bool)`

GetQuestionOk returns a tuple with the Question field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuestion

`func (o *SmartSearchRequest) SetQuestion(v string)`

SetQuestion sets Question field to given value.


### GetQueries

`func (o *SmartSearchRequest) GetQueries() []string`

GetQueries returns the Queries field if non-nil, zero value otherwise.

### GetQueriesOk

`func (o *SmartSearchRequest) GetQueriesOk() (*[]string, bool)`

GetQueriesOk returns a tuple with the Queries field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueries

`func (o *SmartSearchRequest) SetQueries(v []string)`

SetQueries sets Queries field to given value.

### HasQueries

`func (o *SmartSearchRequest) HasQueries() bool`

HasQueries returns a boolean if a field has been set.

### GetMaxQueries

`func (o *SmartSearchRequest) GetMaxQueries() int32`

GetMaxQueries returns the MaxQueries field if non-nil, zero value otherwise.

### GetMaxQueriesOk

`func (o *SmartSearchRequest) GetMaxQueriesOk() (*int32, bool)`

GetMaxQueriesOk returns a tuple with the MaxQueries field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxQueries

`func (o *SmartSearchRequest) SetMaxQueries(v int32)`

SetMaxQueries sets MaxQueries field to given value.

### HasMaxQueries

`func (o *SmartSearchRequest) HasMaxQueries() bool`

HasMaxQueries returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


