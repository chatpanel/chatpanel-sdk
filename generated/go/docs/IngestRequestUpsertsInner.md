# IngestRequestUpsertsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Title** | Pointer to **string** |  | [optional] 
**Type** | Pointer to [**RecordType**](RecordType.md) |  | [optional] 
**Date** | Pointer to **int64** |  | [optional] 
**Text** | **string** |  | 

## Methods

### NewIngestRequestUpsertsInner

`func NewIngestRequestUpsertsInner(id string, text string, ) *IngestRequestUpsertsInner`

NewIngestRequestUpsertsInner instantiates a new IngestRequestUpsertsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIngestRequestUpsertsInnerWithDefaults

`func NewIngestRequestUpsertsInnerWithDefaults() *IngestRequestUpsertsInner`

NewIngestRequestUpsertsInnerWithDefaults instantiates a new IngestRequestUpsertsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *IngestRequestUpsertsInner) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *IngestRequestUpsertsInner) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *IngestRequestUpsertsInner) SetId(v string)`

SetId sets Id field to given value.


### GetTitle

`func (o *IngestRequestUpsertsInner) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *IngestRequestUpsertsInner) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *IngestRequestUpsertsInner) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *IngestRequestUpsertsInner) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetType

`func (o *IngestRequestUpsertsInner) GetType() RecordType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *IngestRequestUpsertsInner) GetTypeOk() (*RecordType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *IngestRequestUpsertsInner) SetType(v RecordType)`

SetType sets Type field to given value.

### HasType

`func (o *IngestRequestUpsertsInner) HasType() bool`

HasType returns a boolean if a field has been set.

### GetDate

`func (o *IngestRequestUpsertsInner) GetDate() int64`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *IngestRequestUpsertsInner) GetDateOk() (*int64, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *IngestRequestUpsertsInner) SetDate(v int64)`

SetDate sets Date field to given value.

### HasDate

`func (o *IngestRequestUpsertsInner) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetText

`func (o *IngestRequestUpsertsInner) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *IngestRequestUpsertsInner) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *IngestRequestUpsertsInner) SetText(v string)`

SetText sets Text field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


