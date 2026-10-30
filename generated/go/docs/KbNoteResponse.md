# KbNoteResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Note** | [**KbNote**](KbNote.md) |  | 
**Removed** | Pointer to **bool** |  | [optional] 

## Methods

### NewKbNoteResponse

`func NewKbNoteResponse(note KbNote, ) *KbNoteResponse`

NewKbNoteResponse instantiates a new KbNoteResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbNoteResponseWithDefaults

`func NewKbNoteResponseWithDefaults() *KbNoteResponse`

NewKbNoteResponseWithDefaults instantiates a new KbNoteResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNote

`func (o *KbNoteResponse) GetNote() KbNote`

GetNote returns the Note field if non-nil, zero value otherwise.

### GetNoteOk

`func (o *KbNoteResponse) GetNoteOk() (*KbNote, bool)`

GetNoteOk returns a tuple with the Note field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNote

`func (o *KbNoteResponse) SetNote(v KbNote)`

SetNote sets Note field to given value.


### GetRemoved

`func (o *KbNoteResponse) GetRemoved() bool`

GetRemoved returns the Removed field if non-nil, zero value otherwise.

### GetRemovedOk

`func (o *KbNoteResponse) GetRemovedOk() (*bool, bool)`

GetRemovedOk returns a tuple with the Removed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemoved

`func (o *KbNoteResponse) SetRemoved(v bool)`

SetRemoved sets Removed field to given value.

### HasRemoved

`func (o *KbNoteResponse) HasRemoved() bool`

HasRemoved returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


