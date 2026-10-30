# KbResearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attachment** | Pointer to [**KbResearchResponseAttachment**](KbResearchResponseAttachment.md) |  | [optional] 
**Read** | **[]map[string]interface{}** | What was read, grouped by document in page order (or the outline for a whole-document ask). | 
**Hits** | [**[]KbResearchResponseHitsInner**](KbResearchResponseHitsInner.md) |  | 
**Queries** | **[]string** |  | 
**Verdict** | Pointer to **NullableString** | The check&#39;s answer when a model was given. | [optional] 
**Rounds** | **int32** |  | 
**Ask** | Pointer to [**KbResearchResponseAsk**](KbResearchResponseAsk.md) |  | [optional] 
**How** | Pointer to **string** | How it was searched, in words. | [optional] 
**Frame** | Pointer to [**KbResearchResponseFrame**](KbResearchResponseFrame.md) |  | [optional] 
**Ms** | **float32** |  | 

## Methods

### NewKbResearchResponse

`func NewKbResearchResponse(read []map[string]interface{}, hits []KbResearchResponseHitsInner, queries []string, rounds int32, ms float32, ) *KbResearchResponse`

NewKbResearchResponse instantiates a new KbResearchResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbResearchResponseWithDefaults

`func NewKbResearchResponseWithDefaults() *KbResearchResponse`

NewKbResearchResponseWithDefaults instantiates a new KbResearchResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAttachment

`func (o *KbResearchResponse) GetAttachment() KbResearchResponseAttachment`

GetAttachment returns the Attachment field if non-nil, zero value otherwise.

### GetAttachmentOk

`func (o *KbResearchResponse) GetAttachmentOk() (*KbResearchResponseAttachment, bool)`

GetAttachmentOk returns a tuple with the Attachment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttachment

`func (o *KbResearchResponse) SetAttachment(v KbResearchResponseAttachment)`

SetAttachment sets Attachment field to given value.

### HasAttachment

`func (o *KbResearchResponse) HasAttachment() bool`

HasAttachment returns a boolean if a field has been set.

### GetRead

`func (o *KbResearchResponse) GetRead() []map[string]interface{}`

GetRead returns the Read field if non-nil, zero value otherwise.

### GetReadOk

`func (o *KbResearchResponse) GetReadOk() (*[]map[string]interface{}, bool)`

GetReadOk returns a tuple with the Read field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRead

`func (o *KbResearchResponse) SetRead(v []map[string]interface{})`

SetRead sets Read field to given value.


### GetHits

`func (o *KbResearchResponse) GetHits() []KbResearchResponseHitsInner`

GetHits returns the Hits field if non-nil, zero value otherwise.

### GetHitsOk

`func (o *KbResearchResponse) GetHitsOk() (*[]KbResearchResponseHitsInner, bool)`

GetHitsOk returns a tuple with the Hits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHits

`func (o *KbResearchResponse) SetHits(v []KbResearchResponseHitsInner)`

SetHits sets Hits field to given value.


### GetQueries

`func (o *KbResearchResponse) GetQueries() []string`

GetQueries returns the Queries field if non-nil, zero value otherwise.

### GetQueriesOk

`func (o *KbResearchResponse) GetQueriesOk() (*[]string, bool)`

GetQueriesOk returns a tuple with the Queries field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueries

`func (o *KbResearchResponse) SetQueries(v []string)`

SetQueries sets Queries field to given value.


### GetVerdict

`func (o *KbResearchResponse) GetVerdict() string`

GetVerdict returns the Verdict field if non-nil, zero value otherwise.

### GetVerdictOk

`func (o *KbResearchResponse) GetVerdictOk() (*string, bool)`

GetVerdictOk returns a tuple with the Verdict field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerdict

`func (o *KbResearchResponse) SetVerdict(v string)`

SetVerdict sets Verdict field to given value.

### HasVerdict

`func (o *KbResearchResponse) HasVerdict() bool`

HasVerdict returns a boolean if a field has been set.

### SetVerdictNil

`func (o *KbResearchResponse) SetVerdictNil(b bool)`

 SetVerdictNil sets the value for Verdict to be an explicit nil

### UnsetVerdict
`func (o *KbResearchResponse) UnsetVerdict()`

UnsetVerdict ensures that no value is present for Verdict, not even an explicit nil
### GetRounds

`func (o *KbResearchResponse) GetRounds() int32`

GetRounds returns the Rounds field if non-nil, zero value otherwise.

### GetRoundsOk

`func (o *KbResearchResponse) GetRoundsOk() (*int32, bool)`

GetRoundsOk returns a tuple with the Rounds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRounds

`func (o *KbResearchResponse) SetRounds(v int32)`

SetRounds sets Rounds field to given value.


### GetAsk

`func (o *KbResearchResponse) GetAsk() KbResearchResponseAsk`

GetAsk returns the Ask field if non-nil, zero value otherwise.

### GetAskOk

`func (o *KbResearchResponse) GetAskOk() (*KbResearchResponseAsk, bool)`

GetAskOk returns a tuple with the Ask field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsk

`func (o *KbResearchResponse) SetAsk(v KbResearchResponseAsk)`

SetAsk sets Ask field to given value.

### HasAsk

`func (o *KbResearchResponse) HasAsk() bool`

HasAsk returns a boolean if a field has been set.

### GetHow

`func (o *KbResearchResponse) GetHow() string`

GetHow returns the How field if non-nil, zero value otherwise.

### GetHowOk

`func (o *KbResearchResponse) GetHowOk() (*string, bool)`

GetHowOk returns a tuple with the How field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHow

`func (o *KbResearchResponse) SetHow(v string)`

SetHow sets How field to given value.

### HasHow

`func (o *KbResearchResponse) HasHow() bool`

HasHow returns a boolean if a field has been set.

### GetFrame

`func (o *KbResearchResponse) GetFrame() KbResearchResponseFrame`

GetFrame returns the Frame field if non-nil, zero value otherwise.

### GetFrameOk

`func (o *KbResearchResponse) GetFrameOk() (*KbResearchResponseFrame, bool)`

GetFrameOk returns a tuple with the Frame field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrame

`func (o *KbResearchResponse) SetFrame(v KbResearchResponseFrame)`

SetFrame sets Frame field to given value.

### HasFrame

`func (o *KbResearchResponse) HasFrame() bool`

HasFrame returns a boolean if a field has been set.

### GetMs

`func (o *KbResearchResponse) GetMs() float32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *KbResearchResponse) GetMsOk() (*float32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *KbResearchResponse) SetMs(v float32)`

SetMs sets Ms field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


