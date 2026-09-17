# RecordsPage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Records** | **[]map[string]interface{}** | Whole records; a tombstone carries &#x60;deletedAt&#x60;. | 
**Next** | Pointer to **string** | The cursor for the next page — pass it as &#x60;cursor&#x60;; absent on the last page. | [optional] 
**Size** | Pointer to **int32** |  | [optional] 
**Newest** | Pointer to **int64** |  | [optional] 

## Methods

### NewRecordsPage

`func NewRecordsPage(ok bool, records []map[string]interface{}, ) *RecordsPage`

NewRecordsPage instantiates a new RecordsPage object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRecordsPageWithDefaults

`func NewRecordsPageWithDefaults() *RecordsPage`

NewRecordsPageWithDefaults instantiates a new RecordsPage object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *RecordsPage) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *RecordsPage) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *RecordsPage) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetRecords

`func (o *RecordsPage) GetRecords() []map[string]interface{}`

GetRecords returns the Records field if non-nil, zero value otherwise.

### GetRecordsOk

`func (o *RecordsPage) GetRecordsOk() (*[]map[string]interface{}, bool)`

GetRecordsOk returns a tuple with the Records field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecords

`func (o *RecordsPage) SetRecords(v []map[string]interface{})`

SetRecords sets Records field to given value.


### GetNext

`func (o *RecordsPage) GetNext() string`

GetNext returns the Next field if non-nil, zero value otherwise.

### GetNextOk

`func (o *RecordsPage) GetNextOk() (*string, bool)`

GetNextOk returns a tuple with the Next field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNext

`func (o *RecordsPage) SetNext(v string)`

SetNext sets Next field to given value.

### HasNext

`func (o *RecordsPage) HasNext() bool`

HasNext returns a boolean if a field has been set.

### GetSize

`func (o *RecordsPage) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *RecordsPage) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *RecordsPage) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *RecordsPage) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetNewest

`func (o *RecordsPage) GetNewest() int64`

GetNewest returns the Newest field if non-nil, zero value otherwise.

### GetNewestOk

`func (o *RecordsPage) GetNewestOk() (*int64, bool)`

GetNewestOk returns a tuple with the Newest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNewest

`func (o *RecordsPage) SetNewest(v int64)`

SetNewest sets Newest field to given value.

### HasNewest

`func (o *RecordsPage) HasNewest() bool`

HasNewest returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


