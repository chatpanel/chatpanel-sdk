# KbNote

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Text** | **string** |  | 
**Cites** | Pointer to **[]string** |  | [optional] 
**By** | Pointer to **string** |  | [optional] 
**Status** | **string** |  | 
**At** | **int64** |  | 

## Methods

### NewKbNote

`func NewKbNote(id string, text string, status string, at int64, ) *KbNote`

NewKbNote instantiates a new KbNote object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbNoteWithDefaults

`func NewKbNoteWithDefaults() *KbNote`

NewKbNoteWithDefaults instantiates a new KbNote object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *KbNote) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *KbNote) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *KbNote) SetId(v string)`

SetId sets Id field to given value.


### GetText

`func (o *KbNote) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *KbNote) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *KbNote) SetText(v string)`

SetText sets Text field to given value.


### GetCites

`func (o *KbNote) GetCites() []string`

GetCites returns the Cites field if non-nil, zero value otherwise.

### GetCitesOk

`func (o *KbNote) GetCitesOk() (*[]string, bool)`

GetCitesOk returns a tuple with the Cites field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCites

`func (o *KbNote) SetCites(v []string)`

SetCites sets Cites field to given value.

### HasCites

`func (o *KbNote) HasCites() bool`

HasCites returns a boolean if a field has been set.

### GetBy

`func (o *KbNote) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *KbNote) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *KbNote) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *KbNote) HasBy() bool`

HasBy returns a boolean if a field has been set.

### GetStatus

`func (o *KbNote) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *KbNote) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *KbNote) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetAt

`func (o *KbNote) GetAt() int64`

GetAt returns the At field if non-nil, zero value otherwise.

### GetAtOk

`func (o *KbNote) GetAtOk() (*int64, bool)`

GetAtOk returns a tuple with the At field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAt

`func (o *KbNote) SetAt(v int64)`

SetAt sets At field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


