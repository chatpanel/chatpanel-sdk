# RememberRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **string** | One short sentence. | 
**Kind** | Pointer to **string** |  | [optional] [default to "fact"]
**Scope** | Pointer to **string** |  | [optional] [default to "global"]
**Tags** | Pointer to **[]string** |  | [optional] 
**Source** | Pointer to [**MemorySource**](MemorySource.md) |  | [optional] 

## Methods

### NewRememberRequest

`func NewRememberRequest(text string, ) *RememberRequest`

NewRememberRequest instantiates a new RememberRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRememberRequestWithDefaults

`func NewRememberRequestWithDefaults() *RememberRequest`

NewRememberRequestWithDefaults instantiates a new RememberRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetText

`func (o *RememberRequest) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *RememberRequest) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *RememberRequest) SetText(v string)`

SetText sets Text field to given value.


### GetKind

`func (o *RememberRequest) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *RememberRequest) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *RememberRequest) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *RememberRequest) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetScope

`func (o *RememberRequest) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *RememberRequest) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *RememberRequest) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *RememberRequest) HasScope() bool`

HasScope returns a boolean if a field has been set.

### GetTags

`func (o *RememberRequest) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *RememberRequest) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *RememberRequest) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *RememberRequest) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetSource

`func (o *RememberRequest) GetSource() MemorySource`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *RememberRequest) GetSourceOk() (*MemorySource, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *RememberRequest) SetSource(v MemorySource)`

SetSource sets Source field to given value.

### HasSource

`func (o *RememberRequest) HasSource() bool`

HasSource returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


