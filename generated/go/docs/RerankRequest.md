# RerankRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Query** | **string** |  | 
**Documents** | **[]string** |  | 
**TopN** | Pointer to **int32** | Return only the best this many. | [optional] 
**Model** | Pointer to **string** | The model this provider serves; 404 otherwise. | [optional] 
**BudgetMs** | Pointer to **float32** | Refused before dialling if the gateway&#39;s record predicts it cannot be met. | [optional] 

## Methods

### NewRerankRequest

`func NewRerankRequest(query string, documents []string, ) *RerankRequest`

NewRerankRequest instantiates a new RerankRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRerankRequestWithDefaults

`func NewRerankRequestWithDefaults() *RerankRequest`

NewRerankRequestWithDefaults instantiates a new RerankRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetQuery

`func (o *RerankRequest) GetQuery() string`

GetQuery returns the Query field if non-nil, zero value otherwise.

### GetQueryOk

`func (o *RerankRequest) GetQueryOk() (*string, bool)`

GetQueryOk returns a tuple with the Query field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuery

`func (o *RerankRequest) SetQuery(v string)`

SetQuery sets Query field to given value.


### GetDocuments

`func (o *RerankRequest) GetDocuments() []string`

GetDocuments returns the Documents field if non-nil, zero value otherwise.

### GetDocumentsOk

`func (o *RerankRequest) GetDocumentsOk() (*[]string, bool)`

GetDocumentsOk returns a tuple with the Documents field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocuments

`func (o *RerankRequest) SetDocuments(v []string)`

SetDocuments sets Documents field to given value.


### GetTopN

`func (o *RerankRequest) GetTopN() int32`

GetTopN returns the TopN field if non-nil, zero value otherwise.

### GetTopNOk

`func (o *RerankRequest) GetTopNOk() (*int32, bool)`

GetTopNOk returns a tuple with the TopN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTopN

`func (o *RerankRequest) SetTopN(v int32)`

SetTopN sets TopN field to given value.

### HasTopN

`func (o *RerankRequest) HasTopN() bool`

HasTopN returns a boolean if a field has been set.

### GetModel

`func (o *RerankRequest) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *RerankRequest) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *RerankRequest) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *RerankRequest) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetBudgetMs

`func (o *RerankRequest) GetBudgetMs() float32`

GetBudgetMs returns the BudgetMs field if non-nil, zero value otherwise.

### GetBudgetMsOk

`func (o *RerankRequest) GetBudgetMsOk() (*float32, bool)`

GetBudgetMsOk returns a tuple with the BudgetMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetMs

`func (o *RerankRequest) SetBudgetMs(v float32)`

SetBudgetMs sets BudgetMs field to given value.

### HasBudgetMs

`func (o *RerankRequest) HasBudgetMs() bool`

HasBudgetMs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


