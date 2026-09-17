# Model

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Object** | **string** |  | 
**OwnedBy** | Pointer to **string** |  | [optional] 
**Provider** | Pointer to **string** |  | [optional] 
**ProviderType** | Pointer to **string** | 0.6.64+ | [optional] 
**Api** | Pointer to **string** |  | [optional] 
**Endpoints** | Pointer to **[]string** |  | [optional] 
**Available** | Pointer to **bool** | 0.6.64+ for bridge agents — whether the CLI is installed. | [optional] 
**Configured** | Pointer to **bool** | 0.6.66+ — false when a turn is known to fail for something the user can fix. | [optional] 
**Reason** | Pointer to **string** |  | [optional] 
**Tools** | Pointer to **bool** | False when the agent cannot take per-turn tools. | [optional] 

## Methods

### NewModel

`func NewModel(id string, object string, ) *Model`

NewModel instantiates a new Model object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewModelWithDefaults

`func NewModelWithDefaults() *Model`

NewModelWithDefaults instantiates a new Model object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Model) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Model) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Model) SetId(v string)`

SetId sets Id field to given value.


### GetObject

`func (o *Model) GetObject() string`

GetObject returns the Object field if non-nil, zero value otherwise.

### GetObjectOk

`func (o *Model) GetObjectOk() (*string, bool)`

GetObjectOk returns a tuple with the Object field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObject

`func (o *Model) SetObject(v string)`

SetObject sets Object field to given value.


### GetOwnedBy

`func (o *Model) GetOwnedBy() string`

GetOwnedBy returns the OwnedBy field if non-nil, zero value otherwise.

### GetOwnedByOk

`func (o *Model) GetOwnedByOk() (*string, bool)`

GetOwnedByOk returns a tuple with the OwnedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwnedBy

`func (o *Model) SetOwnedBy(v string)`

SetOwnedBy sets OwnedBy field to given value.

### HasOwnedBy

`func (o *Model) HasOwnedBy() bool`

HasOwnedBy returns a boolean if a field has been set.

### GetProvider

`func (o *Model) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *Model) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *Model) SetProvider(v string)`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *Model) HasProvider() bool`

HasProvider returns a boolean if a field has been set.

### GetProviderType

`func (o *Model) GetProviderType() string`

GetProviderType returns the ProviderType field if non-nil, zero value otherwise.

### GetProviderTypeOk

`func (o *Model) GetProviderTypeOk() (*string, bool)`

GetProviderTypeOk returns a tuple with the ProviderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProviderType

`func (o *Model) SetProviderType(v string)`

SetProviderType sets ProviderType field to given value.

### HasProviderType

`func (o *Model) HasProviderType() bool`

HasProviderType returns a boolean if a field has been set.

### GetApi

`func (o *Model) GetApi() string`

GetApi returns the Api field if non-nil, zero value otherwise.

### GetApiOk

`func (o *Model) GetApiOk() (*string, bool)`

GetApiOk returns a tuple with the Api field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApi

`func (o *Model) SetApi(v string)`

SetApi sets Api field to given value.

### HasApi

`func (o *Model) HasApi() bool`

HasApi returns a boolean if a field has been set.

### GetEndpoints

`func (o *Model) GetEndpoints() []string`

GetEndpoints returns the Endpoints field if non-nil, zero value otherwise.

### GetEndpointsOk

`func (o *Model) GetEndpointsOk() (*[]string, bool)`

GetEndpointsOk returns a tuple with the Endpoints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpoints

`func (o *Model) SetEndpoints(v []string)`

SetEndpoints sets Endpoints field to given value.

### HasEndpoints

`func (o *Model) HasEndpoints() bool`

HasEndpoints returns a boolean if a field has been set.

### GetAvailable

`func (o *Model) GetAvailable() bool`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *Model) GetAvailableOk() (*bool, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *Model) SetAvailable(v bool)`

SetAvailable sets Available field to given value.

### HasAvailable

`func (o *Model) HasAvailable() bool`

HasAvailable returns a boolean if a field has been set.

### GetConfigured

`func (o *Model) GetConfigured() bool`

GetConfigured returns the Configured field if non-nil, zero value otherwise.

### GetConfiguredOk

`func (o *Model) GetConfiguredOk() (*bool, bool)`

GetConfiguredOk returns a tuple with the Configured field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfigured

`func (o *Model) SetConfigured(v bool)`

SetConfigured sets Configured field to given value.

### HasConfigured

`func (o *Model) HasConfigured() bool`

HasConfigured returns a boolean if a field has been set.

### GetReason

`func (o *Model) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *Model) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *Model) SetReason(v string)`

SetReason sets Reason field to given value.

### HasReason

`func (o *Model) HasReason() bool`

HasReason returns a boolean if a field has been set.

### GetTools

`func (o *Model) GetTools() bool`

GetTools returns the Tools field if non-nil, zero value otherwise.

### GetToolsOk

`func (o *Model) GetToolsOk() (*bool, bool)`

GetToolsOk returns a tuple with the Tools field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTools

`func (o *Model) SetTools(v bool)`

SetTools sets Tools field to given value.

### HasTools

`func (o *Model) HasTools() bool`

HasTools returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


