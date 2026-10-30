# KbSearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**[]KbPassage**](KbPassage.md) |  | 
**Lanes** | [**KbSearchResponseLanes**](KbSearchResponseLanes.md) |  | 
**Queries** | **[]string** | The query shapes searched. | 
**Ms** | **float32** |  | 

## Methods

### NewKbSearchResponse

`func NewKbSearchResponse(results []KbPassage, lanes KbSearchResponseLanes, queries []string, ms float32, ) *KbSearchResponse`

NewKbSearchResponse instantiates a new KbSearchResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbSearchResponseWithDefaults

`func NewKbSearchResponseWithDefaults() *KbSearchResponse`

NewKbSearchResponseWithDefaults instantiates a new KbSearchResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResults

`func (o *KbSearchResponse) GetResults() []KbPassage`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *KbSearchResponse) GetResultsOk() (*[]KbPassage, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *KbSearchResponse) SetResults(v []KbPassage)`

SetResults sets Results field to given value.


### GetLanes

`func (o *KbSearchResponse) GetLanes() KbSearchResponseLanes`

GetLanes returns the Lanes field if non-nil, zero value otherwise.

### GetLanesOk

`func (o *KbSearchResponse) GetLanesOk() (*KbSearchResponseLanes, bool)`

GetLanesOk returns a tuple with the Lanes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanes

`func (o *KbSearchResponse) SetLanes(v KbSearchResponseLanes)`

SetLanes sets Lanes field to given value.


### GetQueries

`func (o *KbSearchResponse) GetQueries() []string`

GetQueries returns the Queries field if non-nil, zero value otherwise.

### GetQueriesOk

`func (o *KbSearchResponse) GetQueriesOk() (*[]string, bool)`

GetQueriesOk returns a tuple with the Queries field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueries

`func (o *KbSearchResponse) SetQueries(v []string)`

SetQueries sets Queries field to given value.


### GetMs

`func (o *KbSearchResponse) GetMs() float32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *KbSearchResponse) GetMsOk() (*float32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *KbSearchResponse) SetMs(v float32)`

SetMs sets Ms field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


