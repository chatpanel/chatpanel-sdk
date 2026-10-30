# KbSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Query** | **string** |  | 
**Limit** | Pointer to **int32** |  | [optional] [default to 10]
**Hops** | Pointer to **int32** | Graph expansion of the best hits; 0 &#x3D; off. | [optional] [default to 1]
**Docs** | Pointer to **[]string** | Only these documents. | [optional] 
**Queries** | Pointer to **[]string** | The caller&#39;s own phrasings, searched too. | [optional] 
**Rerank** | Pointer to **bool** | &#x60;false&#x60;: skip the reranker. | [optional] [default to true]
**BudgetMs** | Pointer to **float32** |  | [optional] 

## Methods

### NewKbSearchRequest

`func NewKbSearchRequest(query string, ) *KbSearchRequest`

NewKbSearchRequest instantiates a new KbSearchRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbSearchRequestWithDefaults

`func NewKbSearchRequestWithDefaults() *KbSearchRequest`

NewKbSearchRequestWithDefaults instantiates a new KbSearchRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetQuery

`func (o *KbSearchRequest) GetQuery() string`

GetQuery returns the Query field if non-nil, zero value otherwise.

### GetQueryOk

`func (o *KbSearchRequest) GetQueryOk() (*string, bool)`

GetQueryOk returns a tuple with the Query field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuery

`func (o *KbSearchRequest) SetQuery(v string)`

SetQuery sets Query field to given value.


### GetLimit

`func (o *KbSearchRequest) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *KbSearchRequest) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *KbSearchRequest) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *KbSearchRequest) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetHops

`func (o *KbSearchRequest) GetHops() int32`

GetHops returns the Hops field if non-nil, zero value otherwise.

### GetHopsOk

`func (o *KbSearchRequest) GetHopsOk() (*int32, bool)`

GetHopsOk returns a tuple with the Hops field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHops

`func (o *KbSearchRequest) SetHops(v int32)`

SetHops sets Hops field to given value.

### HasHops

`func (o *KbSearchRequest) HasHops() bool`

HasHops returns a boolean if a field has been set.

### GetDocs

`func (o *KbSearchRequest) GetDocs() []string`

GetDocs returns the Docs field if non-nil, zero value otherwise.

### GetDocsOk

`func (o *KbSearchRequest) GetDocsOk() (*[]string, bool)`

GetDocsOk returns a tuple with the Docs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocs

`func (o *KbSearchRequest) SetDocs(v []string)`

SetDocs sets Docs field to given value.

### HasDocs

`func (o *KbSearchRequest) HasDocs() bool`

HasDocs returns a boolean if a field has been set.

### GetQueries

`func (o *KbSearchRequest) GetQueries() []string`

GetQueries returns the Queries field if non-nil, zero value otherwise.

### GetQueriesOk

`func (o *KbSearchRequest) GetQueriesOk() (*[]string, bool)`

GetQueriesOk returns a tuple with the Queries field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueries

`func (o *KbSearchRequest) SetQueries(v []string)`

SetQueries sets Queries field to given value.

### HasQueries

`func (o *KbSearchRequest) HasQueries() bool`

HasQueries returns a boolean if a field has been set.

### GetRerank

`func (o *KbSearchRequest) GetRerank() bool`

GetRerank returns the Rerank field if non-nil, zero value otherwise.

### GetRerankOk

`func (o *KbSearchRequest) GetRerankOk() (*bool, bool)`

GetRerankOk returns a tuple with the Rerank field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRerank

`func (o *KbSearchRequest) SetRerank(v bool)`

SetRerank sets Rerank field to given value.

### HasRerank

`func (o *KbSearchRequest) HasRerank() bool`

HasRerank returns a boolean if a field has been set.

### GetBudgetMs

`func (o *KbSearchRequest) GetBudgetMs() float32`

GetBudgetMs returns the BudgetMs field if non-nil, zero value otherwise.

### GetBudgetMsOk

`func (o *KbSearchRequest) GetBudgetMsOk() (*float32, bool)`

GetBudgetMsOk returns a tuple with the BudgetMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetMs

`func (o *KbSearchRequest) SetBudgetMs(v float32)`

SetBudgetMs sets BudgetMs field to given value.

### HasBudgetMs

`func (o *KbSearchRequest) HasBudgetMs() bool`

HasBudgetMs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


