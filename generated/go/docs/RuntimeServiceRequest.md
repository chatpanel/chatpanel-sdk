# RuntimeServiceRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | Pointer to **string** |  | [optional] [default to "start"]
**Model** | Pointer to **string** | With &#x60;action: model&#x60; — a catalogue id or a Hugging Face owner/name. | [optional] 

## Methods

### NewRuntimeServiceRequest

`func NewRuntimeServiceRequest() *RuntimeServiceRequest`

NewRuntimeServiceRequest instantiates a new RuntimeServiceRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuntimeServiceRequestWithDefaults

`func NewRuntimeServiceRequestWithDefaults() *RuntimeServiceRequest`

NewRuntimeServiceRequestWithDefaults instantiates a new RuntimeServiceRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAction

`func (o *RuntimeServiceRequest) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *RuntimeServiceRequest) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *RuntimeServiceRequest) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *RuntimeServiceRequest) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetModel

`func (o *RuntimeServiceRequest) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *RuntimeServiceRequest) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *RuntimeServiceRequest) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *RuntimeServiceRequest) HasModel() bool`

HasModel returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


