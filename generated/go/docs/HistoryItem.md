# HistoryItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Title** | Pointer to **string** |  | [optional] 
**Type** | Pointer to [**RecordType**](RecordType.md) |  | [optional] 
**Date** | Pointer to **int64** |  | [optional] 
**Chars** | Pointer to **int32** |  | [optional] 

## Methods

### NewHistoryItem

`func NewHistoryItem(id string, ) *HistoryItem`

NewHistoryItem instantiates a new HistoryItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHistoryItemWithDefaults

`func NewHistoryItemWithDefaults() *HistoryItem`

NewHistoryItemWithDefaults instantiates a new HistoryItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *HistoryItem) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *HistoryItem) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *HistoryItem) SetId(v string)`

SetId sets Id field to given value.


### GetTitle

`func (o *HistoryItem) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *HistoryItem) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *HistoryItem) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *HistoryItem) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetType

`func (o *HistoryItem) GetType() RecordType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *HistoryItem) GetTypeOk() (*RecordType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *HistoryItem) SetType(v RecordType)`

SetType sets Type field to given value.

### HasType

`func (o *HistoryItem) HasType() bool`

HasType returns a boolean if a field has been set.

### GetDate

`func (o *HistoryItem) GetDate() int64`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *HistoryItem) GetDateOk() (*int64, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *HistoryItem) SetDate(v int64)`

SetDate sets Date field to given value.

### HasDate

`func (o *HistoryItem) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetChars

`func (o *HistoryItem) GetChars() int32`

GetChars returns the Chars field if non-nil, zero value otherwise.

### GetCharsOk

`func (o *HistoryItem) GetCharsOk() (*int32, bool)`

GetCharsOk returns a tuple with the Chars field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChars

`func (o *HistoryItem) SetChars(v int32)`

SetChars sets Chars field to given value.

### HasChars

`func (o *HistoryItem) HasChars() bool`

HasChars returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


