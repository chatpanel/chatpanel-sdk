# A2aCardRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **string** | The agent&#39;s origin, or a card URL outright. | 
**Force** | Pointer to **bool** | Skip the TTL and revalidate — the ETag is still sent. | [optional] 
**Forget** | Pointer to **bool** | Drop the cached card first. | [optional] 
**Auth** | Pointer to **string** | An Authorization header value for agents that need one. | [optional] 

## Methods

### NewA2aCardRequest

`func NewA2aCardRequest(url string, ) *A2aCardRequest`

NewA2aCardRequest instantiates a new A2aCardRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewA2aCardRequestWithDefaults

`func NewA2aCardRequestWithDefaults() *A2aCardRequest`

NewA2aCardRequestWithDefaults instantiates a new A2aCardRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUrl

`func (o *A2aCardRequest) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *A2aCardRequest) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *A2aCardRequest) SetUrl(v string)`

SetUrl sets Url field to given value.


### GetForce

`func (o *A2aCardRequest) GetForce() bool`

GetForce returns the Force field if non-nil, zero value otherwise.

### GetForceOk

`func (o *A2aCardRequest) GetForceOk() (*bool, bool)`

GetForceOk returns a tuple with the Force field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetForce

`func (o *A2aCardRequest) SetForce(v bool)`

SetForce sets Force field to given value.

### HasForce

`func (o *A2aCardRequest) HasForce() bool`

HasForce returns a boolean if a field has been set.

### GetForget

`func (o *A2aCardRequest) GetForget() bool`

GetForget returns the Forget field if non-nil, zero value otherwise.

### GetForgetOk

`func (o *A2aCardRequest) GetForgetOk() (*bool, bool)`

GetForgetOk returns a tuple with the Forget field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetForget

`func (o *A2aCardRequest) SetForget(v bool)`

SetForget sets Forget field to given value.

### HasForget

`func (o *A2aCardRequest) HasForget() bool`

HasForget returns a boolean if a field has been set.

### GetAuth

`func (o *A2aCardRequest) GetAuth() string`

GetAuth returns the Auth field if non-nil, zero value otherwise.

### GetAuthOk

`func (o *A2aCardRequest) GetAuthOk() (*string, bool)`

GetAuthOk returns a tuple with the Auth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuth

`func (o *A2aCardRequest) SetAuth(v string)`

SetAuth sets Auth field to given value.

### HasAuth

`func (o *A2aCardRequest) HasAuth() bool`

HasAuth returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


