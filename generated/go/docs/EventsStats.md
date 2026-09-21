# EventsStats

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Stats** | [**EventsStatsStats**](EventsStatsStats.md) |  | 
**Year** | Pointer to **map[string]interface{}** | &#x60;eventsPerYear&#x60;, &#x60;bytesPerYear&#x60;, &#x60;daysToCap&#x60; at the observed rate; null before there is a span. | [optional] 

## Methods

### NewEventsStats

`func NewEventsStats(ok bool, stats EventsStatsStats, ) *EventsStats`

NewEventsStats instantiates a new EventsStats object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEventsStatsWithDefaults

`func NewEventsStatsWithDefaults() *EventsStats`

NewEventsStatsWithDefaults instantiates a new EventsStats object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *EventsStats) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *EventsStats) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *EventsStats) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetStats

`func (o *EventsStats) GetStats() EventsStatsStats`

GetStats returns the Stats field if non-nil, zero value otherwise.

### GetStatsOk

`func (o *EventsStats) GetStatsOk() (*EventsStatsStats, bool)`

GetStatsOk returns a tuple with the Stats field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStats

`func (o *EventsStats) SetStats(v EventsStatsStats)`

SetStats sets Stats field to given value.


### GetYear

`func (o *EventsStats) GetYear() map[string]interface{}`

GetYear returns the Year field if non-nil, zero value otherwise.

### GetYearOk

`func (o *EventsStats) GetYearOk() (*map[string]interface{}, bool)`

GetYearOk returns a tuple with the Year field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetYear

`func (o *EventsStats) SetYear(v map[string]interface{})`

SetYear sets Year field to given value.

### HasYear

`func (o *EventsStats) HasYear() bool`

HasYear returns a boolean if a field has been set.

### SetYearNil

`func (o *EventsStats) SetYearNil(b bool)`

 SetYearNil sets the value for Year to be an explicit nil

### UnsetYear
`func (o *EventsStats) UnsetYear()`

UnsetYear ensures that no value is present for Year, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


