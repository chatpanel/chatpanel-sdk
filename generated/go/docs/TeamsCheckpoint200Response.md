# TeamsCheckpoint200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Checkpoint** | **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | 

## Methods

### NewTeamsCheckpoint200Response

`func NewTeamsCheckpoint200Response(ok bool, checkpoint map[string]interface{}, ) *TeamsCheckpoint200Response`

NewTeamsCheckpoint200Response instantiates a new TeamsCheckpoint200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTeamsCheckpoint200ResponseWithDefaults

`func NewTeamsCheckpoint200ResponseWithDefaults() *TeamsCheckpoint200Response`

NewTeamsCheckpoint200ResponseWithDefaults instantiates a new TeamsCheckpoint200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *TeamsCheckpoint200Response) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *TeamsCheckpoint200Response) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *TeamsCheckpoint200Response) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetCheckpoint

`func (o *TeamsCheckpoint200Response) GetCheckpoint() map[string]interface{}`

GetCheckpoint returns the Checkpoint field if non-nil, zero value otherwise.

### GetCheckpointOk

`func (o *TeamsCheckpoint200Response) GetCheckpointOk() (*map[string]interface{}, bool)`

GetCheckpointOk returns a tuple with the Checkpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCheckpoint

`func (o *TeamsCheckpoint200Response) SetCheckpoint(v map[string]interface{})`

SetCheckpoint sets Checkpoint field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


