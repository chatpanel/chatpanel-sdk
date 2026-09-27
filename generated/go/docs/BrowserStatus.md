# BrowserStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Connected** | **bool** |  | 
**Pending** | **int32** | Calls waiting on the browser. | 
**Waiting** | Pointer to **bool** | A browser holds the stream but has not announced yet. | [optional] 
**Browser** | Pointer to [**BrowserInfo**](BrowserInfo.md) |  | [optional] 
**Extension** | Pointer to **string** | The extension&#39;s version. | [optional] 
**Spec** | Pointer to **map[string]interface{}** | The page tool: { name, description, parameters } — hand it to a model as it is. | [optional] 
**System** | Pointer to **string** | The guidance that goes with the tool. | [optional] 

## Methods

### NewBrowserStatus

`func NewBrowserStatus(connected bool, pending int32, ) *BrowserStatus`

NewBrowserStatus instantiates a new BrowserStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrowserStatusWithDefaults

`func NewBrowserStatusWithDefaults() *BrowserStatus`

NewBrowserStatusWithDefaults instantiates a new BrowserStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetConnected

`func (o *BrowserStatus) GetConnected() bool`

GetConnected returns the Connected field if non-nil, zero value otherwise.

### GetConnectedOk

`func (o *BrowserStatus) GetConnectedOk() (*bool, bool)`

GetConnectedOk returns a tuple with the Connected field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnected

`func (o *BrowserStatus) SetConnected(v bool)`

SetConnected sets Connected field to given value.


### GetPending

`func (o *BrowserStatus) GetPending() int32`

GetPending returns the Pending field if non-nil, zero value otherwise.

### GetPendingOk

`func (o *BrowserStatus) GetPendingOk() (*int32, bool)`

GetPendingOk returns a tuple with the Pending field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPending

`func (o *BrowserStatus) SetPending(v int32)`

SetPending sets Pending field to given value.


### GetWaiting

`func (o *BrowserStatus) GetWaiting() bool`

GetWaiting returns the Waiting field if non-nil, zero value otherwise.

### GetWaitingOk

`func (o *BrowserStatus) GetWaitingOk() (*bool, bool)`

GetWaitingOk returns a tuple with the Waiting field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWaiting

`func (o *BrowserStatus) SetWaiting(v bool)`

SetWaiting sets Waiting field to given value.

### HasWaiting

`func (o *BrowserStatus) HasWaiting() bool`

HasWaiting returns a boolean if a field has been set.

### GetBrowser

`func (o *BrowserStatus) GetBrowser() BrowserInfo`

GetBrowser returns the Browser field if non-nil, zero value otherwise.

### GetBrowserOk

`func (o *BrowserStatus) GetBrowserOk() (*BrowserInfo, bool)`

GetBrowserOk returns a tuple with the Browser field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrowser

`func (o *BrowserStatus) SetBrowser(v BrowserInfo)`

SetBrowser sets Browser field to given value.

### HasBrowser

`func (o *BrowserStatus) HasBrowser() bool`

HasBrowser returns a boolean if a field has been set.

### GetExtension

`func (o *BrowserStatus) GetExtension() string`

GetExtension returns the Extension field if non-nil, zero value otherwise.

### GetExtensionOk

`func (o *BrowserStatus) GetExtensionOk() (*string, bool)`

GetExtensionOk returns a tuple with the Extension field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtension

`func (o *BrowserStatus) SetExtension(v string)`

SetExtension sets Extension field to given value.

### HasExtension

`func (o *BrowserStatus) HasExtension() bool`

HasExtension returns a boolean if a field has been set.

### GetSpec

`func (o *BrowserStatus) GetSpec() map[string]interface{}`

GetSpec returns the Spec field if non-nil, zero value otherwise.

### GetSpecOk

`func (o *BrowserStatus) GetSpecOk() (*map[string]interface{}, bool)`

GetSpecOk returns a tuple with the Spec field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpec

`func (o *BrowserStatus) SetSpec(v map[string]interface{})`

SetSpec sets Spec field to given value.

### HasSpec

`func (o *BrowserStatus) HasSpec() bool`

HasSpec returns a boolean if a field has been set.

### GetSystem

`func (o *BrowserStatus) GetSystem() string`

GetSystem returns the System field if non-nil, zero value otherwise.

### GetSystemOk

`func (o *BrowserStatus) GetSystemOk() (*string, bool)`

GetSystemOk returns a tuple with the System field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSystem

`func (o *BrowserStatus) SetSystem(v string)`

SetSystem sets System field to given value.

### HasSystem

`func (o *BrowserStatus) HasSystem() bool`

HasSystem returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


