# Transcription

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **string** |  | 
**Task** | Pointer to **string** | verbose_json only | [optional] 
**Language** | Pointer to **string** | verbose_json only | [optional] 
**Duration** | Pointer to **float32** | Seconds of audio; verbose_json only. | [optional] 
**Provider** | Pointer to **string** | Who transcribed; verbose_json only. | [optional] 
**TookMs** | Pointer to **int32** |  | [optional] 
**Segments** | Pointer to [**[]TranscriptionSegmentsInner**](TranscriptionSegmentsInner.md) | verbose_json only. | [optional] 

## Methods

### NewTranscription

`func NewTranscription(text string, ) *Transcription`

NewTranscription instantiates a new Transcription object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTranscriptionWithDefaults

`func NewTranscriptionWithDefaults() *Transcription`

NewTranscriptionWithDefaults instantiates a new Transcription object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetText

`func (o *Transcription) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *Transcription) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *Transcription) SetText(v string)`

SetText sets Text field to given value.


### GetTask

`func (o *Transcription) GetTask() string`

GetTask returns the Task field if non-nil, zero value otherwise.

### GetTaskOk

`func (o *Transcription) GetTaskOk() (*string, bool)`

GetTaskOk returns a tuple with the Task field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTask

`func (o *Transcription) SetTask(v string)`

SetTask sets Task field to given value.

### HasTask

`func (o *Transcription) HasTask() bool`

HasTask returns a boolean if a field has been set.

### GetLanguage

`func (o *Transcription) GetLanguage() string`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *Transcription) GetLanguageOk() (*string, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *Transcription) SetLanguage(v string)`

SetLanguage sets Language field to given value.

### HasLanguage

`func (o *Transcription) HasLanguage() bool`

HasLanguage returns a boolean if a field has been set.

### GetDuration

`func (o *Transcription) GetDuration() float32`

GetDuration returns the Duration field if non-nil, zero value otherwise.

### GetDurationOk

`func (o *Transcription) GetDurationOk() (*float32, bool)`

GetDurationOk returns a tuple with the Duration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDuration

`func (o *Transcription) SetDuration(v float32)`

SetDuration sets Duration field to given value.

### HasDuration

`func (o *Transcription) HasDuration() bool`

HasDuration returns a boolean if a field has been set.

### GetProvider

`func (o *Transcription) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *Transcription) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *Transcription) SetProvider(v string)`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *Transcription) HasProvider() bool`

HasProvider returns a boolean if a field has been set.

### GetTookMs

`func (o *Transcription) GetTookMs() int32`

GetTookMs returns the TookMs field if non-nil, zero value otherwise.

### GetTookMsOk

`func (o *Transcription) GetTookMsOk() (*int32, bool)`

GetTookMsOk returns a tuple with the TookMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTookMs

`func (o *Transcription) SetTookMs(v int32)`

SetTookMs sets TookMs field to given value.

### HasTookMs

`func (o *Transcription) HasTookMs() bool`

HasTookMs returns a boolean if a field has been set.

### GetSegments

`func (o *Transcription) GetSegments() []TranscriptionSegmentsInner`

GetSegments returns the Segments field if non-nil, zero value otherwise.

### GetSegmentsOk

`func (o *Transcription) GetSegmentsOk() (*[]TranscriptionSegmentsInner, bool)`

GetSegmentsOk returns a tuple with the Segments field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSegments

`func (o *Transcription) SetSegments(v []TranscriptionSegmentsInner)`

SetSegments sets Segments field to given value.

### HasSegments

`func (o *Transcription) HasSegments() bool`

HasSegments returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


