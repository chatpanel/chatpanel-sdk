# BrowserResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Session** | **string** |  | 
**Id** | **string** |  | 
**Result** | [**BrowserResultResult**](BrowserResultResult.md) |  | 

## Methods

### NewBrowserResult

`func NewBrowserResult(session string, id string, result BrowserResultResult, ) *BrowserResult`

NewBrowserResult instantiates a new BrowserResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrowserResultWithDefaults

`func NewBrowserResultWithDefaults() *BrowserResult`

NewBrowserResultWithDefaults instantiates a new BrowserResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSession

`func (o *BrowserResult) GetSession() string`

GetSession returns the Session field if non-nil, zero value otherwise.

### GetSessionOk

`func (o *BrowserResult) GetSessionOk() (*string, bool)`

GetSessionOk returns a tuple with the Session field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSession

`func (o *BrowserResult) SetSession(v string)`

SetSession sets Session field to given value.


### GetId

`func (o *BrowserResult) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *BrowserResult) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *BrowserResult) SetId(v string)`

SetId sets Id field to given value.


### GetResult

`func (o *BrowserResult) GetResult() BrowserResultResult`

GetResult returns the Result field if non-nil, zero value otherwise.

### GetResultOk

`func (o *BrowserResult) GetResultOk() (*BrowserResultResult, bool)`

GetResultOk returns a tuple with the Result field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResult

`func (o *BrowserResult) SetResult(v BrowserResultResult)`

SetResult sets Result field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


