# KbGraphRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Node** | **string** | An entity, section or topic by name (or a node id). | 
**To** | Pointer to **string** | A second node: the path from &#x60;node&#x60; to it. | [optional] 
**Hops** | Pointer to **int32** |  | [optional] [default to 1]
**Kinds** | Pointer to **[]string** |  | [optional] 
**Limit** | Pointer to **int32** |  | [optional] [default to 20]

## Methods

### NewKbGraphRequest

`func NewKbGraphRequest(node string, ) *KbGraphRequest`

NewKbGraphRequest instantiates a new KbGraphRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbGraphRequestWithDefaults

`func NewKbGraphRequestWithDefaults() *KbGraphRequest`

NewKbGraphRequestWithDefaults instantiates a new KbGraphRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNode

`func (o *KbGraphRequest) GetNode() string`

GetNode returns the Node field if non-nil, zero value otherwise.

### GetNodeOk

`func (o *KbGraphRequest) GetNodeOk() (*string, bool)`

GetNodeOk returns a tuple with the Node field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNode

`func (o *KbGraphRequest) SetNode(v string)`

SetNode sets Node field to given value.


### GetTo

`func (o *KbGraphRequest) GetTo() string`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *KbGraphRequest) GetToOk() (*string, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *KbGraphRequest) SetTo(v string)`

SetTo sets To field to given value.

### HasTo

`func (o *KbGraphRequest) HasTo() bool`

HasTo returns a boolean if a field has been set.

### GetHops

`func (o *KbGraphRequest) GetHops() int32`

GetHops returns the Hops field if non-nil, zero value otherwise.

### GetHopsOk

`func (o *KbGraphRequest) GetHopsOk() (*int32, bool)`

GetHopsOk returns a tuple with the Hops field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHops

`func (o *KbGraphRequest) SetHops(v int32)`

SetHops sets Hops field to given value.

### HasHops

`func (o *KbGraphRequest) HasHops() bool`

HasHops returns a boolean if a field has been set.

### GetKinds

`func (o *KbGraphRequest) GetKinds() []string`

GetKinds returns the Kinds field if non-nil, zero value otherwise.

### GetKindsOk

`func (o *KbGraphRequest) GetKindsOk() (*[]string, bool)`

GetKindsOk returns a tuple with the Kinds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKinds

`func (o *KbGraphRequest) SetKinds(v []string)`

SetKinds sets Kinds field to given value.

### HasKinds

`func (o *KbGraphRequest) HasKinds() bool`

HasKinds returns a boolean if a field has been set.

### GetLimit

`func (o *KbGraphRequest) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *KbGraphRequest) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *KbGraphRequest) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *KbGraphRequest) HasLimit() bool`

HasLimit returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


