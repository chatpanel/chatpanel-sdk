# WebSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Q** | **string** |  | 
**Limit** | Pointer to **int32** |  | [optional] [default to 8]
**Lang** | Pointer to **string** | en or en-US; honoured by SearXNG. | [optional] 
**Site** | Pointer to **string** | A hostname — the site: operator. | [optional] 
**Freshness** | Pointer to **string** | Honoured by SearXNG (time_range); week maps to month. | [optional] 
**Read** | Pointer to **int32** | Read the top N results in this request. | [optional] [default to 0]
**Provider** | Pointer to **string** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;search&#x60;; 404 otherwise. | [optional] 
**BudgetMs** | Pointer to **float32** |  | [optional] 

## Methods

### NewWebSearchRequest

`func NewWebSearchRequest(q string, ) *WebSearchRequest`

NewWebSearchRequest instantiates a new WebSearchRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewWebSearchRequestWithDefaults

`func NewWebSearchRequestWithDefaults() *WebSearchRequest`

NewWebSearchRequestWithDefaults instantiates a new WebSearchRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetQ

`func (o *WebSearchRequest) GetQ() string`

GetQ returns the Q field if non-nil, zero value otherwise.

### GetQOk

`func (o *WebSearchRequest) GetQOk() (*string, bool)`

GetQOk returns a tuple with the Q field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQ

`func (o *WebSearchRequest) SetQ(v string)`

SetQ sets Q field to given value.


### GetLimit

`func (o *WebSearchRequest) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *WebSearchRequest) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *WebSearchRequest) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *WebSearchRequest) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetLang

`func (o *WebSearchRequest) GetLang() string`

GetLang returns the Lang field if non-nil, zero value otherwise.

### GetLangOk

`func (o *WebSearchRequest) GetLangOk() (*string, bool)`

GetLangOk returns a tuple with the Lang field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLang

`func (o *WebSearchRequest) SetLang(v string)`

SetLang sets Lang field to given value.

### HasLang

`func (o *WebSearchRequest) HasLang() bool`

HasLang returns a boolean if a field has been set.

### GetSite

`func (o *WebSearchRequest) GetSite() string`

GetSite returns the Site field if non-nil, zero value otherwise.

### GetSiteOk

`func (o *WebSearchRequest) GetSiteOk() (*string, bool)`

GetSiteOk returns a tuple with the Site field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSite

`func (o *WebSearchRequest) SetSite(v string)`

SetSite sets Site field to given value.

### HasSite

`func (o *WebSearchRequest) HasSite() bool`

HasSite returns a boolean if a field has been set.

### GetFreshness

`func (o *WebSearchRequest) GetFreshness() string`

GetFreshness returns the Freshness field if non-nil, zero value otherwise.

### GetFreshnessOk

`func (o *WebSearchRequest) GetFreshnessOk() (*string, bool)`

GetFreshnessOk returns a tuple with the Freshness field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFreshness

`func (o *WebSearchRequest) SetFreshness(v string)`

SetFreshness sets Freshness field to given value.

### HasFreshness

`func (o *WebSearchRequest) HasFreshness() bool`

HasFreshness returns a boolean if a field has been set.

### GetRead

`func (o *WebSearchRequest) GetRead() int32`

GetRead returns the Read field if non-nil, zero value otherwise.

### GetReadOk

`func (o *WebSearchRequest) GetReadOk() (*int32, bool)`

GetReadOk returns a tuple with the Read field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRead

`func (o *WebSearchRequest) SetRead(v int32)`

SetRead sets Read field to given value.

### HasRead

`func (o *WebSearchRequest) HasRead() bool`

HasRead returns a boolean if a field has been set.

### GetProvider

`func (o *WebSearchRequest) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *WebSearchRequest) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *WebSearchRequest) SetProvider(v string)`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *WebSearchRequest) HasProvider() bool`

HasProvider returns a boolean if a field has been set.

### GetBudgetMs

`func (o *WebSearchRequest) GetBudgetMs() float32`

GetBudgetMs returns the BudgetMs field if non-nil, zero value otherwise.

### GetBudgetMsOk

`func (o *WebSearchRequest) GetBudgetMsOk() (*float32, bool)`

GetBudgetMsOk returns a tuple with the BudgetMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetMs

`func (o *WebSearchRequest) SetBudgetMs(v float32)`

SetBudgetMs sets BudgetMs field to given value.

### HasBudgetMs

`func (o *WebSearchRequest) HasBudgetMs() bool`

HasBudgetMs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


