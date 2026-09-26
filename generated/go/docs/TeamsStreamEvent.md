# TeamsStreamEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** |  | 
**At** | Pointer to **int64** | On &#x60;hello&#x60;. | [optional] 
**Id** | Pointer to **string** | The run that changed. | [optional] 
**Removed** | Pointer to **bool** | True when the run left the store. | [optional] 

## Methods

### NewTeamsStreamEvent

`func NewTeamsStreamEvent(type_ string, ) *TeamsStreamEvent`

NewTeamsStreamEvent instantiates a new TeamsStreamEvent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTeamsStreamEventWithDefaults

`func NewTeamsStreamEventWithDefaults() *TeamsStreamEvent`

NewTeamsStreamEventWithDefaults instantiates a new TeamsStreamEvent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *TeamsStreamEvent) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *TeamsStreamEvent) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *TeamsStreamEvent) SetType(v string)`

SetType sets Type field to given value.


### GetAt

`func (o *TeamsStreamEvent) GetAt() int64`

GetAt returns the At field if non-nil, zero value otherwise.

### GetAtOk

`func (o *TeamsStreamEvent) GetAtOk() (*int64, bool)`

GetAtOk returns a tuple with the At field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAt

`func (o *TeamsStreamEvent) SetAt(v int64)`

SetAt sets At field to given value.

### HasAt

`func (o *TeamsStreamEvent) HasAt() bool`

HasAt returns a boolean if a field has been set.

### GetId

`func (o *TeamsStreamEvent) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *TeamsStreamEvent) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *TeamsStreamEvent) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *TeamsStreamEvent) HasId() bool`

HasId returns a boolean if a field has been set.

### GetRemoved

`func (o *TeamsStreamEvent) GetRemoved() bool`

GetRemoved returns the Removed field if non-nil, zero value otherwise.

### GetRemovedOk

`func (o *TeamsStreamEvent) GetRemovedOk() (*bool, bool)`

GetRemovedOk returns a tuple with the Removed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemoved

`func (o *TeamsStreamEvent) SetRemoved(v bool)`

SetRemoved sets Removed field to given value.

### HasRemoved

`func (o *TeamsStreamEvent) HasRemoved() bool`

HasRemoved returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


