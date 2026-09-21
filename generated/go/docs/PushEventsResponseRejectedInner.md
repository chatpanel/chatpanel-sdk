# PushEventsResponseRejectedInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **NullableString** |  | [optional] 
**Code** | **string** | &#x60;CLOUDEVENT&#x60; (envelope), &#x60;SEQ&#x60; (moved backwards), or event.js&#39;s &#x60;SHAPE&#x60; / &#x60;TYPE&#x60; / &#x60;PAYLOAD&#x60; / &#x60;VERSION&#x60;. | 
**Message** | **string** |  | 

## Methods

### NewPushEventsResponseRejectedInner

`func NewPushEventsResponseRejectedInner(code string, message string, ) *PushEventsResponseRejectedInner`

NewPushEventsResponseRejectedInner instantiates a new PushEventsResponseRejectedInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPushEventsResponseRejectedInnerWithDefaults

`func NewPushEventsResponseRejectedInnerWithDefaults() *PushEventsResponseRejectedInner`

NewPushEventsResponseRejectedInnerWithDefaults instantiates a new PushEventsResponseRejectedInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *PushEventsResponseRejectedInner) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PushEventsResponseRejectedInner) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PushEventsResponseRejectedInner) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PushEventsResponseRejectedInner) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *PushEventsResponseRejectedInner) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *PushEventsResponseRejectedInner) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetCode

`func (o *PushEventsResponseRejectedInner) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *PushEventsResponseRejectedInner) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *PushEventsResponseRejectedInner) SetCode(v string)`

SetCode sets Code field to given value.


### GetMessage

`func (o *PushEventsResponseRejectedInner) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *PushEventsResponseRejectedInner) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *PushEventsResponseRejectedInner) SetMessage(v string)`

SetMessage sets Message field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


