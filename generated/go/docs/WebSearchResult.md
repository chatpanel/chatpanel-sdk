# WebSearchResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Rank** | **int32** |  | 
**Url** | **string** |  | 
**Title** | **string** |  | 
**Snippet** | **string** |  | 
**Engine** | Pointer to **string** | The engine that produced it (SearXNG: the first of &#x60;engines&#x60;; serp: the results page asked). | [optional] 
**Engines** | Pointer to **[]string** | SearXNG: every engine that returned it. | [optional] 
**Score** | Pointer to **float32** | SearXNG&#39;s fused score. | [optional] 
**PublishedDate** | Pointer to **string** |  | [optional] 
**Read** | Pointer to [**ReadResponse**](ReadResponse.md) | Present for the top &#x60;read&#x60; results. | [optional] 

## Methods

### NewWebSearchResult

`func NewWebSearchResult(rank int32, url string, title string, snippet string, ) *WebSearchResult`

NewWebSearchResult instantiates a new WebSearchResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewWebSearchResultWithDefaults

`func NewWebSearchResultWithDefaults() *WebSearchResult`

NewWebSearchResultWithDefaults instantiates a new WebSearchResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRank

`func (o *WebSearchResult) GetRank() int32`

GetRank returns the Rank field if non-nil, zero value otherwise.

### GetRankOk

`func (o *WebSearchResult) GetRankOk() (*int32, bool)`

GetRankOk returns a tuple with the Rank field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRank

`func (o *WebSearchResult) SetRank(v int32)`

SetRank sets Rank field to given value.


### GetUrl

`func (o *WebSearchResult) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *WebSearchResult) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *WebSearchResult) SetUrl(v string)`

SetUrl sets Url field to given value.


### GetTitle

`func (o *WebSearchResult) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *WebSearchResult) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *WebSearchResult) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetSnippet

`func (o *WebSearchResult) GetSnippet() string`

GetSnippet returns the Snippet field if non-nil, zero value otherwise.

### GetSnippetOk

`func (o *WebSearchResult) GetSnippetOk() (*string, bool)`

GetSnippetOk returns a tuple with the Snippet field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSnippet

`func (o *WebSearchResult) SetSnippet(v string)`

SetSnippet sets Snippet field to given value.


### GetEngine

`func (o *WebSearchResult) GetEngine() string`

GetEngine returns the Engine field if non-nil, zero value otherwise.

### GetEngineOk

`func (o *WebSearchResult) GetEngineOk() (*string, bool)`

GetEngineOk returns a tuple with the Engine field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEngine

`func (o *WebSearchResult) SetEngine(v string)`

SetEngine sets Engine field to given value.

### HasEngine

`func (o *WebSearchResult) HasEngine() bool`

HasEngine returns a boolean if a field has been set.

### GetEngines

`func (o *WebSearchResult) GetEngines() []string`

GetEngines returns the Engines field if non-nil, zero value otherwise.

### GetEnginesOk

`func (o *WebSearchResult) GetEnginesOk() (*[]string, bool)`

GetEnginesOk returns a tuple with the Engines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEngines

`func (o *WebSearchResult) SetEngines(v []string)`

SetEngines sets Engines field to given value.

### HasEngines

`func (o *WebSearchResult) HasEngines() bool`

HasEngines returns a boolean if a field has been set.

### GetScore

`func (o *WebSearchResult) GetScore() float32`

GetScore returns the Score field if non-nil, zero value otherwise.

### GetScoreOk

`func (o *WebSearchResult) GetScoreOk() (*float32, bool)`

GetScoreOk returns a tuple with the Score field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScore

`func (o *WebSearchResult) SetScore(v float32)`

SetScore sets Score field to given value.

### HasScore

`func (o *WebSearchResult) HasScore() bool`

HasScore returns a boolean if a field has been set.

### GetPublishedDate

`func (o *WebSearchResult) GetPublishedDate() string`

GetPublishedDate returns the PublishedDate field if non-nil, zero value otherwise.

### GetPublishedDateOk

`func (o *WebSearchResult) GetPublishedDateOk() (*string, bool)`

GetPublishedDateOk returns a tuple with the PublishedDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublishedDate

`func (o *WebSearchResult) SetPublishedDate(v string)`

SetPublishedDate sets PublishedDate field to given value.

### HasPublishedDate

`func (o *WebSearchResult) HasPublishedDate() bool`

HasPublishedDate returns a boolean if a field has been set.

### GetRead

`func (o *WebSearchResult) GetRead() ReadResponse`

GetRead returns the Read field if non-nil, zero value otherwise.

### GetReadOk

`func (o *WebSearchResult) GetReadOk() (*ReadResponse, bool)`

GetReadOk returns a tuple with the Read field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRead

`func (o *WebSearchResult) SetRead(v ReadResponse)`

SetRead sets Read field to given value.

### HasRead

`func (o *WebSearchResult) HasRead() bool`

HasRead returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


