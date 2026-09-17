# RunEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Seq** | Pointer to **int32** |  | [optional] 
**Type** | **string** |  | 
**At** | Pointer to **int64** |  | [optional] 
**Payload** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

## Methods

### NewRunEvent

`func NewRunEvent(type_ string, ) *RunEvent`

NewRunEvent instantiates a new RunEvent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRunEventWithDefaults

`func NewRunEventWithDefaults() *RunEvent`

NewRunEventWithDefaults instantiates a new RunEvent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSeq

`func (o *RunEvent) GetSeq() int32`

GetSeq returns the Seq field if non-nil, zero value otherwise.

### GetSeqOk

`func (o *RunEvent) GetSeqOk() (*int32, bool)`

GetSeqOk returns a tuple with the Seq field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSeq

`func (o *RunEvent) SetSeq(v int32)`

SetSeq sets Seq field to given value.

### HasSeq

`func (o *RunEvent) HasSeq() bool`

HasSeq returns a boolean if a field has been set.

### GetType

`func (o *RunEvent) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *RunEvent) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *RunEvent) SetType(v string)`

SetType sets Type field to given value.


### GetAt

`func (o *RunEvent) GetAt() int64`

GetAt returns the At field if non-nil, zero value otherwise.

### GetAtOk

`func (o *RunEvent) GetAtOk() (*int64, bool)`

GetAtOk returns a tuple with the At field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAt

`func (o *RunEvent) SetAt(v int64)`

SetAt sets At field to given value.

### HasAt

`func (o *RunEvent) HasAt() bool`

HasAt returns a boolean if a field has been set.

### GetPayload

`func (o *RunEvent) GetPayload() map[string]interface{}`

GetPayload returns the Payload field if non-nil, zero value otherwise.

### GetPayloadOk

`func (o *RunEvent) GetPayloadOk() (*map[string]interface{}, bool)`

GetPayloadOk returns a tuple with the Payload field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayload

`func (o *RunEvent) SetPayload(v map[string]interface{})`

SetPayload sets Payload field to given value.

### HasPayload

`func (o *RunEvent) HasPayload() bool`

HasPayload returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


