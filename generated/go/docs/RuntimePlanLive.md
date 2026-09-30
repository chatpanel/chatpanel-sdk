# RuntimePlanLive

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Fits** | Pointer to **bool** |  | [optional] 
**NeedMB** | Pointer to **int32** |  | [optional] 
**AvailableMB** | Pointer to **int32** |  | [optional] 
**ShortfallMB** | Pointer to **int32** |  | [optional] 
**FitsGPULimit** | Pointer to **bool** |  | [optional] 
**GpuWiredLimitMB** | Pointer to **int32** |  | [optional] 
**Close** | Pointer to **[]string** | The apps to close to make room. | [optional] 

## Methods

### NewRuntimePlanLive

`func NewRuntimePlanLive() *RuntimePlanLive`

NewRuntimePlanLive instantiates a new RuntimePlanLive object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuntimePlanLiveWithDefaults

`func NewRuntimePlanLiveWithDefaults() *RuntimePlanLive`

NewRuntimePlanLiveWithDefaults instantiates a new RuntimePlanLive object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFits

`func (o *RuntimePlanLive) GetFits() bool`

GetFits returns the Fits field if non-nil, zero value otherwise.

### GetFitsOk

`func (o *RuntimePlanLive) GetFitsOk() (*bool, bool)`

GetFitsOk returns a tuple with the Fits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFits

`func (o *RuntimePlanLive) SetFits(v bool)`

SetFits sets Fits field to given value.

### HasFits

`func (o *RuntimePlanLive) HasFits() bool`

HasFits returns a boolean if a field has been set.

### GetNeedMB

`func (o *RuntimePlanLive) GetNeedMB() int32`

GetNeedMB returns the NeedMB field if non-nil, zero value otherwise.

### GetNeedMBOk

`func (o *RuntimePlanLive) GetNeedMBOk() (*int32, bool)`

GetNeedMBOk returns a tuple with the NeedMB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNeedMB

`func (o *RuntimePlanLive) SetNeedMB(v int32)`

SetNeedMB sets NeedMB field to given value.

### HasNeedMB

`func (o *RuntimePlanLive) HasNeedMB() bool`

HasNeedMB returns a boolean if a field has been set.

### GetAvailableMB

`func (o *RuntimePlanLive) GetAvailableMB() int32`

GetAvailableMB returns the AvailableMB field if non-nil, zero value otherwise.

### GetAvailableMBOk

`func (o *RuntimePlanLive) GetAvailableMBOk() (*int32, bool)`

GetAvailableMBOk returns a tuple with the AvailableMB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailableMB

`func (o *RuntimePlanLive) SetAvailableMB(v int32)`

SetAvailableMB sets AvailableMB field to given value.

### HasAvailableMB

`func (o *RuntimePlanLive) HasAvailableMB() bool`

HasAvailableMB returns a boolean if a field has been set.

### GetShortfallMB

`func (o *RuntimePlanLive) GetShortfallMB() int32`

GetShortfallMB returns the ShortfallMB field if non-nil, zero value otherwise.

### GetShortfallMBOk

`func (o *RuntimePlanLive) GetShortfallMBOk() (*int32, bool)`

GetShortfallMBOk returns a tuple with the ShortfallMB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShortfallMB

`func (o *RuntimePlanLive) SetShortfallMB(v int32)`

SetShortfallMB sets ShortfallMB field to given value.

### HasShortfallMB

`func (o *RuntimePlanLive) HasShortfallMB() bool`

HasShortfallMB returns a boolean if a field has been set.

### GetFitsGPULimit

`func (o *RuntimePlanLive) GetFitsGPULimit() bool`

GetFitsGPULimit returns the FitsGPULimit field if non-nil, zero value otherwise.

### GetFitsGPULimitOk

`func (o *RuntimePlanLive) GetFitsGPULimitOk() (*bool, bool)`

GetFitsGPULimitOk returns a tuple with the FitsGPULimit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFitsGPULimit

`func (o *RuntimePlanLive) SetFitsGPULimit(v bool)`

SetFitsGPULimit sets FitsGPULimit field to given value.

### HasFitsGPULimit

`func (o *RuntimePlanLive) HasFitsGPULimit() bool`

HasFitsGPULimit returns a boolean if a field has been set.

### GetGpuWiredLimitMB

`func (o *RuntimePlanLive) GetGpuWiredLimitMB() int32`

GetGpuWiredLimitMB returns the GpuWiredLimitMB field if non-nil, zero value otherwise.

### GetGpuWiredLimitMBOk

`func (o *RuntimePlanLive) GetGpuWiredLimitMBOk() (*int32, bool)`

GetGpuWiredLimitMBOk returns a tuple with the GpuWiredLimitMB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGpuWiredLimitMB

`func (o *RuntimePlanLive) SetGpuWiredLimitMB(v int32)`

SetGpuWiredLimitMB sets GpuWiredLimitMB field to given value.

### HasGpuWiredLimitMB

`func (o *RuntimePlanLive) HasGpuWiredLimitMB() bool`

HasGpuWiredLimitMB returns a boolean if a field has been set.

### GetClose

`func (o *RuntimePlanLive) GetClose() []string`

GetClose returns the Close field if non-nil, zero value otherwise.

### GetCloseOk

`func (o *RuntimePlanLive) GetCloseOk() (*[]string, bool)`

GetCloseOk returns a tuple with the Close field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClose

`func (o *RuntimePlanLive) SetClose(v []string)`

SetClose sets Close field to given value.

### HasClose

`func (o *RuntimePlanLive) HasClose() bool`

HasClose returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


