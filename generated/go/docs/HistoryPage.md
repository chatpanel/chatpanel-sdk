# HistoryPage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Total** | **int32** |  | 
**Items** | [**[]HistoryItem**](HistoryItem.md) |  | 

## Methods

### NewHistoryPage

`func NewHistoryPage(ok bool, total int32, items []HistoryItem, ) *HistoryPage`

NewHistoryPage instantiates a new HistoryPage object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHistoryPageWithDefaults

`func NewHistoryPageWithDefaults() *HistoryPage`

NewHistoryPageWithDefaults instantiates a new HistoryPage object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *HistoryPage) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *HistoryPage) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *HistoryPage) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetTotal

`func (o *HistoryPage) GetTotal() int32`

GetTotal returns the Total field if non-nil, zero value otherwise.

### GetTotalOk

`func (o *HistoryPage) GetTotalOk() (*int32, bool)`

GetTotalOk returns a tuple with the Total field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotal

`func (o *HistoryPage) SetTotal(v int32)`

SetTotal sets Total field to given value.


### GetItems

`func (o *HistoryPage) GetItems() []HistoryItem`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *HistoryPage) GetItemsOk() (*[]HistoryItem, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *HistoryPage) SetItems(v []HistoryItem)`

SetItems sets Items field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


