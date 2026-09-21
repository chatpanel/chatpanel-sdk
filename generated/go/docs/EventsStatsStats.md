# EventsStatsStats

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Events** | Pointer to **int32** |  | [optional] 
**Bytes** | Pointer to **int64** |  | [optional] 
**AvgBytes** | Pointer to **int32** |  | [optional] 
**Span** | Pointer to **map[string]interface{}** |  | [optional] 
**PerDay** | Pointer to **map[string]interface{}** |  | [optional] 
**Hosts** | Pointer to **map[string]interface{}** |  | [optional] 
**Types** | Pointer to **map[string]int32** |  | [optional] 
**Turns** | Pointer to **map[string]interface{}** |  | [optional] 
**Refs** | Pointer to **map[string]interface{}** | &#x60;total&#x60;, &#x60;distinct&#x60;, &#x60;dedupHitRate&#x60; (percent). | [optional] 
**ToolCalls** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewEventsStatsStats

`func NewEventsStatsStats() *EventsStatsStats`

NewEventsStatsStats instantiates a new EventsStatsStats object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEventsStatsStatsWithDefaults

`func NewEventsStatsStatsWithDefaults() *EventsStatsStats`

NewEventsStatsStatsWithDefaults instantiates a new EventsStatsStats object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEvents

`func (o *EventsStatsStats) GetEvents() int32`

GetEvents returns the Events field if non-nil, zero value otherwise.

### GetEventsOk

`func (o *EventsStatsStats) GetEventsOk() (*int32, bool)`

GetEventsOk returns a tuple with the Events field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvents

`func (o *EventsStatsStats) SetEvents(v int32)`

SetEvents sets Events field to given value.

### HasEvents

`func (o *EventsStatsStats) HasEvents() bool`

HasEvents returns a boolean if a field has been set.

### GetBytes

`func (o *EventsStatsStats) GetBytes() int64`

GetBytes returns the Bytes field if non-nil, zero value otherwise.

### GetBytesOk

`func (o *EventsStatsStats) GetBytesOk() (*int64, bool)`

GetBytesOk returns a tuple with the Bytes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBytes

`func (o *EventsStatsStats) SetBytes(v int64)`

SetBytes sets Bytes field to given value.

### HasBytes

`func (o *EventsStatsStats) HasBytes() bool`

HasBytes returns a boolean if a field has been set.

### GetAvgBytes

`func (o *EventsStatsStats) GetAvgBytes() int32`

GetAvgBytes returns the AvgBytes field if non-nil, zero value otherwise.

### GetAvgBytesOk

`func (o *EventsStatsStats) GetAvgBytesOk() (*int32, bool)`

GetAvgBytesOk returns a tuple with the AvgBytes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgBytes

`func (o *EventsStatsStats) SetAvgBytes(v int32)`

SetAvgBytes sets AvgBytes field to given value.

### HasAvgBytes

`func (o *EventsStatsStats) HasAvgBytes() bool`

HasAvgBytes returns a boolean if a field has been set.

### GetSpan

`func (o *EventsStatsStats) GetSpan() map[string]interface{}`

GetSpan returns the Span field if non-nil, zero value otherwise.

### GetSpanOk

`func (o *EventsStatsStats) GetSpanOk() (*map[string]interface{}, bool)`

GetSpanOk returns a tuple with the Span field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpan

`func (o *EventsStatsStats) SetSpan(v map[string]interface{})`

SetSpan sets Span field to given value.

### HasSpan

`func (o *EventsStatsStats) HasSpan() bool`

HasSpan returns a boolean if a field has been set.

### GetPerDay

`func (o *EventsStatsStats) GetPerDay() map[string]interface{}`

GetPerDay returns the PerDay field if non-nil, zero value otherwise.

### GetPerDayOk

`func (o *EventsStatsStats) GetPerDayOk() (*map[string]interface{}, bool)`

GetPerDayOk returns a tuple with the PerDay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPerDay

`func (o *EventsStatsStats) SetPerDay(v map[string]interface{})`

SetPerDay sets PerDay field to given value.

### HasPerDay

`func (o *EventsStatsStats) HasPerDay() bool`

HasPerDay returns a boolean if a field has been set.

### GetHosts

`func (o *EventsStatsStats) GetHosts() map[string]interface{}`

GetHosts returns the Hosts field if non-nil, zero value otherwise.

### GetHostsOk

`func (o *EventsStatsStats) GetHostsOk() (*map[string]interface{}, bool)`

GetHostsOk returns a tuple with the Hosts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHosts

`func (o *EventsStatsStats) SetHosts(v map[string]interface{})`

SetHosts sets Hosts field to given value.

### HasHosts

`func (o *EventsStatsStats) HasHosts() bool`

HasHosts returns a boolean if a field has been set.

### GetTypes

`func (o *EventsStatsStats) GetTypes() map[string]int32`

GetTypes returns the Types field if non-nil, zero value otherwise.

### GetTypesOk

`func (o *EventsStatsStats) GetTypesOk() (*map[string]int32, bool)`

GetTypesOk returns a tuple with the Types field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTypes

`func (o *EventsStatsStats) SetTypes(v map[string]int32)`

SetTypes sets Types field to given value.

### HasTypes

`func (o *EventsStatsStats) HasTypes() bool`

HasTypes returns a boolean if a field has been set.

### GetTurns

`func (o *EventsStatsStats) GetTurns() map[string]interface{}`

GetTurns returns the Turns field if non-nil, zero value otherwise.

### GetTurnsOk

`func (o *EventsStatsStats) GetTurnsOk() (*map[string]interface{}, bool)`

GetTurnsOk returns a tuple with the Turns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTurns

`func (o *EventsStatsStats) SetTurns(v map[string]interface{})`

SetTurns sets Turns field to given value.

### HasTurns

`func (o *EventsStatsStats) HasTurns() bool`

HasTurns returns a boolean if a field has been set.

### GetRefs

`func (o *EventsStatsStats) GetRefs() map[string]interface{}`

GetRefs returns the Refs field if non-nil, zero value otherwise.

### GetRefsOk

`func (o *EventsStatsStats) GetRefsOk() (*map[string]interface{}, bool)`

GetRefsOk returns a tuple with the Refs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRefs

`func (o *EventsStatsStats) SetRefs(v map[string]interface{})`

SetRefs sets Refs field to given value.

### HasRefs

`func (o *EventsStatsStats) HasRefs() bool`

HasRefs returns a boolean if a field has been set.

### GetToolCalls

`func (o *EventsStatsStats) GetToolCalls() map[string]interface{}`

GetToolCalls returns the ToolCalls field if non-nil, zero value otherwise.

### GetToolCallsOk

`func (o *EventsStatsStats) GetToolCallsOk() (*map[string]interface{}, bool)`

GetToolCallsOk returns a tuple with the ToolCalls field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToolCalls

`func (o *EventsStatsStats) SetToolCalls(v map[string]interface{})`

SetToolCalls sets ToolCalls field to given value.

### HasToolCalls

`func (o *EventsStatsStats) HasToolCalls() bool`

HasToolCalls returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


