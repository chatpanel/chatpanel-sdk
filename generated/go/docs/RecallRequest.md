# RecallRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **string** |  | 
**Scopes** | Pointer to **[]string** |  | [optional] [default to {"global"}]
**Limit** | Pointer to **int32** |  | [optional] 
**MaxChars** | Pointer to **int32** |  | [optional] 

## Methods

### NewRecallRequest

`func NewRecallRequest(text string, ) *RecallRequest`

NewRecallRequest instantiates a new RecallRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRecallRequestWithDefaults

`func NewRecallRequestWithDefaults() *RecallRequest`

NewRecallRequestWithDefaults instantiates a new RecallRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetText

`func (o *RecallRequest) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *RecallRequest) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *RecallRequest) SetText(v string)`

SetText sets Text field to given value.


### GetScopes

`func (o *RecallRequest) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *RecallRequest) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *RecallRequest) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *RecallRequest) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetLimit

`func (o *RecallRequest) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *RecallRequest) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *RecallRequest) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *RecallRequest) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetMaxChars

`func (o *RecallRequest) GetMaxChars() int32`

GetMaxChars returns the MaxChars field if non-nil, zero value otherwise.

### GetMaxCharsOk

`func (o *RecallRequest) GetMaxCharsOk() (*int32, bool)`

GetMaxCharsOk returns a tuple with the MaxChars field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxChars

`func (o *RecallRequest) SetMaxChars(v int32)`

SetMaxChars sets MaxChars field to given value.

### HasMaxChars

`func (o *RecallRequest) HasMaxChars() bool`

HasMaxChars returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


