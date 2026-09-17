# TeamRun

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Client** | Pointer to **string** |  | [optional] 
**Team** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**Events** | Pointer to [**[]RunEvent**](RunEvent.md) |  | [optional] 

## Methods

### NewTeamRun

`func NewTeamRun(id string, ) *TeamRun`

NewTeamRun instantiates a new TeamRun object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTeamRunWithDefaults

`func NewTeamRunWithDefaults() *TeamRun`

NewTeamRunWithDefaults instantiates a new TeamRun object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *TeamRun) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *TeamRun) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *TeamRun) SetId(v string)`

SetId sets Id field to given value.


### GetClient

`func (o *TeamRun) GetClient() string`

GetClient returns the Client field if non-nil, zero value otherwise.

### GetClientOk

`func (o *TeamRun) GetClientOk() (*string, bool)`

GetClientOk returns a tuple with the Client field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClient

`func (o *TeamRun) SetClient(v string)`

SetClient sets Client field to given value.

### HasClient

`func (o *TeamRun) HasClient() bool`

HasClient returns a boolean if a field has been set.

### GetTeam

`func (o *TeamRun) GetTeam() map[string]interface{}`

GetTeam returns the Team field if non-nil, zero value otherwise.

### GetTeamOk

`func (o *TeamRun) GetTeamOk() (*map[string]interface{}, bool)`

GetTeamOk returns a tuple with the Team field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTeam

`func (o *TeamRun) SetTeam(v map[string]interface{})`

SetTeam sets Team field to given value.

### HasTeam

`func (o *TeamRun) HasTeam() bool`

HasTeam returns a boolean if a field has been set.

### GetStatus

`func (o *TeamRun) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *TeamRun) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *TeamRun) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *TeamRun) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetEvents

`func (o *TeamRun) GetEvents() []RunEvent`

GetEvents returns the Events field if non-nil, zero value otherwise.

### GetEventsOk

`func (o *TeamRun) GetEventsOk() (*[]RunEvent, bool)`

GetEventsOk returns a tuple with the Events field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvents

`func (o *TeamRun) SetEvents(v []RunEvent)`

SetEvents sets Events field to given value.

### HasEvents

`func (o *TeamRun) HasEvents() bool`

HasEvents returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


