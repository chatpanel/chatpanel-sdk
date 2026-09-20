# Capability

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Route** | **string** | The standard route for this capability on this provider. | 
**Models** | Pointer to **[]string** | Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those. | [optional] 
**Providers** | Pointer to **[]string** | Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those. | [optional] 
**Default** | Pointer to **string** | One of &#x60;models&#x60;, or of &#x60;providers&#x60;. | [optional] 
**Labels** | Pointer to **[]string** | detect: the loaded model&#39;s label vocabulary, BIOES prefixes stripped. Empty until a model is loaded. | [optional] 
**MaxTokens** | Pointer to **NullableInt32** | detect: the tokenizer&#39;s limit; null when effectively unbounded. | [optional] 
**Requirements** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**Stats** | Pointer to [**CapabilityStats**](CapabilityStats.md) |  | [optional] 
**Runtime** | Pointer to **map[string]interface{}** | state (off | loading | downloading | ready | error | external), name, dtype, error… | [optional] 
**Streaming** | Pointer to **string** | stt: the session route for live dictation. | [optional] 
**Voices** | Pointer to **string** | tts: the voices route. | [optional] 

## Methods

### NewCapability

`func NewCapability(id string, route string, ) *Capability`

NewCapability instantiates a new Capability object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCapabilityWithDefaults

`func NewCapabilityWithDefaults() *Capability`

NewCapabilityWithDefaults instantiates a new Capability object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Capability) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Capability) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Capability) SetId(v string)`

SetId sets Id field to given value.


### GetRoute

`func (o *Capability) GetRoute() string`

GetRoute returns the Route field if non-nil, zero value otherwise.

### GetRouteOk

`func (o *Capability) GetRouteOk() (*string, bool)`

GetRouteOk returns a tuple with the Route field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoute

`func (o *Capability) SetRoute(v string)`

SetRoute sets Route field to given value.


### GetModels

`func (o *Capability) GetModels() []string`

GetModels returns the Models field if non-nil, zero value otherwise.

### GetModelsOk

`func (o *Capability) GetModelsOk() (*[]string, bool)`

GetModelsOk returns a tuple with the Models field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModels

`func (o *Capability) SetModels(v []string)`

SetModels sets Models field to given value.

### HasModels

`func (o *Capability) HasModels() bool`

HasModels returns a boolean if a field has been set.

### GetProviders

`func (o *Capability) GetProviders() []string`

GetProviders returns the Providers field if non-nil, zero value otherwise.

### GetProvidersOk

`func (o *Capability) GetProvidersOk() (*[]string, bool)`

GetProvidersOk returns a tuple with the Providers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProviders

`func (o *Capability) SetProviders(v []string)`

SetProviders sets Providers field to given value.

### HasProviders

`func (o *Capability) HasProviders() bool`

HasProviders returns a boolean if a field has been set.

### GetDefault

`func (o *Capability) GetDefault() string`

GetDefault returns the Default field if non-nil, zero value otherwise.

### GetDefaultOk

`func (o *Capability) GetDefaultOk() (*string, bool)`

GetDefaultOk returns a tuple with the Default field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefault

`func (o *Capability) SetDefault(v string)`

SetDefault sets Default field to given value.

### HasDefault

`func (o *Capability) HasDefault() bool`

HasDefault returns a boolean if a field has been set.

### GetLabels

`func (o *Capability) GetLabels() []string`

GetLabels returns the Labels field if non-nil, zero value otherwise.

### GetLabelsOk

`func (o *Capability) GetLabelsOk() (*[]string, bool)`

GetLabelsOk returns a tuple with the Labels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabels

`func (o *Capability) SetLabels(v []string)`

SetLabels sets Labels field to given value.

### HasLabels

`func (o *Capability) HasLabels() bool`

HasLabels returns a boolean if a field has been set.

### GetMaxTokens

`func (o *Capability) GetMaxTokens() int32`

GetMaxTokens returns the MaxTokens field if non-nil, zero value otherwise.

### GetMaxTokensOk

`func (o *Capability) GetMaxTokensOk() (*int32, bool)`

GetMaxTokensOk returns a tuple with the MaxTokens field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxTokens

`func (o *Capability) SetMaxTokens(v int32)`

SetMaxTokens sets MaxTokens field to given value.

### HasMaxTokens

`func (o *Capability) HasMaxTokens() bool`

HasMaxTokens returns a boolean if a field has been set.

### SetMaxTokensNil

`func (o *Capability) SetMaxTokensNil(b bool)`

 SetMaxTokensNil sets the value for MaxTokens to be an explicit nil

### UnsetMaxTokens
`func (o *Capability) UnsetMaxTokens()`

UnsetMaxTokens ensures that no value is present for MaxTokens, not even an explicit nil
### GetRequirements

`func (o *Capability) GetRequirements() map[string]interface{}`

GetRequirements returns the Requirements field if non-nil, zero value otherwise.

### GetRequirementsOk

`func (o *Capability) GetRequirementsOk() (*map[string]interface{}, bool)`

GetRequirementsOk returns a tuple with the Requirements field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirements

`func (o *Capability) SetRequirements(v map[string]interface{})`

SetRequirements sets Requirements field to given value.

### HasRequirements

`func (o *Capability) HasRequirements() bool`

HasRequirements returns a boolean if a field has been set.

### GetStats

`func (o *Capability) GetStats() CapabilityStats`

GetStats returns the Stats field if non-nil, zero value otherwise.

### GetStatsOk

`func (o *Capability) GetStatsOk() (*CapabilityStats, bool)`

GetStatsOk returns a tuple with the Stats field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStats

`func (o *Capability) SetStats(v CapabilityStats)`

SetStats sets Stats field to given value.

### HasStats

`func (o *Capability) HasStats() bool`

HasStats returns a boolean if a field has been set.

### GetRuntime

`func (o *Capability) GetRuntime() map[string]interface{}`

GetRuntime returns the Runtime field if non-nil, zero value otherwise.

### GetRuntimeOk

`func (o *Capability) GetRuntimeOk() (*map[string]interface{}, bool)`

GetRuntimeOk returns a tuple with the Runtime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRuntime

`func (o *Capability) SetRuntime(v map[string]interface{})`

SetRuntime sets Runtime field to given value.

### HasRuntime

`func (o *Capability) HasRuntime() bool`

HasRuntime returns a boolean if a field has been set.

### GetStreaming

`func (o *Capability) GetStreaming() string`

GetStreaming returns the Streaming field if non-nil, zero value otherwise.

### GetStreamingOk

`func (o *Capability) GetStreamingOk() (*string, bool)`

GetStreamingOk returns a tuple with the Streaming field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStreaming

`func (o *Capability) SetStreaming(v string)`

SetStreaming sets Streaming field to given value.

### HasStreaming

`func (o *Capability) HasStreaming() bool`

HasStreaming returns a boolean if a field has been set.

### GetVoices

`func (o *Capability) GetVoices() string`

GetVoices returns the Voices field if non-nil, zero value otherwise.

### GetVoicesOk

`func (o *Capability) GetVoicesOk() (*string, bool)`

GetVoicesOk returns a tuple with the Voices field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVoices

`func (o *Capability) SetVoices(v string)`

SetVoices sets Voices field to given value.

### HasVoices

`func (o *Capability) HasVoices() bool`

HasVoices returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


