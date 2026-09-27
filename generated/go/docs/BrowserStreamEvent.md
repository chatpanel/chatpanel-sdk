# BrowserStreamEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Event** | **string** |  | 
**Session** | Pointer to **string** | On &#x60;hello&#x60;. | [optional] 
**Version** | Pointer to **string** | On &#x60;hello&#x60; — the gateway&#39;s. | [optional] 
**Id** | Pointer to **string** | On &#x60;call&#x60; and &#x60;cancel&#x60;. | [optional] 
**Action** | Pointer to **string** |  | [optional] 
**Args** | Pointer to **map[string]interface{}** |  | [optional] 
**Task** | Pointer to **string** |  | [optional] 

## Methods

### NewBrowserStreamEvent

`func NewBrowserStreamEvent(event string, ) *BrowserStreamEvent`

NewBrowserStreamEvent instantiates a new BrowserStreamEvent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrowserStreamEventWithDefaults

`func NewBrowserStreamEventWithDefaults() *BrowserStreamEvent`

NewBrowserStreamEventWithDefaults instantiates a new BrowserStreamEvent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEvent

`func (o *BrowserStreamEvent) GetEvent() string`

GetEvent returns the Event field if non-nil, zero value otherwise.

### GetEventOk

`func (o *BrowserStreamEvent) GetEventOk() (*string, bool)`

GetEventOk returns a tuple with the Event field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvent

`func (o *BrowserStreamEvent) SetEvent(v string)`

SetEvent sets Event field to given value.


### GetSession

`func (o *BrowserStreamEvent) GetSession() string`

GetSession returns the Session field if non-nil, zero value otherwise.

### GetSessionOk

`func (o *BrowserStreamEvent) GetSessionOk() (*string, bool)`

GetSessionOk returns a tuple with the Session field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSession

`func (o *BrowserStreamEvent) SetSession(v string)`

SetSession sets Session field to given value.

### HasSession

`func (o *BrowserStreamEvent) HasSession() bool`

HasSession returns a boolean if a field has been set.

### GetVersion

`func (o *BrowserStreamEvent) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *BrowserStreamEvent) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *BrowserStreamEvent) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *BrowserStreamEvent) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetId

`func (o *BrowserStreamEvent) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *BrowserStreamEvent) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *BrowserStreamEvent) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *BrowserStreamEvent) HasId() bool`

HasId returns a boolean if a field has been set.

### GetAction

`func (o *BrowserStreamEvent) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *BrowserStreamEvent) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *BrowserStreamEvent) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *BrowserStreamEvent) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetArgs

`func (o *BrowserStreamEvent) GetArgs() map[string]interface{}`

GetArgs returns the Args field if non-nil, zero value otherwise.

### GetArgsOk

`func (o *BrowserStreamEvent) GetArgsOk() (*map[string]interface{}, bool)`

GetArgsOk returns a tuple with the Args field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArgs

`func (o *BrowserStreamEvent) SetArgs(v map[string]interface{})`

SetArgs sets Args field to given value.

### HasArgs

`func (o *BrowserStreamEvent) HasArgs() bool`

HasArgs returns a boolean if a field has been set.

### GetTask

`func (o *BrowserStreamEvent) GetTask() string`

GetTask returns the Task field if non-nil, zero value otherwise.

### GetTaskOk

`func (o *BrowserStreamEvent) GetTaskOk() (*string, bool)`

GetTaskOk returns a tuple with the Task field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTask

`func (o *BrowserStreamEvent) SetTask(v string)`

SetTask sets Task field to given value.

### HasTask

`func (o *BrowserStreamEvent) HasTask() bool`

HasTask returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


