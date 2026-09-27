# ResearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Question** | Pointer to **string** |  | [optional] 
**Plan** | [**ResearchPlan**](ResearchPlan.md) |  | 
**How** | **string** | How the store was searched, in words. | 
**FramedBy** | Pointer to **string** |  | [optional] 
**Count** | Pointer to **NullableInt32** | Every match in the store, not the rows returned. | [optional] 
**Rows** | [**[]ResearchResponseRowsInner**](ResearchResponseRowsInner.md) |  | 
**Groups** | Pointer to [**[]ResearchResponseGroupsInner**](ResearchResponseGroupsInner.md) |  | [optional] 
**Read** | [**[]ResearchResponseReadInner**](ResearchResponseReadInner.md) |  | 
**Memory** | Pointer to **[]string** |  | [optional] 
**Rounds** | Pointer to **int32** |  | [optional] 
**Verdict** | Pointer to **NullableString** |  | [optional] 
**Ms** | Pointer to **int32** |  | [optional] 
**Next** | [**ResearchFollowUp**](ResearchFollowUp.md) |  | 
**Attachment** | Pointer to [**NullableResearchResponseAttachment**](ResearchResponseAttachment.md) |  | [optional] 
**Size** | Pointer to **int32** |  | [optional] 
**Newest** | Pointer to **NullableInt64** |  | [optional] 

## Methods

### NewResearchResponse

`func NewResearchResponse(ok bool, plan ResearchPlan, how string, rows []ResearchResponseRowsInner, read []ResearchResponseReadInner, next ResearchFollowUp, ) *ResearchResponse`

NewResearchResponse instantiates a new ResearchResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResearchResponseWithDefaults

`func NewResearchResponseWithDefaults() *ResearchResponse`

NewResearchResponseWithDefaults instantiates a new ResearchResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *ResearchResponse) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *ResearchResponse) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *ResearchResponse) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetQuestion

`func (o *ResearchResponse) GetQuestion() string`

GetQuestion returns the Question field if non-nil, zero value otherwise.

### GetQuestionOk

`func (o *ResearchResponse) GetQuestionOk() (*string, bool)`

GetQuestionOk returns a tuple with the Question field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuestion

`func (o *ResearchResponse) SetQuestion(v string)`

SetQuestion sets Question field to given value.

### HasQuestion

`func (o *ResearchResponse) HasQuestion() bool`

HasQuestion returns a boolean if a field has been set.

### GetPlan

`func (o *ResearchResponse) GetPlan() ResearchPlan`

GetPlan returns the Plan field if non-nil, zero value otherwise.

### GetPlanOk

`func (o *ResearchResponse) GetPlanOk() (*ResearchPlan, bool)`

GetPlanOk returns a tuple with the Plan field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlan

`func (o *ResearchResponse) SetPlan(v ResearchPlan)`

SetPlan sets Plan field to given value.


### GetHow

`func (o *ResearchResponse) GetHow() string`

GetHow returns the How field if non-nil, zero value otherwise.

### GetHowOk

`func (o *ResearchResponse) GetHowOk() (*string, bool)`

GetHowOk returns a tuple with the How field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHow

`func (o *ResearchResponse) SetHow(v string)`

SetHow sets How field to given value.


### GetFramedBy

`func (o *ResearchResponse) GetFramedBy() string`

GetFramedBy returns the FramedBy field if non-nil, zero value otherwise.

### GetFramedByOk

`func (o *ResearchResponse) GetFramedByOk() (*string, bool)`

GetFramedByOk returns a tuple with the FramedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFramedBy

`func (o *ResearchResponse) SetFramedBy(v string)`

SetFramedBy sets FramedBy field to given value.

### HasFramedBy

`func (o *ResearchResponse) HasFramedBy() bool`

HasFramedBy returns a boolean if a field has been set.

### GetCount

`func (o *ResearchResponse) GetCount() int32`

GetCount returns the Count field if non-nil, zero value otherwise.

### GetCountOk

`func (o *ResearchResponse) GetCountOk() (*int32, bool)`

GetCountOk returns a tuple with the Count field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCount

`func (o *ResearchResponse) SetCount(v int32)`

SetCount sets Count field to given value.

### HasCount

`func (o *ResearchResponse) HasCount() bool`

HasCount returns a boolean if a field has been set.

### SetCountNil

`func (o *ResearchResponse) SetCountNil(b bool)`

 SetCountNil sets the value for Count to be an explicit nil

### UnsetCount
`func (o *ResearchResponse) UnsetCount()`

UnsetCount ensures that no value is present for Count, not even an explicit nil
### GetRows

`func (o *ResearchResponse) GetRows() []ResearchResponseRowsInner`

GetRows returns the Rows field if non-nil, zero value otherwise.

### GetRowsOk

`func (o *ResearchResponse) GetRowsOk() (*[]ResearchResponseRowsInner, bool)`

GetRowsOk returns a tuple with the Rows field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRows

`func (o *ResearchResponse) SetRows(v []ResearchResponseRowsInner)`

SetRows sets Rows field to given value.


### GetGroups

`func (o *ResearchResponse) GetGroups() []ResearchResponseGroupsInner`

GetGroups returns the Groups field if non-nil, zero value otherwise.

### GetGroupsOk

`func (o *ResearchResponse) GetGroupsOk() (*[]ResearchResponseGroupsInner, bool)`

GetGroupsOk returns a tuple with the Groups field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroups

`func (o *ResearchResponse) SetGroups(v []ResearchResponseGroupsInner)`

SetGroups sets Groups field to given value.

### HasGroups

`func (o *ResearchResponse) HasGroups() bool`

HasGroups returns a boolean if a field has been set.

### SetGroupsNil

`func (o *ResearchResponse) SetGroupsNil(b bool)`

 SetGroupsNil sets the value for Groups to be an explicit nil

### UnsetGroups
`func (o *ResearchResponse) UnsetGroups()`

UnsetGroups ensures that no value is present for Groups, not even an explicit nil
### GetRead

`func (o *ResearchResponse) GetRead() []ResearchResponseReadInner`

GetRead returns the Read field if non-nil, zero value otherwise.

### GetReadOk

`func (o *ResearchResponse) GetReadOk() (*[]ResearchResponseReadInner, bool)`

GetReadOk returns a tuple with the Read field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRead

`func (o *ResearchResponse) SetRead(v []ResearchResponseReadInner)`

SetRead sets Read field to given value.


### GetMemory

`func (o *ResearchResponse) GetMemory() []string`

GetMemory returns the Memory field if non-nil, zero value otherwise.

### GetMemoryOk

`func (o *ResearchResponse) GetMemoryOk() (*[]string, bool)`

GetMemoryOk returns a tuple with the Memory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemory

`func (o *ResearchResponse) SetMemory(v []string)`

SetMemory sets Memory field to given value.

### HasMemory

`func (o *ResearchResponse) HasMemory() bool`

HasMemory returns a boolean if a field has been set.

### GetRounds

`func (o *ResearchResponse) GetRounds() int32`

GetRounds returns the Rounds field if non-nil, zero value otherwise.

### GetRoundsOk

`func (o *ResearchResponse) GetRoundsOk() (*int32, bool)`

GetRoundsOk returns a tuple with the Rounds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRounds

`func (o *ResearchResponse) SetRounds(v int32)`

SetRounds sets Rounds field to given value.

### HasRounds

`func (o *ResearchResponse) HasRounds() bool`

HasRounds returns a boolean if a field has been set.

### GetVerdict

`func (o *ResearchResponse) GetVerdict() string`

GetVerdict returns the Verdict field if non-nil, zero value otherwise.

### GetVerdictOk

`func (o *ResearchResponse) GetVerdictOk() (*string, bool)`

GetVerdictOk returns a tuple with the Verdict field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerdict

`func (o *ResearchResponse) SetVerdict(v string)`

SetVerdict sets Verdict field to given value.

### HasVerdict

`func (o *ResearchResponse) HasVerdict() bool`

HasVerdict returns a boolean if a field has been set.

### SetVerdictNil

`func (o *ResearchResponse) SetVerdictNil(b bool)`

 SetVerdictNil sets the value for Verdict to be an explicit nil

### UnsetVerdict
`func (o *ResearchResponse) UnsetVerdict()`

UnsetVerdict ensures that no value is present for Verdict, not even an explicit nil
### GetMs

`func (o *ResearchResponse) GetMs() int32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *ResearchResponse) GetMsOk() (*int32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *ResearchResponse) SetMs(v int32)`

SetMs sets Ms field to given value.

### HasMs

`func (o *ResearchResponse) HasMs() bool`

HasMs returns a boolean if a field has been set.

### GetNext

`func (o *ResearchResponse) GetNext() ResearchFollowUp`

GetNext returns the Next field if non-nil, zero value otherwise.

### GetNextOk

`func (o *ResearchResponse) GetNextOk() (*ResearchFollowUp, bool)`

GetNextOk returns a tuple with the Next field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNext

`func (o *ResearchResponse) SetNext(v ResearchFollowUp)`

SetNext sets Next field to given value.


### GetAttachment

`func (o *ResearchResponse) GetAttachment() ResearchResponseAttachment`

GetAttachment returns the Attachment field if non-nil, zero value otherwise.

### GetAttachmentOk

`func (o *ResearchResponse) GetAttachmentOk() (*ResearchResponseAttachment, bool)`

GetAttachmentOk returns a tuple with the Attachment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttachment

`func (o *ResearchResponse) SetAttachment(v ResearchResponseAttachment)`

SetAttachment sets Attachment field to given value.

### HasAttachment

`func (o *ResearchResponse) HasAttachment() bool`

HasAttachment returns a boolean if a field has been set.

### SetAttachmentNil

`func (o *ResearchResponse) SetAttachmentNil(b bool)`

 SetAttachmentNil sets the value for Attachment to be an explicit nil

### UnsetAttachment
`func (o *ResearchResponse) UnsetAttachment()`

UnsetAttachment ensures that no value is present for Attachment, not even an explicit nil
### GetSize

`func (o *ResearchResponse) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *ResearchResponse) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *ResearchResponse) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *ResearchResponse) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetNewest

`func (o *ResearchResponse) GetNewest() int64`

GetNewest returns the Newest field if non-nil, zero value otherwise.

### GetNewestOk

`func (o *ResearchResponse) GetNewestOk() (*int64, bool)`

GetNewestOk returns a tuple with the Newest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNewest

`func (o *ResearchResponse) SetNewest(v int64)`

SetNewest sets Newest field to given value.

### HasNewest

`func (o *ResearchResponse) HasNewest() bool`

HasNewest returns a boolean if a field has been set.

### SetNewestNil

`func (o *ResearchResponse) SetNewestNil(b bool)`

 SetNewestNil sets the value for Newest to be an explicit nil

### UnsetNewest
`func (o *ResearchResponse) UnsetNewest()`

UnsetNewest ensures that no value is present for Newest, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


