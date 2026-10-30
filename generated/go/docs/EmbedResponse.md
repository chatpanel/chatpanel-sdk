# EmbedResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Object** | **string** |  | 
**Data** | [**[]EmbedResponseDataInner**](EmbedResponseDataInner.md) |  | 
**Model** | **string** |  | 
**Usage** | Pointer to [**EmbedResponseUsage**](EmbedResponseUsage.md) |  | [optional] 
**Ms** | **float32** |  | 

## Methods

### NewEmbedResponse

`func NewEmbedResponse(object string, data []EmbedResponseDataInner, model string, ms float32, ) *EmbedResponse`

NewEmbedResponse instantiates a new EmbedResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEmbedResponseWithDefaults

`func NewEmbedResponseWithDefaults() *EmbedResponse`

NewEmbedResponseWithDefaults instantiates a new EmbedResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetObject

`func (o *EmbedResponse) GetObject() string`

GetObject returns the Object field if non-nil, zero value otherwise.

### GetObjectOk

`func (o *EmbedResponse) GetObjectOk() (*string, bool)`

GetObjectOk returns a tuple with the Object field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObject

`func (o *EmbedResponse) SetObject(v string)`

SetObject sets Object field to given value.


### GetData

`func (o *EmbedResponse) GetData() []EmbedResponseDataInner`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *EmbedResponse) GetDataOk() (*[]EmbedResponseDataInner, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *EmbedResponse) SetData(v []EmbedResponseDataInner)`

SetData sets Data field to given value.


### GetModel

`func (o *EmbedResponse) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *EmbedResponse) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *EmbedResponse) SetModel(v string)`

SetModel sets Model field to given value.


### GetUsage

`func (o *EmbedResponse) GetUsage() EmbedResponseUsage`

GetUsage returns the Usage field if non-nil, zero value otherwise.

### GetUsageOk

`func (o *EmbedResponse) GetUsageOk() (*EmbedResponseUsage, bool)`

GetUsageOk returns a tuple with the Usage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsage

`func (o *EmbedResponse) SetUsage(v EmbedResponseUsage)`

SetUsage sets Usage field to given value.

### HasUsage

`func (o *EmbedResponse) HasUsage() bool`

HasUsage returns a boolean if a field has been set.

### GetMs

`func (o *EmbedResponse) GetMs() float32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *EmbedResponse) GetMsOk() (*float32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *EmbedResponse) SetMs(v float32)`

SetMs sets Ms field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


