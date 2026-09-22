# TranscriptionSegmentsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Start** | **float32** |  | 
**End** | **float32** |  | 
**Text** | **string** |  | 
**Speaker** | Pointer to **string** | With diarize&#x3D;true. | [optional] 

## Methods

### NewTranscriptionSegmentsInner

`func NewTranscriptionSegmentsInner(id int32, start float32, end float32, text string, ) *TranscriptionSegmentsInner`

NewTranscriptionSegmentsInner instantiates a new TranscriptionSegmentsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTranscriptionSegmentsInnerWithDefaults

`func NewTranscriptionSegmentsInnerWithDefaults() *TranscriptionSegmentsInner`

NewTranscriptionSegmentsInnerWithDefaults instantiates a new TranscriptionSegmentsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *TranscriptionSegmentsInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *TranscriptionSegmentsInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *TranscriptionSegmentsInner) SetId(v int32)`

SetId sets Id field to given value.


### GetStart

`func (o *TranscriptionSegmentsInner) GetStart() float32`

GetStart returns the Start field if non-nil, zero value otherwise.

### GetStartOk

`func (o *TranscriptionSegmentsInner) GetStartOk() (*float32, bool)`

GetStartOk returns a tuple with the Start field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStart

`func (o *TranscriptionSegmentsInner) SetStart(v float32)`

SetStart sets Start field to given value.


### GetEnd

`func (o *TranscriptionSegmentsInner) GetEnd() float32`

GetEnd returns the End field if non-nil, zero value otherwise.

### GetEndOk

`func (o *TranscriptionSegmentsInner) GetEndOk() (*float32, bool)`

GetEndOk returns a tuple with the End field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnd

`func (o *TranscriptionSegmentsInner) SetEnd(v float32)`

SetEnd sets End field to given value.


### GetText

`func (o *TranscriptionSegmentsInner) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *TranscriptionSegmentsInner) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *TranscriptionSegmentsInner) SetText(v string)`

SetText sets Text field to given value.


### GetSpeaker

`func (o *TranscriptionSegmentsInner) GetSpeaker() string`

GetSpeaker returns the Speaker field if non-nil, zero value otherwise.

### GetSpeakerOk

`func (o *TranscriptionSegmentsInner) GetSpeakerOk() (*string, bool)`

GetSpeakerOk returns a tuple with the Speaker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpeaker

`func (o *TranscriptionSegmentsInner) SetSpeaker(v string)`

SetSpeaker sets Speaker field to given value.

### HasSpeaker

`func (o *TranscriptionSegmentsInner) HasSpeaker() bool`

HasSpeaker returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


