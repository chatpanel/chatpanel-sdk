# TeamsAnswerRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ThreadId** | **string** |  | 
**Text** | **string** |  | 
**By** | Pointer to **string** |  | [optional] [default to "person"]

## Methods

### NewTeamsAnswerRequest

`func NewTeamsAnswerRequest(threadId string, text string, ) *TeamsAnswerRequest`

NewTeamsAnswerRequest instantiates a new TeamsAnswerRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTeamsAnswerRequestWithDefaults

`func NewTeamsAnswerRequestWithDefaults() *TeamsAnswerRequest`

NewTeamsAnswerRequestWithDefaults instantiates a new TeamsAnswerRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetThreadId

`func (o *TeamsAnswerRequest) GetThreadId() string`

GetThreadId returns the ThreadId field if non-nil, zero value otherwise.

### GetThreadIdOk

`func (o *TeamsAnswerRequest) GetThreadIdOk() (*string, bool)`

GetThreadIdOk returns a tuple with the ThreadId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetThreadId

`func (o *TeamsAnswerRequest) SetThreadId(v string)`

SetThreadId sets ThreadId field to given value.


### GetText

`func (o *TeamsAnswerRequest) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *TeamsAnswerRequest) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *TeamsAnswerRequest) SetText(v string)`

SetText sets Text field to given value.


### GetBy

`func (o *TeamsAnswerRequest) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *TeamsAnswerRequest) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *TeamsAnswerRequest) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *TeamsAnswerRequest) HasBy() bool`

HasBy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


