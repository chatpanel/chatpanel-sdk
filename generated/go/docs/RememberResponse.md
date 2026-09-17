# RememberResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Action** | **string** |  | 
**Record** | [**Memory**](Memory.md) |  | 
**Replaced** | Pointer to [**NullableMemory**](Memory.md) |  | [optional] 
**Size** | Pointer to **int32** |  | [optional] 

## Methods

### NewRememberResponse

`func NewRememberResponse(ok bool, action string, record Memory, ) *RememberResponse`

NewRememberResponse instantiates a new RememberResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRememberResponseWithDefaults

`func NewRememberResponseWithDefaults() *RememberResponse`

NewRememberResponseWithDefaults instantiates a new RememberResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *RememberResponse) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *RememberResponse) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *RememberResponse) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetAction

`func (o *RememberResponse) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *RememberResponse) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *RememberResponse) SetAction(v string)`

SetAction sets Action field to given value.


### GetRecord

`func (o *RememberResponse) GetRecord() Memory`

GetRecord returns the Record field if non-nil, zero value otherwise.

### GetRecordOk

`func (o *RememberResponse) GetRecordOk() (*Memory, bool)`

GetRecordOk returns a tuple with the Record field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecord

`func (o *RememberResponse) SetRecord(v Memory)`

SetRecord sets Record field to given value.


### GetReplaced

`func (o *RememberResponse) GetReplaced() Memory`

GetReplaced returns the Replaced field if non-nil, zero value otherwise.

### GetReplacedOk

`func (o *RememberResponse) GetReplacedOk() (*Memory, bool)`

GetReplacedOk returns a tuple with the Replaced field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReplaced

`func (o *RememberResponse) SetReplaced(v Memory)`

SetReplaced sets Replaced field to given value.

### HasReplaced

`func (o *RememberResponse) HasReplaced() bool`

HasReplaced returns a boolean if a field has been set.

### SetReplacedNil

`func (o *RememberResponse) SetReplacedNil(b bool)`

 SetReplacedNil sets the value for Replaced to be an explicit nil

### UnsetReplaced
`func (o *RememberResponse) UnsetReplaced()`

UnsetReplaced ensures that no value is present for Replaced, not even an explicit nil
### GetSize

`func (o *RememberResponse) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *RememberResponse) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *RememberResponse) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *RememberResponse) HasSize() bool`

HasSize returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


