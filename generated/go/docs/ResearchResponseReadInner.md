# ResearchResponseReadInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Title** | Pointer to **string** |  | [optional] 
**Date** | Pointer to **int64** |  | [optional] 
**Parts** | Pointer to **int32** |  | [optional] 
**Of** | Pointer to **int32** |  | [optional] 
**Speakers** | Pointer to [**[]ResearchResponseReadInnerSpeakersInner**](ResearchResponseReadInnerSpeakersInner.md) |  | [optional] 
**Notes** | Pointer to **[]string** |  | [optional] 

## Methods

### NewResearchResponseReadInner

`func NewResearchResponseReadInner(id string, ) *ResearchResponseReadInner`

NewResearchResponseReadInner instantiates a new ResearchResponseReadInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResearchResponseReadInnerWithDefaults

`func NewResearchResponseReadInnerWithDefaults() *ResearchResponseReadInner`

NewResearchResponseReadInnerWithDefaults instantiates a new ResearchResponseReadInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ResearchResponseReadInner) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ResearchResponseReadInner) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ResearchResponseReadInner) SetId(v string)`

SetId sets Id field to given value.


### GetTitle

`func (o *ResearchResponseReadInner) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *ResearchResponseReadInner) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *ResearchResponseReadInner) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *ResearchResponseReadInner) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetDate

`func (o *ResearchResponseReadInner) GetDate() int64`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *ResearchResponseReadInner) GetDateOk() (*int64, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *ResearchResponseReadInner) SetDate(v int64)`

SetDate sets Date field to given value.

### HasDate

`func (o *ResearchResponseReadInner) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetParts

`func (o *ResearchResponseReadInner) GetParts() int32`

GetParts returns the Parts field if non-nil, zero value otherwise.

### GetPartsOk

`func (o *ResearchResponseReadInner) GetPartsOk() (*int32, bool)`

GetPartsOk returns a tuple with the Parts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParts

`func (o *ResearchResponseReadInner) SetParts(v int32)`

SetParts sets Parts field to given value.

### HasParts

`func (o *ResearchResponseReadInner) HasParts() bool`

HasParts returns a boolean if a field has been set.

### GetOf

`func (o *ResearchResponseReadInner) GetOf() int32`

GetOf returns the Of field if non-nil, zero value otherwise.

### GetOfOk

`func (o *ResearchResponseReadInner) GetOfOk() (*int32, bool)`

GetOfOk returns a tuple with the Of field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOf

`func (o *ResearchResponseReadInner) SetOf(v int32)`

SetOf sets Of field to given value.

### HasOf

`func (o *ResearchResponseReadInner) HasOf() bool`

HasOf returns a boolean if a field has been set.

### GetSpeakers

`func (o *ResearchResponseReadInner) GetSpeakers() []ResearchResponseReadInnerSpeakersInner`

GetSpeakers returns the Speakers field if non-nil, zero value otherwise.

### GetSpeakersOk

`func (o *ResearchResponseReadInner) GetSpeakersOk() (*[]ResearchResponseReadInnerSpeakersInner, bool)`

GetSpeakersOk returns a tuple with the Speakers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpeakers

`func (o *ResearchResponseReadInner) SetSpeakers(v []ResearchResponseReadInnerSpeakersInner)`

SetSpeakers sets Speakers field to given value.

### HasSpeakers

`func (o *ResearchResponseReadInner) HasSpeakers() bool`

HasSpeakers returns a boolean if a field has been set.

### GetNotes

`func (o *ResearchResponseReadInner) GetNotes() []string`

GetNotes returns the Notes field if non-nil, zero value otherwise.

### GetNotesOk

`func (o *ResearchResponseReadInner) GetNotesOk() (*[]string, bool)`

GetNotesOk returns a tuple with the Notes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNotes

`func (o *ResearchResponseReadInner) SetNotes(v []string)`

SetNotes sets Notes field to given value.

### HasNotes

`func (o *ResearchResponseReadInner) HasNotes() bool`

HasNotes returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


