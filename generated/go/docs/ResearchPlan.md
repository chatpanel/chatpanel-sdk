# ResearchPlan

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Intent** | Pointer to **string** |  | [optional] 
**Kind** | Pointer to **string** | meeting, note, chat — or empty for every kind. | [optional] 
**Names** | Pointer to **[]string** |  | [optional] 
**Terms** | Pointer to **[]string** |  | [optional] 
**Sort** | Pointer to **string** |  | [optional] 
**Limit** | Pointer to **int32** |  | [optional] 
**Since** | Pointer to **int64** |  | [optional] 
**After** | Pointer to **int64** |  | [optional] 
**Before** | Pointer to **int64** |  | [optional] 
**Group** | Pointer to **string** | person, month, week, day — or empty. | [optional] 
**ReadFull** | Pointer to **bool** |  | [optional] 
**FollowUp** | Pointer to **bool** |  | [optional] 
**Target** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewResearchPlan

`func NewResearchPlan() *ResearchPlan`

NewResearchPlan instantiates a new ResearchPlan object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResearchPlanWithDefaults

`func NewResearchPlanWithDefaults() *ResearchPlan`

NewResearchPlanWithDefaults instantiates a new ResearchPlan object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIntent

`func (o *ResearchPlan) GetIntent() string`

GetIntent returns the Intent field if non-nil, zero value otherwise.

### GetIntentOk

`func (o *ResearchPlan) GetIntentOk() (*string, bool)`

GetIntentOk returns a tuple with the Intent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIntent

`func (o *ResearchPlan) SetIntent(v string)`

SetIntent sets Intent field to given value.

### HasIntent

`func (o *ResearchPlan) HasIntent() bool`

HasIntent returns a boolean if a field has been set.

### GetKind

`func (o *ResearchPlan) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *ResearchPlan) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *ResearchPlan) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *ResearchPlan) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetNames

`func (o *ResearchPlan) GetNames() []string`

GetNames returns the Names field if non-nil, zero value otherwise.

### GetNamesOk

`func (o *ResearchPlan) GetNamesOk() (*[]string, bool)`

GetNamesOk returns a tuple with the Names field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNames

`func (o *ResearchPlan) SetNames(v []string)`

SetNames sets Names field to given value.

### HasNames

`func (o *ResearchPlan) HasNames() bool`

HasNames returns a boolean if a field has been set.

### GetTerms

`func (o *ResearchPlan) GetTerms() []string`

GetTerms returns the Terms field if non-nil, zero value otherwise.

### GetTermsOk

`func (o *ResearchPlan) GetTermsOk() (*[]string, bool)`

GetTermsOk returns a tuple with the Terms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTerms

`func (o *ResearchPlan) SetTerms(v []string)`

SetTerms sets Terms field to given value.

### HasTerms

`func (o *ResearchPlan) HasTerms() bool`

HasTerms returns a boolean if a field has been set.

### GetSort

`func (o *ResearchPlan) GetSort() string`

GetSort returns the Sort field if non-nil, zero value otherwise.

### GetSortOk

`func (o *ResearchPlan) GetSortOk() (*string, bool)`

GetSortOk returns a tuple with the Sort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSort

`func (o *ResearchPlan) SetSort(v string)`

SetSort sets Sort field to given value.

### HasSort

`func (o *ResearchPlan) HasSort() bool`

HasSort returns a boolean if a field has been set.

### GetLimit

`func (o *ResearchPlan) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *ResearchPlan) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *ResearchPlan) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *ResearchPlan) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetSince

`func (o *ResearchPlan) GetSince() int64`

GetSince returns the Since field if non-nil, zero value otherwise.

### GetSinceOk

`func (o *ResearchPlan) GetSinceOk() (*int64, bool)`

GetSinceOk returns a tuple with the Since field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSince

`func (o *ResearchPlan) SetSince(v int64)`

SetSince sets Since field to given value.

### HasSince

`func (o *ResearchPlan) HasSince() bool`

HasSince returns a boolean if a field has been set.

### GetAfter

`func (o *ResearchPlan) GetAfter() int64`

GetAfter returns the After field if non-nil, zero value otherwise.

### GetAfterOk

`func (o *ResearchPlan) GetAfterOk() (*int64, bool)`

GetAfterOk returns a tuple with the After field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAfter

`func (o *ResearchPlan) SetAfter(v int64)`

SetAfter sets After field to given value.

### HasAfter

`func (o *ResearchPlan) HasAfter() bool`

HasAfter returns a boolean if a field has been set.

### GetBefore

`func (o *ResearchPlan) GetBefore() int64`

GetBefore returns the Before field if non-nil, zero value otherwise.

### GetBeforeOk

`func (o *ResearchPlan) GetBeforeOk() (*int64, bool)`

GetBeforeOk returns a tuple with the Before field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBefore

`func (o *ResearchPlan) SetBefore(v int64)`

SetBefore sets Before field to given value.

### HasBefore

`func (o *ResearchPlan) HasBefore() bool`

HasBefore returns a boolean if a field has been set.

### GetGroup

`func (o *ResearchPlan) GetGroup() string`

GetGroup returns the Group field if non-nil, zero value otherwise.

### GetGroupOk

`func (o *ResearchPlan) GetGroupOk() (*string, bool)`

GetGroupOk returns a tuple with the Group field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroup

`func (o *ResearchPlan) SetGroup(v string)`

SetGroup sets Group field to given value.

### HasGroup

`func (o *ResearchPlan) HasGroup() bool`

HasGroup returns a boolean if a field has been set.

### GetReadFull

`func (o *ResearchPlan) GetReadFull() bool`

GetReadFull returns the ReadFull field if non-nil, zero value otherwise.

### GetReadFullOk

`func (o *ResearchPlan) GetReadFullOk() (*bool, bool)`

GetReadFullOk returns a tuple with the ReadFull field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReadFull

`func (o *ResearchPlan) SetReadFull(v bool)`

SetReadFull sets ReadFull field to given value.

### HasReadFull

`func (o *ResearchPlan) HasReadFull() bool`

HasReadFull returns a boolean if a field has been set.

### GetFollowUp

`func (o *ResearchPlan) GetFollowUp() bool`

GetFollowUp returns the FollowUp field if non-nil, zero value otherwise.

### GetFollowUpOk

`func (o *ResearchPlan) GetFollowUpOk() (*bool, bool)`

GetFollowUpOk returns a tuple with the FollowUp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFollowUp

`func (o *ResearchPlan) SetFollowUp(v bool)`

SetFollowUp sets FollowUp field to given value.

### HasFollowUp

`func (o *ResearchPlan) HasFollowUp() bool`

HasFollowUp returns a boolean if a field has been set.

### GetTarget

`func (o *ResearchPlan) GetTarget() string`

GetTarget returns the Target field if non-nil, zero value otherwise.

### GetTargetOk

`func (o *ResearchPlan) GetTargetOk() (*string, bool)`

GetTargetOk returns a tuple with the Target field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTarget

`func (o *ResearchPlan) SetTarget(v string)`

SetTarget sets Target field to given value.

### HasTarget

`func (o *ResearchPlan) HasTarget() bool`

HasTarget returns a boolean if a field has been set.

### SetTargetNil

`func (o *ResearchPlan) SetTargetNil(b bool)`

 SetTargetNil sets the value for Target to be an explicit nil

### UnsetTarget
`func (o *ResearchPlan) UnsetTarget()`

UnsetTarget ensures that no value is present for Target, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


