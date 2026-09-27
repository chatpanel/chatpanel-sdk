# BrowserCall

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **string** | A page action: open_tab, navigate, read_page, inspect_page, fill_form, click_by_text, screenshot, describe… | 
**Args** | Pointer to **map[string]interface{}** |  | [optional] 
**Task** | Pointer to **string** | What the person asked for — shown to them when the browser asks to be used. | [optional] 
**TimeoutMs** | Pointer to **int32** |  | [optional] 

## Methods

### NewBrowserCall

`func NewBrowserCall(action string, ) *BrowserCall`

NewBrowserCall instantiates a new BrowserCall object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrowserCallWithDefaults

`func NewBrowserCallWithDefaults() *BrowserCall`

NewBrowserCallWithDefaults instantiates a new BrowserCall object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAction

`func (o *BrowserCall) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *BrowserCall) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *BrowserCall) SetAction(v string)`

SetAction sets Action field to given value.


### GetArgs

`func (o *BrowserCall) GetArgs() map[string]interface{}`

GetArgs returns the Args field if non-nil, zero value otherwise.

### GetArgsOk

`func (o *BrowserCall) GetArgsOk() (*map[string]interface{}, bool)`

GetArgsOk returns a tuple with the Args field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArgs

`func (o *BrowserCall) SetArgs(v map[string]interface{})`

SetArgs sets Args field to given value.

### HasArgs

`func (o *BrowserCall) HasArgs() bool`

HasArgs returns a boolean if a field has been set.

### GetTask

`func (o *BrowserCall) GetTask() string`

GetTask returns the Task field if non-nil, zero value otherwise.

### GetTaskOk

`func (o *BrowserCall) GetTaskOk() (*string, bool)`

GetTaskOk returns a tuple with the Task field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTask

`func (o *BrowserCall) SetTask(v string)`

SetTask sets Task field to given value.

### HasTask

`func (o *BrowserCall) HasTask() bool`

HasTask returns a boolean if a field has been set.

### GetTimeoutMs

`func (o *BrowserCall) GetTimeoutMs() int32`

GetTimeoutMs returns the TimeoutMs field if non-nil, zero value otherwise.

### GetTimeoutMsOk

`func (o *BrowserCall) GetTimeoutMsOk() (*int32, bool)`

GetTimeoutMsOk returns a tuple with the TimeoutMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeoutMs

`func (o *BrowserCall) SetTimeoutMs(v int32)`

SetTimeoutMs sets TimeoutMs field to given value.

### HasTimeoutMs

`func (o *BrowserCall) HasTimeoutMs() bool`

HasTimeoutMs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


