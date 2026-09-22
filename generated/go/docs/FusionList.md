# FusionList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kinds** | [**map[string]FusionListKindsValue**](FusionListKindsValue.md) |  | 
**Fusions** | [**[]FusionListFusionsInner**](FusionListFusionsInner.md) |  | 

## Methods

### NewFusionList

`func NewFusionList(kinds map[string]FusionListKindsValue, fusions []FusionListFusionsInner, ) *FusionList`

NewFusionList instantiates a new FusionList object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFusionListWithDefaults

`func NewFusionListWithDefaults() *FusionList`

NewFusionListWithDefaults instantiates a new FusionList object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKinds

`func (o *FusionList) GetKinds() map[string]FusionListKindsValue`

GetKinds returns the Kinds field if non-nil, zero value otherwise.

### GetKindsOk

`func (o *FusionList) GetKindsOk() (*map[string]FusionListKindsValue, bool)`

GetKindsOk returns a tuple with the Kinds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKinds

`func (o *FusionList) SetKinds(v map[string]FusionListKindsValue)`

SetKinds sets Kinds field to given value.


### GetFusions

`func (o *FusionList) GetFusions() []FusionListFusionsInner`

GetFusions returns the Fusions field if non-nil, zero value otherwise.

### GetFusionsOk

`func (o *FusionList) GetFusionsOk() (*[]FusionListFusionsInner, bool)`

GetFusionsOk returns a tuple with the Fusions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFusions

`func (o *FusionList) SetFusions(v []FusionListFusionsInner)`

SetFusions sets Fusions field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


