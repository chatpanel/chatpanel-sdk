# SmartSearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Size** | Pointer to **int32** |  | [optional] 
**Newest** | Pointer to **int64** |  | [optional] 
**Results** | [**[]SearchHit**](SearchHit.md) |  | 
**Queries** | Pointer to **[]string** |  | [optional] 

## Methods

### NewSmartSearchResponse

`func NewSmartSearchResponse(ok bool, results []SearchHit, ) *SmartSearchResponse`

NewSmartSearchResponse instantiates a new SmartSearchResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSmartSearchResponseWithDefaults

`func NewSmartSearchResponseWithDefaults() *SmartSearchResponse`

NewSmartSearchResponseWithDefaults instantiates a new SmartSearchResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *SmartSearchResponse) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *SmartSearchResponse) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *SmartSearchResponse) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetSize

`func (o *SmartSearchResponse) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *SmartSearchResponse) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *SmartSearchResponse) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *SmartSearchResponse) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetNewest

`func (o *SmartSearchResponse) GetNewest() int64`

GetNewest returns the Newest field if non-nil, zero value otherwise.

### GetNewestOk

`func (o *SmartSearchResponse) GetNewestOk() (*int64, bool)`

GetNewestOk returns a tuple with the Newest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNewest

`func (o *SmartSearchResponse) SetNewest(v int64)`

SetNewest sets Newest field to given value.

### HasNewest

`func (o *SmartSearchResponse) HasNewest() bool`

HasNewest returns a boolean if a field has been set.

### GetResults

`func (o *SmartSearchResponse) GetResults() []SearchHit`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *SmartSearchResponse) GetResultsOk() (*[]SearchHit, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *SmartSearchResponse) SetResults(v []SearchHit)`

SetResults sets Results field to given value.


### GetQueries

`func (o *SmartSearchResponse) GetQueries() []string`

GetQueries returns the Queries field if non-nil, zero value otherwise.

### GetQueriesOk

`func (o *SmartSearchResponse) GetQueriesOk() (*[]string, bool)`

GetQueriesOk returns a tuple with the Queries field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueries

`func (o *SmartSearchResponse) SetQueries(v []string)`

SetQueries sets Queries field to given value.

### HasQueries

`func (o *SmartSearchResponse) HasQueries() bool`

HasQueries returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


