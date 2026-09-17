# ChatContentPart

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** |  | 
**Text** | Pointer to **string** |  | [optional] 
**ImageUrl** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

## Methods

### NewChatContentPart

`func NewChatContentPart(type_ string, ) *ChatContentPart`

NewChatContentPart instantiates a new ChatContentPart object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewChatContentPartWithDefaults

`func NewChatContentPartWithDefaults() *ChatContentPart`

NewChatContentPartWithDefaults instantiates a new ChatContentPart object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ChatContentPart) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ChatContentPart) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ChatContentPart) SetType(v string)`

SetType sets Type field to given value.


### GetText

`func (o *ChatContentPart) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *ChatContentPart) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *ChatContentPart) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *ChatContentPart) HasText() bool`

HasText returns a boolean if a field has been set.

### GetImageUrl

`func (o *ChatContentPart) GetImageUrl() map[string]interface{}`

GetImageUrl returns the ImageUrl field if non-nil, zero value otherwise.

### GetImageUrlOk

`func (o *ChatContentPart) GetImageUrlOk() (*map[string]interface{}, bool)`

GetImageUrlOk returns a tuple with the ImageUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageUrl

`func (o *ChatContentPart) SetImageUrl(v map[string]interface{})`

SetImageUrl sets ImageUrl field to given value.

### HasImageUrl

`func (o *ChatContentPart) HasImageUrl() bool`

HasImageUrl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


