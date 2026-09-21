# RerankResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**[]RerankResult**](RerankResult.md) | Distinct indexes, best first; at most top_n. | 
**Model** | **string** |  | 
**Ms** | **float32** |  | 

## Methods

### NewRerankResponse

`func NewRerankResponse(results []RerankResult, model string, ms float32, ) *RerankResponse`

NewRerankResponse instantiates a new RerankResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRerankResponseWithDefaults

`func NewRerankResponseWithDefaults() *RerankResponse`

NewRerankResponseWithDefaults instantiates a new RerankResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResults

`func (o *RerankResponse) GetResults() []RerankResult`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *RerankResponse) GetResultsOk() (*[]RerankResult, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *RerankResponse) SetResults(v []RerankResult)`

SetResults sets Results field to given value.


### GetModel

`func (o *RerankResponse) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *RerankResponse) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *RerankResponse) SetModel(v string)`

SetModel sets Model field to given value.


### GetMs

`func (o *RerankResponse) GetMs() float32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *RerankResponse) GetMsOk() (*float32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *RerankResponse) SetMs(v float32)`

SetMs sets Ms field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


