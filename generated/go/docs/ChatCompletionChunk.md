# ChatCompletionChunk

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Object** | **string** |  | 
**Model** | Pointer to **string** |  | [optional] 
**Choices** | [**[]ChatCompletionChunkChoicesInner**](ChatCompletionChunkChoicesInner.md) |  | 
**Usage** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

## Methods

### NewChatCompletionChunk

`func NewChatCompletionChunk(id string, object string, choices []ChatCompletionChunkChoicesInner, ) *ChatCompletionChunk`

NewChatCompletionChunk instantiates a new ChatCompletionChunk object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewChatCompletionChunkWithDefaults

`func NewChatCompletionChunkWithDefaults() *ChatCompletionChunk`

NewChatCompletionChunkWithDefaults instantiates a new ChatCompletionChunk object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ChatCompletionChunk) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ChatCompletionChunk) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ChatCompletionChunk) SetId(v string)`

SetId sets Id field to given value.


### GetObject

`func (o *ChatCompletionChunk) GetObject() string`

GetObject returns the Object field if non-nil, zero value otherwise.

### GetObjectOk

`func (o *ChatCompletionChunk) GetObjectOk() (*string, bool)`

GetObjectOk returns a tuple with the Object field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObject

`func (o *ChatCompletionChunk) SetObject(v string)`

SetObject sets Object field to given value.


### GetModel

`func (o *ChatCompletionChunk) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *ChatCompletionChunk) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *ChatCompletionChunk) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *ChatCompletionChunk) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetChoices

`func (o *ChatCompletionChunk) GetChoices() []ChatCompletionChunkChoicesInner`

GetChoices returns the Choices field if non-nil, zero value otherwise.

### GetChoicesOk

`func (o *ChatCompletionChunk) GetChoicesOk() (*[]ChatCompletionChunkChoicesInner, bool)`

GetChoicesOk returns a tuple with the Choices field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChoices

`func (o *ChatCompletionChunk) SetChoices(v []ChatCompletionChunkChoicesInner)`

SetChoices sets Choices field to given value.


### GetUsage

`func (o *ChatCompletionChunk) GetUsage() map[string]interface{}`

GetUsage returns the Usage field if non-nil, zero value otherwise.

### GetUsageOk

`func (o *ChatCompletionChunk) GetUsageOk() (*map[string]interface{}, bool)`

GetUsageOk returns a tuple with the Usage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsage

`func (o *ChatCompletionChunk) SetUsage(v map[string]interface{})`

SetUsage sets Usage field to given value.

### HasUsage

`func (o *ChatCompletionChunk) HasUsage() bool`

HasUsage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


