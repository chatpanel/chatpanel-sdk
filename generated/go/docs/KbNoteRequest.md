# KbNoteRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **string** |  | 
**Cites** | Pointer to **[]string** |  | [optional] 
**Status** | Pointer to **string** | &#x60;accepted&#x60; is honoured from a caller with the token only. | [optional] 
**By** | Pointer to **string** |  | [optional] 

## Methods

### NewKbNoteRequest

`func NewKbNoteRequest(text string, ) *KbNoteRequest`

NewKbNoteRequest instantiates a new KbNoteRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbNoteRequestWithDefaults

`func NewKbNoteRequestWithDefaults() *KbNoteRequest`

NewKbNoteRequestWithDefaults instantiates a new KbNoteRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetText

`func (o *KbNoteRequest) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *KbNoteRequest) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *KbNoteRequest) SetText(v string)`

SetText sets Text field to given value.


### GetCites

`func (o *KbNoteRequest) GetCites() []string`

GetCites returns the Cites field if non-nil, zero value otherwise.

### GetCitesOk

`func (o *KbNoteRequest) GetCitesOk() (*[]string, bool)`

GetCitesOk returns a tuple with the Cites field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCites

`func (o *KbNoteRequest) SetCites(v []string)`

SetCites sets Cites field to given value.

### HasCites

`func (o *KbNoteRequest) HasCites() bool`

HasCites returns a boolean if a field has been set.

### GetStatus

`func (o *KbNoteRequest) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *KbNoteRequest) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *KbNoteRequest) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *KbNoteRequest) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetBy

`func (o *KbNoteRequest) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *KbNoteRequest) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *KbNoteRequest) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *KbNoteRequest) HasBy() bool`

HasBy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


