# HistoryGet200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Record** | [**HistoryRecord**](HistoryRecord.md) |  | 

## Methods

### NewHistoryGet200Response

`func NewHistoryGet200Response(ok bool, record HistoryRecord, ) *HistoryGet200Response`

NewHistoryGet200Response instantiates a new HistoryGet200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHistoryGet200ResponseWithDefaults

`func NewHistoryGet200ResponseWithDefaults() *HistoryGet200Response`

NewHistoryGet200ResponseWithDefaults instantiates a new HistoryGet200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *HistoryGet200Response) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *HistoryGet200Response) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *HistoryGet200Response) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetRecord

`func (o *HistoryGet200Response) GetRecord() HistoryRecord`

GetRecord returns the Record field if non-nil, zero value otherwise.

### GetRecordOk

`func (o *HistoryGet200Response) GetRecordOk() (*HistoryRecord, bool)`

GetRecordOk returns a tuple with the Record field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecord

`func (o *HistoryGet200Response) SetRecord(v HistoryRecord)`

SetRecord sets Record field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


