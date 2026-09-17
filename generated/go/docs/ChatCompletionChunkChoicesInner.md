# ChatCompletionChunkChoicesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Index** | Pointer to **int32** |  | [optional] 
**Delta** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**FinishReason** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewChatCompletionChunkChoicesInner

`func NewChatCompletionChunkChoicesInner() *ChatCompletionChunkChoicesInner`

NewChatCompletionChunkChoicesInner instantiates a new ChatCompletionChunkChoicesInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewChatCompletionChunkChoicesInnerWithDefaults

`func NewChatCompletionChunkChoicesInnerWithDefaults() *ChatCompletionChunkChoicesInner`

NewChatCompletionChunkChoicesInnerWithDefaults instantiates a new ChatCompletionChunkChoicesInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIndex

`func (o *ChatCompletionChunkChoicesInner) GetIndex() int32`

GetIndex returns the Index field if non-nil, zero value otherwise.

### GetIndexOk

`func (o *ChatCompletionChunkChoicesInner) GetIndexOk() (*int32, bool)`

GetIndexOk returns a tuple with the Index field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIndex

`func (o *ChatCompletionChunkChoicesInner) SetIndex(v int32)`

SetIndex sets Index field to given value.

### HasIndex

`func (o *ChatCompletionChunkChoicesInner) HasIndex() bool`

HasIndex returns a boolean if a field has been set.

### GetDelta

`func (o *ChatCompletionChunkChoicesInner) GetDelta() map[string]interface{}`

GetDelta returns the Delta field if non-nil, zero value otherwise.

### GetDeltaOk

`func (o *ChatCompletionChunkChoicesInner) GetDeltaOk() (*map[string]interface{}, bool)`

GetDeltaOk returns a tuple with the Delta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelta

`func (o *ChatCompletionChunkChoicesInner) SetDelta(v map[string]interface{})`

SetDelta sets Delta field to given value.

### HasDelta

`func (o *ChatCompletionChunkChoicesInner) HasDelta() bool`

HasDelta returns a boolean if a field has been set.

### GetFinishReason

`func (o *ChatCompletionChunkChoicesInner) GetFinishReason() string`

GetFinishReason returns the FinishReason field if non-nil, zero value otherwise.

### GetFinishReasonOk

`func (o *ChatCompletionChunkChoicesInner) GetFinishReasonOk() (*string, bool)`

GetFinishReasonOk returns a tuple with the FinishReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFinishReason

`func (o *ChatCompletionChunkChoicesInner) SetFinishReason(v string)`

SetFinishReason sets FinishReason field to given value.

### HasFinishReason

`func (o *ChatCompletionChunkChoicesInner) HasFinishReason() bool`

HasFinishReason returns a boolean if a field has been set.

### SetFinishReasonNil

`func (o *ChatCompletionChunkChoicesInner) SetFinishReasonNil(b bool)`

 SetFinishReasonNil sets the value for FinishReason to be an explicit nil

### UnsetFinishReason
`func (o *ChatCompletionChunkChoicesInner) UnsetFinishReason()`

UnsetFinishReason ensures that no value is present for FinishReason, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


