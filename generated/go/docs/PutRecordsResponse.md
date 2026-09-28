# PutRecordsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Written** | **int32** |  | 
**Ids** | Pointer to **[]string** |  | [optional] 
**Sealed** | Pointer to **int32** |  | [optional] 
**Size** | Pointer to **int32** |  | [optional] 
**Revs** | Pointer to **map[string]int64** | Each written record&#39;s new revision (gateway 0.63.0+). | [optional] 
**Conflicts** | Pointer to **[]map[string]interface{}** | The current record for each one sent with a &#x60;baseRev&#x60; that is no longer current — merge and send again. | [optional] 
**Merged** | Pointer to **[]map[string]interface{}** | Gateway 0.64.0+, with &#x60;merge: true&#x60;: each note merged from an outdated copy, as stored (with its new &#x60;rev&#x60;) — replace yours with it. | [optional] 
**Rev** | Pointer to **int64** | The newest revision after this write. | [optional] 

## Methods

### NewPutRecordsResponse

`func NewPutRecordsResponse(ok bool, written int32, ) *PutRecordsResponse`

NewPutRecordsResponse instantiates a new PutRecordsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutRecordsResponseWithDefaults

`func NewPutRecordsResponseWithDefaults() *PutRecordsResponse`

NewPutRecordsResponseWithDefaults instantiates a new PutRecordsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *PutRecordsResponse) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *PutRecordsResponse) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *PutRecordsResponse) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetWritten

`func (o *PutRecordsResponse) GetWritten() int32`

GetWritten returns the Written field if non-nil, zero value otherwise.

### GetWrittenOk

`func (o *PutRecordsResponse) GetWrittenOk() (*int32, bool)`

GetWrittenOk returns a tuple with the Written field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWritten

`func (o *PutRecordsResponse) SetWritten(v int32)`

SetWritten sets Written field to given value.


### GetIds

`func (o *PutRecordsResponse) GetIds() []string`

GetIds returns the Ids field if non-nil, zero value otherwise.

### GetIdsOk

`func (o *PutRecordsResponse) GetIdsOk() (*[]string, bool)`

GetIdsOk returns a tuple with the Ids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIds

`func (o *PutRecordsResponse) SetIds(v []string)`

SetIds sets Ids field to given value.

### HasIds

`func (o *PutRecordsResponse) HasIds() bool`

HasIds returns a boolean if a field has been set.

### GetSealed

`func (o *PutRecordsResponse) GetSealed() int32`

GetSealed returns the Sealed field if non-nil, zero value otherwise.

### GetSealedOk

`func (o *PutRecordsResponse) GetSealedOk() (*int32, bool)`

GetSealedOk returns a tuple with the Sealed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSealed

`func (o *PutRecordsResponse) SetSealed(v int32)`

SetSealed sets Sealed field to given value.

### HasSealed

`func (o *PutRecordsResponse) HasSealed() bool`

HasSealed returns a boolean if a field has been set.

### GetSize

`func (o *PutRecordsResponse) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *PutRecordsResponse) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *PutRecordsResponse) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *PutRecordsResponse) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetRevs

`func (o *PutRecordsResponse) GetRevs() map[string]int64`

GetRevs returns the Revs field if non-nil, zero value otherwise.

### GetRevsOk

`func (o *PutRecordsResponse) GetRevsOk() (*map[string]int64, bool)`

GetRevsOk returns a tuple with the Revs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRevs

`func (o *PutRecordsResponse) SetRevs(v map[string]int64)`

SetRevs sets Revs field to given value.

### HasRevs

`func (o *PutRecordsResponse) HasRevs() bool`

HasRevs returns a boolean if a field has been set.

### GetConflicts

`func (o *PutRecordsResponse) GetConflicts() []map[string]interface{}`

GetConflicts returns the Conflicts field if non-nil, zero value otherwise.

### GetConflictsOk

`func (o *PutRecordsResponse) GetConflictsOk() (*[]map[string]interface{}, bool)`

GetConflictsOk returns a tuple with the Conflicts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConflicts

`func (o *PutRecordsResponse) SetConflicts(v []map[string]interface{})`

SetConflicts sets Conflicts field to given value.

### HasConflicts

`func (o *PutRecordsResponse) HasConflicts() bool`

HasConflicts returns a boolean if a field has been set.

### GetMerged

`func (o *PutRecordsResponse) GetMerged() []map[string]interface{}`

GetMerged returns the Merged field if non-nil, zero value otherwise.

### GetMergedOk

`func (o *PutRecordsResponse) GetMergedOk() (*[]map[string]interface{}, bool)`

GetMergedOk returns a tuple with the Merged field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMerged

`func (o *PutRecordsResponse) SetMerged(v []map[string]interface{})`

SetMerged sets Merged field to given value.

### HasMerged

`func (o *PutRecordsResponse) HasMerged() bool`

HasMerged returns a boolean if a field has been set.

### GetRev

`func (o *PutRecordsResponse) GetRev() int64`

GetRev returns the Rev field if non-nil, zero value otherwise.

### GetRevOk

`func (o *PutRecordsResponse) GetRevOk() (*int64, bool)`

GetRevOk returns a tuple with the Rev field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRev

`func (o *PutRecordsResponse) SetRev(v int64)`

SetRev sets Rev field to given value.

### HasRev

`func (o *PutRecordsResponse) HasRev() bool`

HasRev returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


