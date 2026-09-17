# PrefsWriteResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Revision** | **int32** |  | 
**Applied** | Pointer to **[]string** |  | [optional] 
**Kept** | Pointer to **[]string** |  | [optional] 

## Methods

### NewPrefsWriteResult

`func NewPrefsWriteResult(ok bool, revision int32, ) *PrefsWriteResult`

NewPrefsWriteResult instantiates a new PrefsWriteResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPrefsWriteResultWithDefaults

`func NewPrefsWriteResultWithDefaults() *PrefsWriteResult`

NewPrefsWriteResultWithDefaults instantiates a new PrefsWriteResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *PrefsWriteResult) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *PrefsWriteResult) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *PrefsWriteResult) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetRevision

`func (o *PrefsWriteResult) GetRevision() int32`

GetRevision returns the Revision field if non-nil, zero value otherwise.

### GetRevisionOk

`func (o *PrefsWriteResult) GetRevisionOk() (*int32, bool)`

GetRevisionOk returns a tuple with the Revision field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRevision

`func (o *PrefsWriteResult) SetRevision(v int32)`

SetRevision sets Revision field to given value.


### GetApplied

`func (o *PrefsWriteResult) GetApplied() []string`

GetApplied returns the Applied field if non-nil, zero value otherwise.

### GetAppliedOk

`func (o *PrefsWriteResult) GetAppliedOk() (*[]string, bool)`

GetAppliedOk returns a tuple with the Applied field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplied

`func (o *PrefsWriteResult) SetApplied(v []string)`

SetApplied sets Applied field to given value.

### HasApplied

`func (o *PrefsWriteResult) HasApplied() bool`

HasApplied returns a boolean if a field has been set.

### GetKept

`func (o *PrefsWriteResult) GetKept() []string`

GetKept returns the Kept field if non-nil, zero value otherwise.

### GetKeptOk

`func (o *PrefsWriteResult) GetKeptOk() (*[]string, bool)`

GetKeptOk returns a tuple with the Kept field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKept

`func (o *PrefsWriteResult) SetKept(v []string)`

SetKept sets Kept field to given value.

### HasKept

`func (o *PrefsWriteResult) HasKept() bool`

HasKept returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


