# BrowserAnnounce

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Session** | **string** |  | 
**Browser** | Pointer to [**BrowserInfo**](BrowserInfo.md) |  | [optional] 
**Extension** | Pointer to **string** |  | [optional] 
**Spec** | **map[string]interface{}** |  | 
**System** | Pointer to **string** |  | [optional] 
**Actions** | Pointer to **[]map[string]interface{}** | Optional — the full specs behind the dispatcher. | [optional] 

## Methods

### NewBrowserAnnounce

`func NewBrowserAnnounce(session string, spec map[string]interface{}, ) *BrowserAnnounce`

NewBrowserAnnounce instantiates a new BrowserAnnounce object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrowserAnnounceWithDefaults

`func NewBrowserAnnounceWithDefaults() *BrowserAnnounce`

NewBrowserAnnounceWithDefaults instantiates a new BrowserAnnounce object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSession

`func (o *BrowserAnnounce) GetSession() string`

GetSession returns the Session field if non-nil, zero value otherwise.

### GetSessionOk

`func (o *BrowserAnnounce) GetSessionOk() (*string, bool)`

GetSessionOk returns a tuple with the Session field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSession

`func (o *BrowserAnnounce) SetSession(v string)`

SetSession sets Session field to given value.


### GetBrowser

`func (o *BrowserAnnounce) GetBrowser() BrowserInfo`

GetBrowser returns the Browser field if non-nil, zero value otherwise.

### GetBrowserOk

`func (o *BrowserAnnounce) GetBrowserOk() (*BrowserInfo, bool)`

GetBrowserOk returns a tuple with the Browser field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrowser

`func (o *BrowserAnnounce) SetBrowser(v BrowserInfo)`

SetBrowser sets Browser field to given value.

### HasBrowser

`func (o *BrowserAnnounce) HasBrowser() bool`

HasBrowser returns a boolean if a field has been set.

### GetExtension

`func (o *BrowserAnnounce) GetExtension() string`

GetExtension returns the Extension field if non-nil, zero value otherwise.

### GetExtensionOk

`func (o *BrowserAnnounce) GetExtensionOk() (*string, bool)`

GetExtensionOk returns a tuple with the Extension field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtension

`func (o *BrowserAnnounce) SetExtension(v string)`

SetExtension sets Extension field to given value.

### HasExtension

`func (o *BrowserAnnounce) HasExtension() bool`

HasExtension returns a boolean if a field has been set.

### GetSpec

`func (o *BrowserAnnounce) GetSpec() map[string]interface{}`

GetSpec returns the Spec field if non-nil, zero value otherwise.

### GetSpecOk

`func (o *BrowserAnnounce) GetSpecOk() (*map[string]interface{}, bool)`

GetSpecOk returns a tuple with the Spec field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpec

`func (o *BrowserAnnounce) SetSpec(v map[string]interface{})`

SetSpec sets Spec field to given value.


### GetSystem

`func (o *BrowserAnnounce) GetSystem() string`

GetSystem returns the System field if non-nil, zero value otherwise.

### GetSystemOk

`func (o *BrowserAnnounce) GetSystemOk() (*string, bool)`

GetSystemOk returns a tuple with the System field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSystem

`func (o *BrowserAnnounce) SetSystem(v string)`

SetSystem sets System field to given value.

### HasSystem

`func (o *BrowserAnnounce) HasSystem() bool`

HasSystem returns a boolean if a field has been set.

### GetActions

`func (o *BrowserAnnounce) GetActions() []map[string]interface{}`

GetActions returns the Actions field if non-nil, zero value otherwise.

### GetActionsOk

`func (o *BrowserAnnounce) GetActionsOk() (*[]map[string]interface{}, bool)`

GetActionsOk returns a tuple with the Actions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActions

`func (o *BrowserAnnounce) SetActions(v []map[string]interface{})`

SetActions sets Actions field to given value.

### HasActions

`func (o *BrowserAnnounce) HasActions() bool`

HasActions returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


