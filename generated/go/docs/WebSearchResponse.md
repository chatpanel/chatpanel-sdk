# WebSearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**[]WebSearchResult**](WebSearchResult.md) |  | 
**Answers** | Pointer to **[]string** | SearXNG&#39;s direct answers, when it had any. | [optional] 
**Suggestions** | Pointer to **[]string** |  | [optional] 
**Engines** | Pointer to **[]string** | What was actually asked. | [optional] 
**Unresponsive** | Pointer to **[]string** | SearXNG engines that did not answer. | [optional] 
**Redacted** | Pointer to **bool** | Layer-1 redaction removed something from the query. | [optional] 
**Query** | Pointer to **string** | The query as sent, when &#x60;redacted&#x60;. | [optional] 
**Provider** | **string** |  | 
**Ms** | **float32** |  | 

## Methods

### NewWebSearchResponse

`func NewWebSearchResponse(results []WebSearchResult, provider string, ms float32, ) *WebSearchResponse`

NewWebSearchResponse instantiates a new WebSearchResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewWebSearchResponseWithDefaults

`func NewWebSearchResponseWithDefaults() *WebSearchResponse`

NewWebSearchResponseWithDefaults instantiates a new WebSearchResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResults

`func (o *WebSearchResponse) GetResults() []WebSearchResult`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *WebSearchResponse) GetResultsOk() (*[]WebSearchResult, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *WebSearchResponse) SetResults(v []WebSearchResult)`

SetResults sets Results field to given value.


### GetAnswers

`func (o *WebSearchResponse) GetAnswers() []string`

GetAnswers returns the Answers field if non-nil, zero value otherwise.

### GetAnswersOk

`func (o *WebSearchResponse) GetAnswersOk() (*[]string, bool)`

GetAnswersOk returns a tuple with the Answers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnswers

`func (o *WebSearchResponse) SetAnswers(v []string)`

SetAnswers sets Answers field to given value.

### HasAnswers

`func (o *WebSearchResponse) HasAnswers() bool`

HasAnswers returns a boolean if a field has been set.

### GetSuggestions

`func (o *WebSearchResponse) GetSuggestions() []string`

GetSuggestions returns the Suggestions field if non-nil, zero value otherwise.

### GetSuggestionsOk

`func (o *WebSearchResponse) GetSuggestionsOk() (*[]string, bool)`

GetSuggestionsOk returns a tuple with the Suggestions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuggestions

`func (o *WebSearchResponse) SetSuggestions(v []string)`

SetSuggestions sets Suggestions field to given value.

### HasSuggestions

`func (o *WebSearchResponse) HasSuggestions() bool`

HasSuggestions returns a boolean if a field has been set.

### GetEngines

`func (o *WebSearchResponse) GetEngines() []string`

GetEngines returns the Engines field if non-nil, zero value otherwise.

### GetEnginesOk

`func (o *WebSearchResponse) GetEnginesOk() (*[]string, bool)`

GetEnginesOk returns a tuple with the Engines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEngines

`func (o *WebSearchResponse) SetEngines(v []string)`

SetEngines sets Engines field to given value.

### HasEngines

`func (o *WebSearchResponse) HasEngines() bool`

HasEngines returns a boolean if a field has been set.

### GetUnresponsive

`func (o *WebSearchResponse) GetUnresponsive() []string`

GetUnresponsive returns the Unresponsive field if non-nil, zero value otherwise.

### GetUnresponsiveOk

`func (o *WebSearchResponse) GetUnresponsiveOk() (*[]string, bool)`

GetUnresponsiveOk returns a tuple with the Unresponsive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnresponsive

`func (o *WebSearchResponse) SetUnresponsive(v []string)`

SetUnresponsive sets Unresponsive field to given value.

### HasUnresponsive

`func (o *WebSearchResponse) HasUnresponsive() bool`

HasUnresponsive returns a boolean if a field has been set.

### GetRedacted

`func (o *WebSearchResponse) GetRedacted() bool`

GetRedacted returns the Redacted field if non-nil, zero value otherwise.

### GetRedactedOk

`func (o *WebSearchResponse) GetRedactedOk() (*bool, bool)`

GetRedactedOk returns a tuple with the Redacted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedacted

`func (o *WebSearchResponse) SetRedacted(v bool)`

SetRedacted sets Redacted field to given value.

### HasRedacted

`func (o *WebSearchResponse) HasRedacted() bool`

HasRedacted returns a boolean if a field has been set.

### GetQuery

`func (o *WebSearchResponse) GetQuery() string`

GetQuery returns the Query field if non-nil, zero value otherwise.

### GetQueryOk

`func (o *WebSearchResponse) GetQueryOk() (*string, bool)`

GetQueryOk returns a tuple with the Query field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuery

`func (o *WebSearchResponse) SetQuery(v string)`

SetQuery sets Query field to given value.

### HasQuery

`func (o *WebSearchResponse) HasQuery() bool`

HasQuery returns a boolean if a field has been set.

### GetProvider

`func (o *WebSearchResponse) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *WebSearchResponse) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *WebSearchResponse) SetProvider(v string)`

SetProvider sets Provider field to given value.


### GetMs

`func (o *WebSearchResponse) GetMs() float32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *WebSearchResponse) GetMsOk() (*float32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *WebSearchResponse) SetMs(v float32)`

SetMs sets Ms field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


