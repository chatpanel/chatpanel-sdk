# TeamsListRuns200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Runs** | [**[]TeamRun**](TeamRun.md) |  | 

## Methods

### NewTeamsListRuns200Response

`func NewTeamsListRuns200Response(ok bool, runs []TeamRun, ) *TeamsListRuns200Response`

NewTeamsListRuns200Response instantiates a new TeamsListRuns200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTeamsListRuns200ResponseWithDefaults

`func NewTeamsListRuns200ResponseWithDefaults() *TeamsListRuns200Response`

NewTeamsListRuns200ResponseWithDefaults instantiates a new TeamsListRuns200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *TeamsListRuns200Response) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *TeamsListRuns200Response) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *TeamsListRuns200Response) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetRuns

`func (o *TeamsListRuns200Response) GetRuns() []TeamRun`

GetRuns returns the Runs field if non-nil, zero value otherwise.

### GetRunsOk

`func (o *TeamsListRuns200Response) GetRunsOk() (*[]TeamRun, bool)`

GetRunsOk returns a tuple with the Runs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRuns

`func (o *TeamsListRuns200Response) SetRuns(v []TeamRun)`

SetRuns sets Runs field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


