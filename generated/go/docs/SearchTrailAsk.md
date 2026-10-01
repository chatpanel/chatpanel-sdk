# SearchTrailAsk

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | The engine or provider asked — &#x60;searxng&#x60;, &#x60;serp&#x60;, &#x60;duckduckgo&#x60;, &#x60;startpage&#x60;, &#x60;bing&#x60;, &#x60;api:&lt;id&gt;&#x60;. | 
**Outcome** | **string** | &#x60;answered&#x60; · &#x60;empty&#x60; (answered, found nothing) · &#x60;refused&#x60; (a refusing status, a timeout or no answer at all). | 
**Found** | Pointer to **int32** | How many results it returned. | [optional] 
**Status** | Pointer to **int32** | The HTTP status of a refusal (429, 403, …), when there was one. | [optional] 
**TimedOut** | Pointer to **bool** | It did not answer within its share of the budget. | [optional] 
**Network** | Pointer to **bool** | It failed at the network — no status at all. | [optional] 

## Methods

### NewSearchTrailAsk

`func NewSearchTrailAsk(id string, outcome string, ) *SearchTrailAsk`

NewSearchTrailAsk instantiates a new SearchTrailAsk object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchTrailAskWithDefaults

`func NewSearchTrailAskWithDefaults() *SearchTrailAsk`

NewSearchTrailAskWithDefaults instantiates a new SearchTrailAsk object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SearchTrailAsk) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchTrailAsk) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchTrailAsk) SetId(v string)`

SetId sets Id field to given value.


### GetOutcome

`func (o *SearchTrailAsk) GetOutcome() string`

GetOutcome returns the Outcome field if non-nil, zero value otherwise.

### GetOutcomeOk

`func (o *SearchTrailAsk) GetOutcomeOk() (*string, bool)`

GetOutcomeOk returns a tuple with the Outcome field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOutcome

`func (o *SearchTrailAsk) SetOutcome(v string)`

SetOutcome sets Outcome field to given value.


### GetFound

`func (o *SearchTrailAsk) GetFound() int32`

GetFound returns the Found field if non-nil, zero value otherwise.

### GetFoundOk

`func (o *SearchTrailAsk) GetFoundOk() (*int32, bool)`

GetFoundOk returns a tuple with the Found field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFound

`func (o *SearchTrailAsk) SetFound(v int32)`

SetFound sets Found field to given value.

### HasFound

`func (o *SearchTrailAsk) HasFound() bool`

HasFound returns a boolean if a field has been set.

### GetStatus

`func (o *SearchTrailAsk) GetStatus() int32`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *SearchTrailAsk) GetStatusOk() (*int32, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *SearchTrailAsk) SetStatus(v int32)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *SearchTrailAsk) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetTimedOut

`func (o *SearchTrailAsk) GetTimedOut() bool`

GetTimedOut returns the TimedOut field if non-nil, zero value otherwise.

### GetTimedOutOk

`func (o *SearchTrailAsk) GetTimedOutOk() (*bool, bool)`

GetTimedOutOk returns a tuple with the TimedOut field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimedOut

`func (o *SearchTrailAsk) SetTimedOut(v bool)`

SetTimedOut sets TimedOut field to given value.

### HasTimedOut

`func (o *SearchTrailAsk) HasTimedOut() bool`

HasTimedOut returns a boolean if a field has been set.

### GetNetwork

`func (o *SearchTrailAsk) GetNetwork() bool`

GetNetwork returns the Network field if non-nil, zero value otherwise.

### GetNetworkOk

`func (o *SearchTrailAsk) GetNetworkOk() (*bool, bool)`

GetNetworkOk returns a tuple with the Network field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNetwork

`func (o *SearchTrailAsk) SetNetwork(v bool)`

SetNetwork sets Network field to given value.

### HasNetwork

`func (o *SearchTrailAsk) HasNetwork() bool`

HasNetwork returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


