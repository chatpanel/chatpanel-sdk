# KbPassage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | &#x60;&lt;doc&gt;#&lt;n&gt;&#x60;, or &#x60;note:&lt;id&gt;&#x60;. | 
**Doc** | Pointer to **string** |  | [optional] 
**Title** | Pointer to **string** |  | [optional] 
**Kind** | Pointer to **string** |  | [optional] 
**Page** | Pointer to **int32** |  | [optional] 
**PageEnd** | Pointer to **int32** |  | [optional] 
**Section** | Pointer to **string** | The heading path, &#x60; › &#x60;-joined. | [optional] 
**Text** | **string** |  | 
**Chars** | Pointer to **int32** |  | [optional] 
**Score** | Pointer to **float32** | The fused rank score (RRF) — only its order means anything. | [optional] 
**Scores** | Pointer to **map[string]float32** | Each lane&#39;s own score (&#x60;text&#x60;, &#x60;vector&#x60;, &#x60;rerank&#x60;), comparable within one query. | [optional] 
**Rerank** | Pointer to **float32** |  | [optional] 
**Lanes** | Pointer to **[]string** |  | [optional] 
**Via** | Pointer to **[]string** | For a graph hit: the node(s) it was reached through. | [optional] 
**Cite** | Pointer to **string** | As the model is told to write it: &#x60;[report.pdf p.12]&#x60;. | [optional] 
**Status** | Pointer to **string** | A note&#39;s. | [optional] 
**Cites** | Pointer to **[]string** | A note&#39;s passage ids. | [optional] 

## Methods

### NewKbPassage

`func NewKbPassage(id string, text string, ) *KbPassage`

NewKbPassage instantiates a new KbPassage object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbPassageWithDefaults

`func NewKbPassageWithDefaults() *KbPassage`

NewKbPassageWithDefaults instantiates a new KbPassage object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *KbPassage) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *KbPassage) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *KbPassage) SetId(v string)`

SetId sets Id field to given value.


### GetDoc

`func (o *KbPassage) GetDoc() string`

GetDoc returns the Doc field if non-nil, zero value otherwise.

### GetDocOk

`func (o *KbPassage) GetDocOk() (*string, bool)`

GetDocOk returns a tuple with the Doc field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDoc

`func (o *KbPassage) SetDoc(v string)`

SetDoc sets Doc field to given value.

### HasDoc

`func (o *KbPassage) HasDoc() bool`

HasDoc returns a boolean if a field has been set.

### GetTitle

`func (o *KbPassage) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *KbPassage) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *KbPassage) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *KbPassage) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetKind

`func (o *KbPassage) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *KbPassage) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *KbPassage) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *KbPassage) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetPage

`func (o *KbPassage) GetPage() int32`

GetPage returns the Page field if non-nil, zero value otherwise.

### GetPageOk

`func (o *KbPassage) GetPageOk() (*int32, bool)`

GetPageOk returns a tuple with the Page field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPage

`func (o *KbPassage) SetPage(v int32)`

SetPage sets Page field to given value.

### HasPage

`func (o *KbPassage) HasPage() bool`

HasPage returns a boolean if a field has been set.

### GetPageEnd

`func (o *KbPassage) GetPageEnd() int32`

GetPageEnd returns the PageEnd field if non-nil, zero value otherwise.

### GetPageEndOk

`func (o *KbPassage) GetPageEndOk() (*int32, bool)`

GetPageEndOk returns a tuple with the PageEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPageEnd

`func (o *KbPassage) SetPageEnd(v int32)`

SetPageEnd sets PageEnd field to given value.

### HasPageEnd

`func (o *KbPassage) HasPageEnd() bool`

HasPageEnd returns a boolean if a field has been set.

### GetSection

`func (o *KbPassage) GetSection() string`

GetSection returns the Section field if non-nil, zero value otherwise.

### GetSectionOk

`func (o *KbPassage) GetSectionOk() (*string, bool)`

GetSectionOk returns a tuple with the Section field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSection

`func (o *KbPassage) SetSection(v string)`

SetSection sets Section field to given value.

### HasSection

`func (o *KbPassage) HasSection() bool`

HasSection returns a boolean if a field has been set.

### GetText

`func (o *KbPassage) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *KbPassage) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *KbPassage) SetText(v string)`

SetText sets Text field to given value.


### GetChars

`func (o *KbPassage) GetChars() int32`

GetChars returns the Chars field if non-nil, zero value otherwise.

### GetCharsOk

`func (o *KbPassage) GetCharsOk() (*int32, bool)`

GetCharsOk returns a tuple with the Chars field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChars

`func (o *KbPassage) SetChars(v int32)`

SetChars sets Chars field to given value.

### HasChars

`func (o *KbPassage) HasChars() bool`

HasChars returns a boolean if a field has been set.

### GetScore

`func (o *KbPassage) GetScore() float32`

GetScore returns the Score field if non-nil, zero value otherwise.

### GetScoreOk

`func (o *KbPassage) GetScoreOk() (*float32, bool)`

GetScoreOk returns a tuple with the Score field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScore

`func (o *KbPassage) SetScore(v float32)`

SetScore sets Score field to given value.

### HasScore

`func (o *KbPassage) HasScore() bool`

HasScore returns a boolean if a field has been set.

### GetScores

`func (o *KbPassage) GetScores() map[string]float32`

GetScores returns the Scores field if non-nil, zero value otherwise.

### GetScoresOk

`func (o *KbPassage) GetScoresOk() (*map[string]float32, bool)`

GetScoresOk returns a tuple with the Scores field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScores

`func (o *KbPassage) SetScores(v map[string]float32)`

SetScores sets Scores field to given value.

### HasScores

`func (o *KbPassage) HasScores() bool`

HasScores returns a boolean if a field has been set.

### GetRerank

`func (o *KbPassage) GetRerank() float32`

GetRerank returns the Rerank field if non-nil, zero value otherwise.

### GetRerankOk

`func (o *KbPassage) GetRerankOk() (*float32, bool)`

GetRerankOk returns a tuple with the Rerank field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRerank

`func (o *KbPassage) SetRerank(v float32)`

SetRerank sets Rerank field to given value.

### HasRerank

`func (o *KbPassage) HasRerank() bool`

HasRerank returns a boolean if a field has been set.

### GetLanes

`func (o *KbPassage) GetLanes() []string`

GetLanes returns the Lanes field if non-nil, zero value otherwise.

### GetLanesOk

`func (o *KbPassage) GetLanesOk() (*[]string, bool)`

GetLanesOk returns a tuple with the Lanes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanes

`func (o *KbPassage) SetLanes(v []string)`

SetLanes sets Lanes field to given value.

### HasLanes

`func (o *KbPassage) HasLanes() bool`

HasLanes returns a boolean if a field has been set.

### GetVia

`func (o *KbPassage) GetVia() []string`

GetVia returns the Via field if non-nil, zero value otherwise.

### GetViaOk

`func (o *KbPassage) GetViaOk() (*[]string, bool)`

GetViaOk returns a tuple with the Via field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVia

`func (o *KbPassage) SetVia(v []string)`

SetVia sets Via field to given value.

### HasVia

`func (o *KbPassage) HasVia() bool`

HasVia returns a boolean if a field has been set.

### GetCite

`func (o *KbPassage) GetCite() string`

GetCite returns the Cite field if non-nil, zero value otherwise.

### GetCiteOk

`func (o *KbPassage) GetCiteOk() (*string, bool)`

GetCiteOk returns a tuple with the Cite field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCite

`func (o *KbPassage) SetCite(v string)`

SetCite sets Cite field to given value.

### HasCite

`func (o *KbPassage) HasCite() bool`

HasCite returns a boolean if a field has been set.

### GetStatus

`func (o *KbPassage) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *KbPassage) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *KbPassage) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *KbPassage) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetCites

`func (o *KbPassage) GetCites() []string`

GetCites returns the Cites field if non-nil, zero value otherwise.

### GetCitesOk

`func (o *KbPassage) GetCitesOk() (*[]string, bool)`

GetCitesOk returns a tuple with the Cites field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCites

`func (o *KbPassage) SetCites(v []string)`

SetCites sets Cites field to given value.

### HasCites

`func (o *KbPassage) HasCites() bool`

HasCites returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


