# KbCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Chosen by the caller; made up when absent. | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Embed** | Pointer to **string** | &#x60;off&#x60;: words and graph only, no vectors. | [optional] [default to "auto"]

## Methods

### NewKbCreateRequest

`func NewKbCreateRequest() *KbCreateRequest`

NewKbCreateRequest instantiates a new KbCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbCreateRequestWithDefaults

`func NewKbCreateRequestWithDefaults() *KbCreateRequest`

NewKbCreateRequestWithDefaults instantiates a new KbCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *KbCreateRequest) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *KbCreateRequest) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *KbCreateRequest) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *KbCreateRequest) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *KbCreateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *KbCreateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *KbCreateRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *KbCreateRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetEmbed

`func (o *KbCreateRequest) GetEmbed() string`

GetEmbed returns the Embed field if non-nil, zero value otherwise.

### GetEmbedOk

`func (o *KbCreateRequest) GetEmbedOk() (*string, bool)`

GetEmbedOk returns a tuple with the Embed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmbed

`func (o *KbCreateRequest) SetEmbed(v string)`

SetEmbed sets Embed field to given value.

### HasEmbed

`func (o *KbCreateRequest) HasEmbed() bool`

HasEmbed returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


