# TeamsPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ThreadId** | **string** |  | 
**Text** | **string** |  | 
**Kind** | Pointer to **string** |  | [optional] 
**ReplyTo** | Pointer to **string** |  | [optional] 
**By** | Pointer to **string** |  | [optional] [default to "person"]

## Methods

### NewTeamsPostRequest

`func NewTeamsPostRequest(threadId string, text string, ) *TeamsPostRequest`

NewTeamsPostRequest instantiates a new TeamsPostRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTeamsPostRequestWithDefaults

`func NewTeamsPostRequestWithDefaults() *TeamsPostRequest`

NewTeamsPostRequestWithDefaults instantiates a new TeamsPostRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetThreadId

`func (o *TeamsPostRequest) GetThreadId() string`

GetThreadId returns the ThreadId field if non-nil, zero value otherwise.

### GetThreadIdOk

`func (o *TeamsPostRequest) GetThreadIdOk() (*string, bool)`

GetThreadIdOk returns a tuple with the ThreadId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetThreadId

`func (o *TeamsPostRequest) SetThreadId(v string)`

SetThreadId sets ThreadId field to given value.


### GetText

`func (o *TeamsPostRequest) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *TeamsPostRequest) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *TeamsPostRequest) SetText(v string)`

SetText sets Text field to given value.


### GetKind

`func (o *TeamsPostRequest) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *TeamsPostRequest) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *TeamsPostRequest) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *TeamsPostRequest) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetReplyTo

`func (o *TeamsPostRequest) GetReplyTo() string`

GetReplyTo returns the ReplyTo field if non-nil, zero value otherwise.

### GetReplyToOk

`func (o *TeamsPostRequest) GetReplyToOk() (*string, bool)`

GetReplyToOk returns a tuple with the ReplyTo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReplyTo

`func (o *TeamsPostRequest) SetReplyTo(v string)`

SetReplyTo sets ReplyTo field to given value.

### HasReplyTo

`func (o *TeamsPostRequest) HasReplyTo() bool`

HasReplyTo returns a boolean if a field has been set.

### GetBy

`func (o *TeamsPostRequest) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *TeamsPostRequest) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *TeamsPostRequest) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *TeamsPostRequest) HasBy() bool`

HasBy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


