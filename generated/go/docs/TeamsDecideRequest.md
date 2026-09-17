# TeamsDecideRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PostId** | **string** |  | 
**Status** | **string** |  | 
**By** | Pointer to **string** |  | [optional] [default to "person"]

## Methods

### NewTeamsDecideRequest

`func NewTeamsDecideRequest(postId string, status string, ) *TeamsDecideRequest`

NewTeamsDecideRequest instantiates a new TeamsDecideRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTeamsDecideRequestWithDefaults

`func NewTeamsDecideRequestWithDefaults() *TeamsDecideRequest`

NewTeamsDecideRequestWithDefaults instantiates a new TeamsDecideRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPostId

`func (o *TeamsDecideRequest) GetPostId() string`

GetPostId returns the PostId field if non-nil, zero value otherwise.

### GetPostIdOk

`func (o *TeamsDecideRequest) GetPostIdOk() (*string, bool)`

GetPostIdOk returns a tuple with the PostId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostId

`func (o *TeamsDecideRequest) SetPostId(v string)`

SetPostId sets PostId field to given value.


### GetStatus

`func (o *TeamsDecideRequest) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *TeamsDecideRequest) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *TeamsDecideRequest) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetBy

`func (o *TeamsDecideRequest) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *TeamsDecideRequest) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *TeamsDecideRequest) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *TeamsDecideRequest) HasBy() bool`

HasBy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


