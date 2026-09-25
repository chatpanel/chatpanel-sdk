# A2ASendRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | Pointer to **string** |  | [optional] 
**Card** | Pointer to [**AgentCard**](AgentCard.md) |  | [optional] 
**Text** | Pointer to **string** | Shorthand for a one-part text message. | [optional] 
**Message** | Pointer to **map[string]interface{}** | A full A2A Message. | [optional] 
**ContextId** | Pointer to **string** | Groups related interactions. | [optional] 
**TaskId** | Pointer to **string** | Continues an existing task — how an input or auth stop is answered. | [optional] 
**ReturnImmediately** | Pointer to **bool** | Do not wait for a terminal or interrupted state. | [optional] 
**Auth** | Pointer to **string** |  | [optional] 

## Methods

### NewA2ASendRequest

`func NewA2ASendRequest() *A2ASendRequest`

NewA2ASendRequest instantiates a new A2ASendRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewA2ASendRequestWithDefaults

`func NewA2ASendRequestWithDefaults() *A2ASendRequest`

NewA2ASendRequestWithDefaults instantiates a new A2ASendRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUrl

`func (o *A2ASendRequest) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *A2ASendRequest) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *A2ASendRequest) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *A2ASendRequest) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetCard

`func (o *A2ASendRequest) GetCard() AgentCard`

GetCard returns the Card field if non-nil, zero value otherwise.

### GetCardOk

`func (o *A2ASendRequest) GetCardOk() (*AgentCard, bool)`

GetCardOk returns a tuple with the Card field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCard

`func (o *A2ASendRequest) SetCard(v AgentCard)`

SetCard sets Card field to given value.

### HasCard

`func (o *A2ASendRequest) HasCard() bool`

HasCard returns a boolean if a field has been set.

### GetText

`func (o *A2ASendRequest) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *A2ASendRequest) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *A2ASendRequest) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *A2ASendRequest) HasText() bool`

HasText returns a boolean if a field has been set.

### GetMessage

`func (o *A2ASendRequest) GetMessage() map[string]interface{}`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *A2ASendRequest) GetMessageOk() (*map[string]interface{}, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *A2ASendRequest) SetMessage(v map[string]interface{})`

SetMessage sets Message field to given value.

### HasMessage

`func (o *A2ASendRequest) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetContextId

`func (o *A2ASendRequest) GetContextId() string`

GetContextId returns the ContextId field if non-nil, zero value otherwise.

### GetContextIdOk

`func (o *A2ASendRequest) GetContextIdOk() (*string, bool)`

GetContextIdOk returns a tuple with the ContextId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContextId

`func (o *A2ASendRequest) SetContextId(v string)`

SetContextId sets ContextId field to given value.

### HasContextId

`func (o *A2ASendRequest) HasContextId() bool`

HasContextId returns a boolean if a field has been set.

### GetTaskId

`func (o *A2ASendRequest) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *A2ASendRequest) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *A2ASendRequest) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.

### HasTaskId

`func (o *A2ASendRequest) HasTaskId() bool`

HasTaskId returns a boolean if a field has been set.

### GetReturnImmediately

`func (o *A2ASendRequest) GetReturnImmediately() bool`

GetReturnImmediately returns the ReturnImmediately field if non-nil, zero value otherwise.

### GetReturnImmediatelyOk

`func (o *A2ASendRequest) GetReturnImmediatelyOk() (*bool, bool)`

GetReturnImmediatelyOk returns a tuple with the ReturnImmediately field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReturnImmediately

`func (o *A2ASendRequest) SetReturnImmediately(v bool)`

SetReturnImmediately sets ReturnImmediately field to given value.

### HasReturnImmediately

`func (o *A2ASendRequest) HasReturnImmediately() bool`

HasReturnImmediately returns a boolean if a field has been set.

### GetAuth

`func (o *A2ASendRequest) GetAuth() string`

GetAuth returns the Auth field if non-nil, zero value otherwise.

### GetAuthOk

`func (o *A2ASendRequest) GetAuthOk() (*string, bool)`

GetAuthOk returns a tuple with the Auth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuth

`func (o *A2ASendRequest) SetAuth(v string)`

SetAuth sets Auth field to given value.

### HasAuth

`func (o *A2ASendRequest) HasAuth() bool`

HasAuth returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


