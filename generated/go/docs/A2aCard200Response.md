# A2aCard200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | Pointer to **bool** |  | [optional] 
**Card** | Pointer to [**AgentCard**](AgentCard.md) |  | [optional] 
**Fingerprint** | Pointer to **string** | Changes when the card&#39;s content does. | [optional] 
**Fresh** | Pointer to **bool** | false when the peer answered 304. | [optional] 
**Changed** | Pointer to **bool** |  | [optional] 
**Url** | Pointer to **string** |  | [optional] 

## Methods

### NewA2aCard200Response

`func NewA2aCard200Response() *A2aCard200Response`

NewA2aCard200Response instantiates a new A2aCard200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewA2aCard200ResponseWithDefaults

`func NewA2aCard200ResponseWithDefaults() *A2aCard200Response`

NewA2aCard200ResponseWithDefaults instantiates a new A2aCard200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *A2aCard200Response) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *A2aCard200Response) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *A2aCard200Response) SetOk(v bool)`

SetOk sets Ok field to given value.

### HasOk

`func (o *A2aCard200Response) HasOk() bool`

HasOk returns a boolean if a field has been set.

### GetCard

`func (o *A2aCard200Response) GetCard() AgentCard`

GetCard returns the Card field if non-nil, zero value otherwise.

### GetCardOk

`func (o *A2aCard200Response) GetCardOk() (*AgentCard, bool)`

GetCardOk returns a tuple with the Card field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCard

`func (o *A2aCard200Response) SetCard(v AgentCard)`

SetCard sets Card field to given value.

### HasCard

`func (o *A2aCard200Response) HasCard() bool`

HasCard returns a boolean if a field has been set.

### GetFingerprint

`func (o *A2aCard200Response) GetFingerprint() string`

GetFingerprint returns the Fingerprint field if non-nil, zero value otherwise.

### GetFingerprintOk

`func (o *A2aCard200Response) GetFingerprintOk() (*string, bool)`

GetFingerprintOk returns a tuple with the Fingerprint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFingerprint

`func (o *A2aCard200Response) SetFingerprint(v string)`

SetFingerprint sets Fingerprint field to given value.

### HasFingerprint

`func (o *A2aCard200Response) HasFingerprint() bool`

HasFingerprint returns a boolean if a field has been set.

### GetFresh

`func (o *A2aCard200Response) GetFresh() bool`

GetFresh returns the Fresh field if non-nil, zero value otherwise.

### GetFreshOk

`func (o *A2aCard200Response) GetFreshOk() (*bool, bool)`

GetFreshOk returns a tuple with the Fresh field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFresh

`func (o *A2aCard200Response) SetFresh(v bool)`

SetFresh sets Fresh field to given value.

### HasFresh

`func (o *A2aCard200Response) HasFresh() bool`

HasFresh returns a boolean if a field has been set.

### GetChanged

`func (o *A2aCard200Response) GetChanged() bool`

GetChanged returns the Changed field if non-nil, zero value otherwise.

### GetChangedOk

`func (o *A2aCard200Response) GetChangedOk() (*bool, bool)`

GetChangedOk returns a tuple with the Changed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChanged

`func (o *A2aCard200Response) SetChanged(v bool)`

SetChanged sets Changed field to given value.

### HasChanged

`func (o *A2aCard200Response) HasChanged() bool`

HasChanged returns a boolean if a field has been set.

### GetUrl

`func (o *A2aCard200Response) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *A2aCard200Response) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *A2aCard200Response) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *A2aCard200Response) HasUrl() bool`

HasUrl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


