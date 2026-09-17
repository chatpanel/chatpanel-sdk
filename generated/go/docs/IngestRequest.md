# IngestRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Upserts** | Pointer to [**[]IngestRequestUpsertsInner**](IngestRequestUpsertsInner.md) |  | [optional] 
**Removes** | Pointer to **[]string** |  | [optional] 

## Methods

### NewIngestRequest

`func NewIngestRequest() *IngestRequest`

NewIngestRequest instantiates a new IngestRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIngestRequestWithDefaults

`func NewIngestRequestWithDefaults() *IngestRequest`

NewIngestRequestWithDefaults instantiates a new IngestRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUpserts

`func (o *IngestRequest) GetUpserts() []IngestRequestUpsertsInner`

GetUpserts returns the Upserts field if non-nil, zero value otherwise.

### GetUpsertsOk

`func (o *IngestRequest) GetUpsertsOk() (*[]IngestRequestUpsertsInner, bool)`

GetUpsertsOk returns a tuple with the Upserts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpserts

`func (o *IngestRequest) SetUpserts(v []IngestRequestUpsertsInner)`

SetUpserts sets Upserts field to given value.

### HasUpserts

`func (o *IngestRequest) HasUpserts() bool`

HasUpserts returns a boolean if a field has been set.

### GetRemoves

`func (o *IngestRequest) GetRemoves() []string`

GetRemoves returns the Removes field if non-nil, zero value otherwise.

### GetRemovesOk

`func (o *IngestRequest) GetRemovesOk() (*[]string, bool)`

GetRemovesOk returns a tuple with the Removes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemoves

`func (o *IngestRequest) SetRemoves(v []string)`

SetRemoves sets Removes field to given value.

### HasRemoves

`func (o *IngestRequest) HasRemoves() bool`

HasRemoves returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


