# RuntimePlan

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Service** | Pointer to **string** |  | [optional] 
**Model** | Pointer to **string** |  | [optional] 
**NeedMB** | Pointer to **int32** | Weights + KV cache + 10% headroom. | [optional] 
**WeightsMB** | Pointer to **int32** |  | [optional] 
**KvMB** | Pointer to **int32** | The KV cache for the context; null when the model&#39;s config.json is not on disk. | [optional] 
**Context** | Pointer to **int32** |  | [optional] 
**ContextCounted** | Pointer to **bool** |  | [optional] 
**Source** | Pointer to **string** |  | [optional] 
**Fits** | Pointer to **bool** |  | [optional] 
**Live** | Pointer to [**RuntimePlanLive**](RuntimePlanLive.md) |  | [optional] 
**Advice** | Pointer to **string** | One sentence for the person. | [optional] 

## Methods

### NewRuntimePlan

`func NewRuntimePlan(ok bool, ) *RuntimePlan`

NewRuntimePlan instantiates a new RuntimePlan object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuntimePlanWithDefaults

`func NewRuntimePlanWithDefaults() *RuntimePlan`

NewRuntimePlanWithDefaults instantiates a new RuntimePlan object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *RuntimePlan) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *RuntimePlan) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *RuntimePlan) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetService

`func (o *RuntimePlan) GetService() string`

GetService returns the Service field if non-nil, zero value otherwise.

### GetServiceOk

`func (o *RuntimePlan) GetServiceOk() (*string, bool)`

GetServiceOk returns a tuple with the Service field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetService

`func (o *RuntimePlan) SetService(v string)`

SetService sets Service field to given value.

### HasService

`func (o *RuntimePlan) HasService() bool`

HasService returns a boolean if a field has been set.

### GetModel

`func (o *RuntimePlan) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *RuntimePlan) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *RuntimePlan) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *RuntimePlan) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetNeedMB

`func (o *RuntimePlan) GetNeedMB() int32`

GetNeedMB returns the NeedMB field if non-nil, zero value otherwise.

### GetNeedMBOk

`func (o *RuntimePlan) GetNeedMBOk() (*int32, bool)`

GetNeedMBOk returns a tuple with the NeedMB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNeedMB

`func (o *RuntimePlan) SetNeedMB(v int32)`

SetNeedMB sets NeedMB field to given value.

### HasNeedMB

`func (o *RuntimePlan) HasNeedMB() bool`

HasNeedMB returns a boolean if a field has been set.

### GetWeightsMB

`func (o *RuntimePlan) GetWeightsMB() int32`

GetWeightsMB returns the WeightsMB field if non-nil, zero value otherwise.

### GetWeightsMBOk

`func (o *RuntimePlan) GetWeightsMBOk() (*int32, bool)`

GetWeightsMBOk returns a tuple with the WeightsMB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightsMB

`func (o *RuntimePlan) SetWeightsMB(v int32)`

SetWeightsMB sets WeightsMB field to given value.

### HasWeightsMB

`func (o *RuntimePlan) HasWeightsMB() bool`

HasWeightsMB returns a boolean if a field has been set.

### GetKvMB

`func (o *RuntimePlan) GetKvMB() int32`

GetKvMB returns the KvMB field if non-nil, zero value otherwise.

### GetKvMBOk

`func (o *RuntimePlan) GetKvMBOk() (*int32, bool)`

GetKvMBOk returns a tuple with the KvMB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKvMB

`func (o *RuntimePlan) SetKvMB(v int32)`

SetKvMB sets KvMB field to given value.

### HasKvMB

`func (o *RuntimePlan) HasKvMB() bool`

HasKvMB returns a boolean if a field has been set.

### GetContext

`func (o *RuntimePlan) GetContext() int32`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *RuntimePlan) GetContextOk() (*int32, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *RuntimePlan) SetContext(v int32)`

SetContext sets Context field to given value.

### HasContext

`func (o *RuntimePlan) HasContext() bool`

HasContext returns a boolean if a field has been set.

### GetContextCounted

`func (o *RuntimePlan) GetContextCounted() bool`

GetContextCounted returns the ContextCounted field if non-nil, zero value otherwise.

### GetContextCountedOk

`func (o *RuntimePlan) GetContextCountedOk() (*bool, bool)`

GetContextCountedOk returns a tuple with the ContextCounted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContextCounted

`func (o *RuntimePlan) SetContextCounted(v bool)`

SetContextCounted sets ContextCounted field to given value.

### HasContextCounted

`func (o *RuntimePlan) HasContextCounted() bool`

HasContextCounted returns a boolean if a field has been set.

### GetSource

`func (o *RuntimePlan) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *RuntimePlan) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *RuntimePlan) SetSource(v string)`

SetSource sets Source field to given value.

### HasSource

`func (o *RuntimePlan) HasSource() bool`

HasSource returns a boolean if a field has been set.

### GetFits

`func (o *RuntimePlan) GetFits() bool`

GetFits returns the Fits field if non-nil, zero value otherwise.

### GetFitsOk

`func (o *RuntimePlan) GetFitsOk() (*bool, bool)`

GetFitsOk returns a tuple with the Fits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFits

`func (o *RuntimePlan) SetFits(v bool)`

SetFits sets Fits field to given value.

### HasFits

`func (o *RuntimePlan) HasFits() bool`

HasFits returns a boolean if a field has been set.

### GetLive

`func (o *RuntimePlan) GetLive() RuntimePlanLive`

GetLive returns the Live field if non-nil, zero value otherwise.

### GetLiveOk

`func (o *RuntimePlan) GetLiveOk() (*RuntimePlanLive, bool)`

GetLiveOk returns a tuple with the Live field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLive

`func (o *RuntimePlan) SetLive(v RuntimePlanLive)`

SetLive sets Live field to given value.

### HasLive

`func (o *RuntimePlan) HasLive() bool`

HasLive returns a boolean if a field has been set.

### GetAdvice

`func (o *RuntimePlan) GetAdvice() string`

GetAdvice returns the Advice field if non-nil, zero value otherwise.

### GetAdviceOk

`func (o *RuntimePlan) GetAdviceOk() (*string, bool)`

GetAdviceOk returns a tuple with the Advice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdvice

`func (o *RuntimePlan) SetAdvice(v string)`

SetAdvice sets Advice field to given value.

### HasAdvice

`func (o *RuntimePlan) HasAdvice() bool`

HasAdvice returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


