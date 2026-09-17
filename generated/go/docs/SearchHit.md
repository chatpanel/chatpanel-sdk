# SearchHit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Score** | Pointer to **float32** |  | [optional] 
**Title** | Pointer to **string** |  | [optional] 
**Type** | Pointer to [**RecordType**](RecordType.md) |  | [optional] 
**Date** | Pointer to **int64** |  | [optional] 
**Snippet** | Pointer to **string** |  | [optional] 

## Methods

### NewSearchHit

`func NewSearchHit(id string, ) *SearchHit`

NewSearchHit instantiates a new SearchHit object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchHitWithDefaults

`func NewSearchHitWithDefaults() *SearchHit`

NewSearchHitWithDefaults instantiates a new SearchHit object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SearchHit) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchHit) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchHit) SetId(v string)`

SetId sets Id field to given value.


### GetScore

`func (o *SearchHit) GetScore() float32`

GetScore returns the Score field if non-nil, zero value otherwise.

### GetScoreOk

`func (o *SearchHit) GetScoreOk() (*float32, bool)`

GetScoreOk returns a tuple with the Score field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScore

`func (o *SearchHit) SetScore(v float32)`

SetScore sets Score field to given value.

### HasScore

`func (o *SearchHit) HasScore() bool`

HasScore returns a boolean if a field has been set.

### GetTitle

`func (o *SearchHit) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *SearchHit) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *SearchHit) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *SearchHit) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetType

`func (o *SearchHit) GetType() RecordType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *SearchHit) GetTypeOk() (*RecordType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *SearchHit) SetType(v RecordType)`

SetType sets Type field to given value.

### HasType

`func (o *SearchHit) HasType() bool`

HasType returns a boolean if a field has been set.

### GetDate

`func (o *SearchHit) GetDate() int64`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *SearchHit) GetDateOk() (*int64, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *SearchHit) SetDate(v int64)`

SetDate sets Date field to given value.

### HasDate

`func (o *SearchHit) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetSnippet

`func (o *SearchHit) GetSnippet() string`

GetSnippet returns the Snippet field if non-nil, zero value otherwise.

### GetSnippetOk

`func (o *SearchHit) GetSnippetOk() (*string, bool)`

GetSnippetOk returns a tuple with the Snippet field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSnippet

`func (o *SearchHit) SetSnippet(v string)`

SetSnippet sets Snippet field to given value.

### HasSnippet

`func (o *SearchHit) HasSnippet() bool`

HasSnippet returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


