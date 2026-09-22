# FusionListFusionsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Kind** | **string** |  | 
**Capability** | **string** |  | 
**Label** | Pointer to **string** |  | [optional] 
**Members** | [**[]FusionListFusionsInnerMembersInner**](FusionListFusionsInnerMembersInner.md) |  | 
**Derived** | Pointer to **bool** | Read from the gateway’s state, not composed. | [optional] 
**Source** | Pointer to **string** | For a derived one: ner, or the runtime service. | [optional] 
**Running** | Pointer to **bool** |  | [optional] 
**Describe** | Pointer to **string** | The fusion in a sentence. | [optional] 

## Methods

### NewFusionListFusionsInner

`func NewFusionListFusionsInner(id string, kind string, capability string, members []FusionListFusionsInnerMembersInner, ) *FusionListFusionsInner`

NewFusionListFusionsInner instantiates a new FusionListFusionsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFusionListFusionsInnerWithDefaults

`func NewFusionListFusionsInnerWithDefaults() *FusionListFusionsInner`

NewFusionListFusionsInnerWithDefaults instantiates a new FusionListFusionsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *FusionListFusionsInner) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *FusionListFusionsInner) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *FusionListFusionsInner) SetId(v string)`

SetId sets Id field to given value.


### GetKind

`func (o *FusionListFusionsInner) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *FusionListFusionsInner) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *FusionListFusionsInner) SetKind(v string)`

SetKind sets Kind field to given value.


### GetCapability

`func (o *FusionListFusionsInner) GetCapability() string`

GetCapability returns the Capability field if non-nil, zero value otherwise.

### GetCapabilityOk

`func (o *FusionListFusionsInner) GetCapabilityOk() (*string, bool)`

GetCapabilityOk returns a tuple with the Capability field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapability

`func (o *FusionListFusionsInner) SetCapability(v string)`

SetCapability sets Capability field to given value.


### GetLabel

`func (o *FusionListFusionsInner) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *FusionListFusionsInner) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *FusionListFusionsInner) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *FusionListFusionsInner) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### GetMembers

`func (o *FusionListFusionsInner) GetMembers() []FusionListFusionsInnerMembersInner`

GetMembers returns the Members field if non-nil, zero value otherwise.

### GetMembersOk

`func (o *FusionListFusionsInner) GetMembersOk() (*[]FusionListFusionsInnerMembersInner, bool)`

GetMembersOk returns a tuple with the Members field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMembers

`func (o *FusionListFusionsInner) SetMembers(v []FusionListFusionsInnerMembersInner)`

SetMembers sets Members field to given value.


### GetDerived

`func (o *FusionListFusionsInner) GetDerived() bool`

GetDerived returns the Derived field if non-nil, zero value otherwise.

### GetDerivedOk

`func (o *FusionListFusionsInner) GetDerivedOk() (*bool, bool)`

GetDerivedOk returns a tuple with the Derived field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDerived

`func (o *FusionListFusionsInner) SetDerived(v bool)`

SetDerived sets Derived field to given value.

### HasDerived

`func (o *FusionListFusionsInner) HasDerived() bool`

HasDerived returns a boolean if a field has been set.

### GetSource

`func (o *FusionListFusionsInner) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *FusionListFusionsInner) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *FusionListFusionsInner) SetSource(v string)`

SetSource sets Source field to given value.

### HasSource

`func (o *FusionListFusionsInner) HasSource() bool`

HasSource returns a boolean if a field has been set.

### GetRunning

`func (o *FusionListFusionsInner) GetRunning() bool`

GetRunning returns the Running field if non-nil, zero value otherwise.

### GetRunningOk

`func (o *FusionListFusionsInner) GetRunningOk() (*bool, bool)`

GetRunningOk returns a tuple with the Running field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRunning

`func (o *FusionListFusionsInner) SetRunning(v bool)`

SetRunning sets Running field to given value.

### HasRunning

`func (o *FusionListFusionsInner) HasRunning() bool`

HasRunning returns a boolean if a field has been set.

### GetDescribe

`func (o *FusionListFusionsInner) GetDescribe() string`

GetDescribe returns the Describe field if non-nil, zero value otherwise.

### GetDescribeOk

`func (o *FusionListFusionsInner) GetDescribeOk() (*string, bool)`

GetDescribeOk returns a tuple with the Describe field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescribe

`func (o *FusionListFusionsInner) SetDescribe(v string)`

SetDescribe sets Describe field to given value.

### HasDescribe

`func (o *FusionListFusionsInner) HasDescribe() bool`

HasDescribe returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


