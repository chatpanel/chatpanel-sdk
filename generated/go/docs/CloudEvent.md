# CloudEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Specversion** | **string** |  | 
**Id** | **string** |  | 
**Source** | **string** | &#x60;urn:chatpanel:host:&lt;host&gt;&#x60; | 
**Type** | **string** | &#x60;net.chatpanel.&lt;family&gt;.&lt;kind&gt;&#x60; | 
**Time** | **time.Time** |  | 
**Datacontenttype** | Pointer to **string** |  | [optional] 
**Seq** | **int32** |  | 
**Host** | **string** |  | 
**Causes** | Pointer to **string** |  | [optional] 
**Chatpanelv** | **int32** |  | 
**Data** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

## Methods

### NewCloudEvent

`func NewCloudEvent(specversion string, id string, source string, type_ string, time time.Time, seq int32, host string, chatpanelv int32, ) *CloudEvent`

NewCloudEvent instantiates a new CloudEvent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCloudEventWithDefaults

`func NewCloudEventWithDefaults() *CloudEvent`

NewCloudEventWithDefaults instantiates a new CloudEvent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSpecversion

`func (o *CloudEvent) GetSpecversion() string`

GetSpecversion returns the Specversion field if non-nil, zero value otherwise.

### GetSpecversionOk

`func (o *CloudEvent) GetSpecversionOk() (*string, bool)`

GetSpecversionOk returns a tuple with the Specversion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpecversion

`func (o *CloudEvent) SetSpecversion(v string)`

SetSpecversion sets Specversion field to given value.


### GetId

`func (o *CloudEvent) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CloudEvent) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CloudEvent) SetId(v string)`

SetId sets Id field to given value.


### GetSource

`func (o *CloudEvent) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *CloudEvent) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *CloudEvent) SetSource(v string)`

SetSource sets Source field to given value.


### GetType

`func (o *CloudEvent) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *CloudEvent) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *CloudEvent) SetType(v string)`

SetType sets Type field to given value.


### GetTime

`func (o *CloudEvent) GetTime() time.Time`

GetTime returns the Time field if non-nil, zero value otherwise.

### GetTimeOk

`func (o *CloudEvent) GetTimeOk() (*time.Time, bool)`

GetTimeOk returns a tuple with the Time field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTime

`func (o *CloudEvent) SetTime(v time.Time)`

SetTime sets Time field to given value.


### GetDatacontenttype

`func (o *CloudEvent) GetDatacontenttype() string`

GetDatacontenttype returns the Datacontenttype field if non-nil, zero value otherwise.

### GetDatacontenttypeOk

`func (o *CloudEvent) GetDatacontenttypeOk() (*string, bool)`

GetDatacontenttypeOk returns a tuple with the Datacontenttype field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDatacontenttype

`func (o *CloudEvent) SetDatacontenttype(v string)`

SetDatacontenttype sets Datacontenttype field to given value.

### HasDatacontenttype

`func (o *CloudEvent) HasDatacontenttype() bool`

HasDatacontenttype returns a boolean if a field has been set.

### GetSeq

`func (o *CloudEvent) GetSeq() int32`

GetSeq returns the Seq field if non-nil, zero value otherwise.

### GetSeqOk

`func (o *CloudEvent) GetSeqOk() (*int32, bool)`

GetSeqOk returns a tuple with the Seq field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSeq

`func (o *CloudEvent) SetSeq(v int32)`

SetSeq sets Seq field to given value.


### GetHost

`func (o *CloudEvent) GetHost() string`

GetHost returns the Host field if non-nil, zero value otherwise.

### GetHostOk

`func (o *CloudEvent) GetHostOk() (*string, bool)`

GetHostOk returns a tuple with the Host field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHost

`func (o *CloudEvent) SetHost(v string)`

SetHost sets Host field to given value.


### GetCauses

`func (o *CloudEvent) GetCauses() string`

GetCauses returns the Causes field if non-nil, zero value otherwise.

### GetCausesOk

`func (o *CloudEvent) GetCausesOk() (*string, bool)`

GetCausesOk returns a tuple with the Causes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCauses

`func (o *CloudEvent) SetCauses(v string)`

SetCauses sets Causes field to given value.

### HasCauses

`func (o *CloudEvent) HasCauses() bool`

HasCauses returns a boolean if a field has been set.

### GetChatpanelv

`func (o *CloudEvent) GetChatpanelv() int32`

GetChatpanelv returns the Chatpanelv field if non-nil, zero value otherwise.

### GetChatpanelvOk

`func (o *CloudEvent) GetChatpanelvOk() (*int32, bool)`

GetChatpanelvOk returns a tuple with the Chatpanelv field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChatpanelv

`func (o *CloudEvent) SetChatpanelv(v int32)`

SetChatpanelv sets Chatpanelv field to given value.


### GetData

`func (o *CloudEvent) GetData() map[string]interface{}`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *CloudEvent) GetDataOk() (*map[string]interface{}, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *CloudEvent) SetData(v map[string]interface{})`

SetData sets Data field to given value.

### HasData

`func (o *CloudEvent) HasData() bool`

HasData returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


