# A2aTaskRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Url** | Pointer to **string** |  | [optional] 
**Card** | Pointer to [**AgentCard**](AgentCard.md) |  | [optional] 
**Cancel** | Pointer to **bool** | Cancel instead of polling. | [optional] 
**Auth** | Pointer to **string** |  | [optional] 

## Methods

### NewA2aTaskRequest

`func NewA2aTaskRequest(id string, ) *A2aTaskRequest`

NewA2aTaskRequest instantiates a new A2aTaskRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewA2aTaskRequestWithDefaults

`func NewA2aTaskRequestWithDefaults() *A2aTaskRequest`

NewA2aTaskRequestWithDefaults instantiates a new A2aTaskRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *A2aTaskRequest) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *A2aTaskRequest) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *A2aTaskRequest) SetId(v string)`

SetId sets Id field to given value.


### GetUrl

`func (o *A2aTaskRequest) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *A2aTaskRequest) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *A2aTaskRequest) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *A2aTaskRequest) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetCard

`func (o *A2aTaskRequest) GetCard() AgentCard`

GetCard returns the Card field if non-nil, zero value otherwise.

### GetCardOk

`func (o *A2aTaskRequest) GetCardOk() (*AgentCard, bool)`

GetCardOk returns a tuple with the Card field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCard

`func (o *A2aTaskRequest) SetCard(v AgentCard)`

SetCard sets Card field to given value.

### HasCard

`func (o *A2aTaskRequest) HasCard() bool`

HasCard returns a boolean if a field has been set.

### GetCancel

`func (o *A2aTaskRequest) GetCancel() bool`

GetCancel returns the Cancel field if non-nil, zero value otherwise.

### GetCancelOk

`func (o *A2aTaskRequest) GetCancelOk() (*bool, bool)`

GetCancelOk returns a tuple with the Cancel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCancel

`func (o *A2aTaskRequest) SetCancel(v bool)`

SetCancel sets Cancel field to given value.

### HasCancel

`func (o *A2aTaskRequest) HasCancel() bool`

HasCancel returns a boolean if a field has been set.

### GetAuth

`func (o *A2aTaskRequest) GetAuth() string`

GetAuth returns the Auth field if non-nil, zero value otherwise.

### GetAuthOk

`func (o *A2aTaskRequest) GetAuthOk() (*string, bool)`

GetAuthOk returns a tuple with the Auth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuth

`func (o *A2aTaskRequest) SetAuth(v string)`

SetAuth sets Auth field to given value.

### HasAuth

`func (o *A2aTaskRequest) HasAuth() bool`

HasAuth returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


