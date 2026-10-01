# SearchTrail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **string** | How it ended: &#x60;answered&#x60; (results came back) · &#x60;nothing&#x60; (engines answered, none had anything) · &#x60;blocked&#x60; (every engine asked refused or timed out) · &#x60;resting&#x60; (nothing was asked: every engine is resting after earlier refusals) · &#x60;offline&#x60; (every engine failed at the network) · &#x60;no-engines&#x60;. A client meeting a value it does not know treats it as no results. | 
**Asked** | [**[]SearchTrailAsk**](SearchTrailAsk.md) | In the order asked: the provider tried first (&#x60;searxng&#x60;, or each engine and API &#x60;serp&#x60; asked), then the other provider when the first came back empty. | 
**Resting** | [**[]SearchTrailResting**](SearchTrailResting.md) | Engines resting after refusing earlier, and until when. | 

## Methods

### NewSearchTrail

`func NewSearchTrail(status string, asked []SearchTrailAsk, resting []SearchTrailResting, ) *SearchTrail`

NewSearchTrail instantiates a new SearchTrail object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchTrailWithDefaults

`func NewSearchTrailWithDefaults() *SearchTrail`

NewSearchTrailWithDefaults instantiates a new SearchTrail object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *SearchTrail) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *SearchTrail) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *SearchTrail) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetAsked

`func (o *SearchTrail) GetAsked() []SearchTrailAsk`

GetAsked returns the Asked field if non-nil, zero value otherwise.

### GetAskedOk

`func (o *SearchTrail) GetAskedOk() (*[]SearchTrailAsk, bool)`

GetAskedOk returns a tuple with the Asked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsked

`func (o *SearchTrail) SetAsked(v []SearchTrailAsk)`

SetAsked sets Asked field to given value.


### GetResting

`func (o *SearchTrail) GetResting() []SearchTrailResting`

GetResting returns the Resting field if non-nil, zero value otherwise.

### GetRestingOk

`func (o *SearchTrail) GetRestingOk() (*[]SearchTrailResting, bool)`

GetRestingOk returns a tuple with the Resting field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResting

`func (o *SearchTrail) SetResting(v []SearchTrailResting)`

SetResting sets Resting field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


