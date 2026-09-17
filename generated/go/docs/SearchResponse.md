# SearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Size** | Pointer to **int32** |  | [optional] 
**Newest** | Pointer to **int64** |  | [optional] 
**Results** | [**[]SearchHit**](SearchHit.md) |  | 

## Methods

### NewSearchResponse

`func NewSearchResponse(ok bool, results []SearchHit, ) *SearchResponse`

NewSearchResponse instantiates a new SearchResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchResponseWithDefaults

`func NewSearchResponseWithDefaults() *SearchResponse`

NewSearchResponseWithDefaults instantiates a new SearchResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *SearchResponse) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *SearchResponse) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *SearchResponse) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetSize

`func (o *SearchResponse) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *SearchResponse) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *SearchResponse) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *SearchResponse) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetNewest

`func (o *SearchResponse) GetNewest() int64`

GetNewest returns the Newest field if non-nil, zero value otherwise.

### GetNewestOk

`func (o *SearchResponse) GetNewestOk() (*int64, bool)`

GetNewestOk returns a tuple with the Newest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNewest

`func (o *SearchResponse) SetNewest(v int64)`

SetNewest sets Newest field to given value.

### HasNewest

`func (o *SearchResponse) HasNewest() bool`

HasNewest returns a boolean if a field has been set.

### GetResults

`func (o *SearchResponse) GetResults() []SearchHit`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *SearchResponse) GetResultsOk() (*[]SearchHit, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *SearchResponse) SetResults(v []SearchHit)`

SetResults sets Results field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


