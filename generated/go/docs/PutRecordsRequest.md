# PutRecordsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Host** | Pointer to **string** | Who is pushing — recorded on every record. | [optional] 
**At** | Pointer to **int64** |  | [optional] 
**Records** | Pointer to **[]map[string]interface{}** | Whole records or tombstones. A record with &#x60;baseRev&#x60; (gateway 0.63.0+) is written only while the stored one is at that revision (0 &#x3D; none stored); otherwise it comes back in &#x60;conflicts&#x60;. Without it the newer stamp wins. | [optional] 
**Entries** | Pointer to **[]map[string]interface{}** | Sealed backup entries, opened with the stored passphrase. | [optional] 
**Merge** | Pointer to **bool** | Gateway 0.64.0+: a NOTE sent with a &#x60;baseRev&#x60; that is no longer current is merged against that version (title, tags and text three-way) instead of coming back in &#x60;conflicts&#x60;; the result is in &#x60;merged&#x60;. | [optional] 

## Methods

### NewPutRecordsRequest

`func NewPutRecordsRequest() *PutRecordsRequest`

NewPutRecordsRequest instantiates a new PutRecordsRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutRecordsRequestWithDefaults

`func NewPutRecordsRequestWithDefaults() *PutRecordsRequest`

NewPutRecordsRequestWithDefaults instantiates a new PutRecordsRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetHost

`func (o *PutRecordsRequest) GetHost() string`

GetHost returns the Host field if non-nil, zero value otherwise.

### GetHostOk

`func (o *PutRecordsRequest) GetHostOk() (*string, bool)`

GetHostOk returns a tuple with the Host field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHost

`func (o *PutRecordsRequest) SetHost(v string)`

SetHost sets Host field to given value.

### HasHost

`func (o *PutRecordsRequest) HasHost() bool`

HasHost returns a boolean if a field has been set.

### GetAt

`func (o *PutRecordsRequest) GetAt() int64`

GetAt returns the At field if non-nil, zero value otherwise.

### GetAtOk

`func (o *PutRecordsRequest) GetAtOk() (*int64, bool)`

GetAtOk returns a tuple with the At field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAt

`func (o *PutRecordsRequest) SetAt(v int64)`

SetAt sets At field to given value.

### HasAt

`func (o *PutRecordsRequest) HasAt() bool`

HasAt returns a boolean if a field has been set.

### GetRecords

`func (o *PutRecordsRequest) GetRecords() []map[string]interface{}`

GetRecords returns the Records field if non-nil, zero value otherwise.

### GetRecordsOk

`func (o *PutRecordsRequest) GetRecordsOk() (*[]map[string]interface{}, bool)`

GetRecordsOk returns a tuple with the Records field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecords

`func (o *PutRecordsRequest) SetRecords(v []map[string]interface{})`

SetRecords sets Records field to given value.

### HasRecords

`func (o *PutRecordsRequest) HasRecords() bool`

HasRecords returns a boolean if a field has been set.

### GetEntries

`func (o *PutRecordsRequest) GetEntries() []map[string]interface{}`

GetEntries returns the Entries field if non-nil, zero value otherwise.

### GetEntriesOk

`func (o *PutRecordsRequest) GetEntriesOk() (*[]map[string]interface{}, bool)`

GetEntriesOk returns a tuple with the Entries field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntries

`func (o *PutRecordsRequest) SetEntries(v []map[string]interface{})`

SetEntries sets Entries field to given value.

### HasEntries

`func (o *PutRecordsRequest) HasEntries() bool`

HasEntries returns a boolean if a field has been set.

### GetMerge

`func (o *PutRecordsRequest) GetMerge() bool`

GetMerge returns the Merge field if non-nil, zero value otherwise.

### GetMergeOk

`func (o *PutRecordsRequest) GetMergeOk() (*bool, bool)`

GetMergeOk returns a tuple with the Merge field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMerge

`func (o *PutRecordsRequest) SetMerge(v bool)`

SetMerge sets Merge field to given value.

### HasMerge

`func (o *PutRecordsRequest) HasMerge() bool`

HasMerge returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


