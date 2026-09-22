# AudioSpeechRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Input** | **string** |  | 
**Voice** | Pointer to **string** | A local voice id, or the remote provider’s; the configured default when absent. | [optional] 
**Speed** | Pointer to **float32** |  | [optional] [default to 1]
**ResponseFormat** | Pointer to **string** | WAV is what the local engine makes. | [optional] [default to "wav"]

## Methods

### NewAudioSpeechRequest

`func NewAudioSpeechRequest(input string, ) *AudioSpeechRequest`

NewAudioSpeechRequest instantiates a new AudioSpeechRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAudioSpeechRequestWithDefaults

`func NewAudioSpeechRequestWithDefaults() *AudioSpeechRequest`

NewAudioSpeechRequestWithDefaults instantiates a new AudioSpeechRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInput

`func (o *AudioSpeechRequest) GetInput() string`

GetInput returns the Input field if non-nil, zero value otherwise.

### GetInputOk

`func (o *AudioSpeechRequest) GetInputOk() (*string, bool)`

GetInputOk returns a tuple with the Input field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInput

`func (o *AudioSpeechRequest) SetInput(v string)`

SetInput sets Input field to given value.


### GetVoice

`func (o *AudioSpeechRequest) GetVoice() string`

GetVoice returns the Voice field if non-nil, zero value otherwise.

### GetVoiceOk

`func (o *AudioSpeechRequest) GetVoiceOk() (*string, bool)`

GetVoiceOk returns a tuple with the Voice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVoice

`func (o *AudioSpeechRequest) SetVoice(v string)`

SetVoice sets Voice field to given value.

### HasVoice

`func (o *AudioSpeechRequest) HasVoice() bool`

HasVoice returns a boolean if a field has been set.

### GetSpeed

`func (o *AudioSpeechRequest) GetSpeed() float32`

GetSpeed returns the Speed field if non-nil, zero value otherwise.

### GetSpeedOk

`func (o *AudioSpeechRequest) GetSpeedOk() (*float32, bool)`

GetSpeedOk returns a tuple with the Speed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpeed

`func (o *AudioSpeechRequest) SetSpeed(v float32)`

SetSpeed sets Speed field to given value.

### HasSpeed

`func (o *AudioSpeechRequest) HasSpeed() bool`

HasSpeed returns a boolean if a field has been set.

### GetResponseFormat

`func (o *AudioSpeechRequest) GetResponseFormat() string`

GetResponseFormat returns the ResponseFormat field if non-nil, zero value otherwise.

### GetResponseFormatOk

`func (o *AudioSpeechRequest) GetResponseFormatOk() (*string, bool)`

GetResponseFormatOk returns a tuple with the ResponseFormat field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponseFormat

`func (o *AudioSpeechRequest) SetResponseFormat(v string)`

SetResponseFormat sets ResponseFormat field to given value.

### HasResponseFormat

`func (o *AudioSpeechRequest) HasResponseFormat() bool`

HasResponseFormat returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


