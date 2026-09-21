# RuntimeActionResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Error** | Pointer to **string** |  | [optional] 
**Already** | Pointer to **bool** |  | [optional] 
**Url** | Pointer to **string** |  | [optional] 
**Answering** | Pointer to **bool** |  | [optional] 
**Install** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**Provides** | Pointer to **[]string** | The capabilities the service now stands behind (gateway 0.20+). | [optional] 
**Model** | Pointer to **string** | The model the container runs, on a start or a model pick (gateway 0.22+). | [optional] 
**Restarted** | Pointer to **bool** | A model pick re-created a running container. | [optional] 
**Note** | Pointer to **string** | A model pick that fits but is tight for the engine&#39;s memory. | [optional] 

## Methods

### NewRuntimeActionResult

`func NewRuntimeActionResult(ok bool, ) *RuntimeActionResult`

NewRuntimeActionResult instantiates a new RuntimeActionResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuntimeActionResultWithDefaults

`func NewRuntimeActionResultWithDefaults() *RuntimeActionResult`

NewRuntimeActionResultWithDefaults instantiates a new RuntimeActionResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *RuntimeActionResult) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *RuntimeActionResult) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *RuntimeActionResult) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetError

`func (o *RuntimeActionResult) GetError() string`

GetError returns the Error field if non-nil, zero value otherwise.

### GetErrorOk

`func (o *RuntimeActionResult) GetErrorOk() (*string, bool)`

GetErrorOk returns a tuple with the Error field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetError

`func (o *RuntimeActionResult) SetError(v string)`

SetError sets Error field to given value.

### HasError

`func (o *RuntimeActionResult) HasError() bool`

HasError returns a boolean if a field has been set.

### GetAlready

`func (o *RuntimeActionResult) GetAlready() bool`

GetAlready returns the Already field if non-nil, zero value otherwise.

### GetAlreadyOk

`func (o *RuntimeActionResult) GetAlreadyOk() (*bool, bool)`

GetAlreadyOk returns a tuple with the Already field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAlready

`func (o *RuntimeActionResult) SetAlready(v bool)`

SetAlready sets Already field to given value.

### HasAlready

`func (o *RuntimeActionResult) HasAlready() bool`

HasAlready returns a boolean if a field has been set.

### GetUrl

`func (o *RuntimeActionResult) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *RuntimeActionResult) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *RuntimeActionResult) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *RuntimeActionResult) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetAnswering

`func (o *RuntimeActionResult) GetAnswering() bool`

GetAnswering returns the Answering field if non-nil, zero value otherwise.

### GetAnsweringOk

`func (o *RuntimeActionResult) GetAnsweringOk() (*bool, bool)`

GetAnsweringOk returns a tuple with the Answering field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnswering

`func (o *RuntimeActionResult) SetAnswering(v bool)`

SetAnswering sets Answering field to given value.

### HasAnswering

`func (o *RuntimeActionResult) HasAnswering() bool`

HasAnswering returns a boolean if a field has been set.

### GetInstall

`func (o *RuntimeActionResult) GetInstall() map[string]interface{}`

GetInstall returns the Install field if non-nil, zero value otherwise.

### GetInstallOk

`func (o *RuntimeActionResult) GetInstallOk() (*map[string]interface{}, bool)`

GetInstallOk returns a tuple with the Install field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstall

`func (o *RuntimeActionResult) SetInstall(v map[string]interface{})`

SetInstall sets Install field to given value.

### HasInstall

`func (o *RuntimeActionResult) HasInstall() bool`

HasInstall returns a boolean if a field has been set.

### GetProvides

`func (o *RuntimeActionResult) GetProvides() []string`

GetProvides returns the Provides field if non-nil, zero value otherwise.

### GetProvidesOk

`func (o *RuntimeActionResult) GetProvidesOk() (*[]string, bool)`

GetProvidesOk returns a tuple with the Provides field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvides

`func (o *RuntimeActionResult) SetProvides(v []string)`

SetProvides sets Provides field to given value.

### HasProvides

`func (o *RuntimeActionResult) HasProvides() bool`

HasProvides returns a boolean if a field has been set.

### GetModel

`func (o *RuntimeActionResult) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *RuntimeActionResult) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *RuntimeActionResult) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *RuntimeActionResult) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetRestarted

`func (o *RuntimeActionResult) GetRestarted() bool`

GetRestarted returns the Restarted field if non-nil, zero value otherwise.

### GetRestartedOk

`func (o *RuntimeActionResult) GetRestartedOk() (*bool, bool)`

GetRestartedOk returns a tuple with the Restarted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRestarted

`func (o *RuntimeActionResult) SetRestarted(v bool)`

SetRestarted sets Restarted field to given value.

### HasRestarted

`func (o *RuntimeActionResult) HasRestarted() bool`

HasRestarted returns a boolean if a field has been set.

### GetNote

`func (o *RuntimeActionResult) GetNote() string`

GetNote returns the Note field if non-nil, zero value otherwise.

### GetNoteOk

`func (o *RuntimeActionResult) GetNoteOk() (*string, bool)`

GetNoteOk returns a tuple with the Note field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNote

`func (o *RuntimeActionResult) SetNote(v string)`

SetNote sets Note field to given value.

### HasNote

`func (o *RuntimeActionResult) HasNote() bool`

HasNote returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


