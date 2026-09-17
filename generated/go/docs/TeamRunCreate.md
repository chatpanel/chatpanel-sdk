# TeamRunCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Client** | Pointer to **string** | Which client is running it. | [optional] 
**Team** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**Request** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

## Methods

### NewTeamRunCreate

`func NewTeamRunCreate() *TeamRunCreate`

NewTeamRunCreate instantiates a new TeamRunCreate object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTeamRunCreateWithDefaults

`func NewTeamRunCreateWithDefaults() *TeamRunCreate`

NewTeamRunCreateWithDefaults instantiates a new TeamRunCreate object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *TeamRunCreate) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *TeamRunCreate) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *TeamRunCreate) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *TeamRunCreate) HasId() bool`

HasId returns a boolean if a field has been set.

### GetClient

`func (o *TeamRunCreate) GetClient() string`

GetClient returns the Client field if non-nil, zero value otherwise.

### GetClientOk

`func (o *TeamRunCreate) GetClientOk() (*string, bool)`

GetClientOk returns a tuple with the Client field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClient

`func (o *TeamRunCreate) SetClient(v string)`

SetClient sets Client field to given value.

### HasClient

`func (o *TeamRunCreate) HasClient() bool`

HasClient returns a boolean if a field has been set.

### GetTeam

`func (o *TeamRunCreate) GetTeam() map[string]interface{}`

GetTeam returns the Team field if non-nil, zero value otherwise.

### GetTeamOk

`func (o *TeamRunCreate) GetTeamOk() (*map[string]interface{}, bool)`

GetTeamOk returns a tuple with the Team field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTeam

`func (o *TeamRunCreate) SetTeam(v map[string]interface{})`

SetTeam sets Team field to given value.

### HasTeam

`func (o *TeamRunCreate) HasTeam() bool`

HasTeam returns a boolean if a field has been set.

### GetRequest

`func (o *TeamRunCreate) GetRequest() map[string]interface{}`

GetRequest returns the Request field if non-nil, zero value otherwise.

### GetRequestOk

`func (o *TeamRunCreate) GetRequestOk() (*map[string]interface{}, bool)`

GetRequestOk returns a tuple with the Request field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequest

`func (o *TeamRunCreate) SetRequest(v map[string]interface{})`

SetRequest sets Request field to given value.

### HasRequest

`func (o *TeamRunCreate) HasRequest() bool`

HasRequest returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


