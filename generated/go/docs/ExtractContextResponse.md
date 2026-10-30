# ExtractContextResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attachment** | [**ExtractContextResponseAttachment**](ExtractContextResponseAttachment.md) |  | 
**Read** | [**[]ExtractContextResponseReadInner**](ExtractContextResponseReadInner.md) |  | 
**Skipped** | [**[]ExtractContextResponseSkippedInner**](ExtractContextResponseSkippedInner.md) |  | 
**How** | **string** |  | 
**BudgetChars** | **int32** |  | 
**Provider** | **string** | &#x60;chatpanel-extract&#x60;. | 
**Ms** | **float32** |  | 

## Methods

### NewExtractContextResponse

`func NewExtractContextResponse(attachment ExtractContextResponseAttachment, read []ExtractContextResponseReadInner, skipped []ExtractContextResponseSkippedInner, how string, budgetChars int32, provider string, ms float32, ) *ExtractContextResponse`

NewExtractContextResponse instantiates a new ExtractContextResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExtractContextResponseWithDefaults

`func NewExtractContextResponseWithDefaults() *ExtractContextResponse`

NewExtractContextResponseWithDefaults instantiates a new ExtractContextResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAttachment

`func (o *ExtractContextResponse) GetAttachment() ExtractContextResponseAttachment`

GetAttachment returns the Attachment field if non-nil, zero value otherwise.

### GetAttachmentOk

`func (o *ExtractContextResponse) GetAttachmentOk() (*ExtractContextResponseAttachment, bool)`

GetAttachmentOk returns a tuple with the Attachment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttachment

`func (o *ExtractContextResponse) SetAttachment(v ExtractContextResponseAttachment)`

SetAttachment sets Attachment field to given value.


### GetRead

`func (o *ExtractContextResponse) GetRead() []ExtractContextResponseReadInner`

GetRead returns the Read field if non-nil, zero value otherwise.

### GetReadOk

`func (o *ExtractContextResponse) GetReadOk() (*[]ExtractContextResponseReadInner, bool)`

GetReadOk returns a tuple with the Read field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRead

`func (o *ExtractContextResponse) SetRead(v []ExtractContextResponseReadInner)`

SetRead sets Read field to given value.


### GetSkipped

`func (o *ExtractContextResponse) GetSkipped() []ExtractContextResponseSkippedInner`

GetSkipped returns the Skipped field if non-nil, zero value otherwise.

### GetSkippedOk

`func (o *ExtractContextResponse) GetSkippedOk() (*[]ExtractContextResponseSkippedInner, bool)`

GetSkippedOk returns a tuple with the Skipped field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkipped

`func (o *ExtractContextResponse) SetSkipped(v []ExtractContextResponseSkippedInner)`

SetSkipped sets Skipped field to given value.


### GetHow

`func (o *ExtractContextResponse) GetHow() string`

GetHow returns the How field if non-nil, zero value otherwise.

### GetHowOk

`func (o *ExtractContextResponse) GetHowOk() (*string, bool)`

GetHowOk returns a tuple with the How field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHow

`func (o *ExtractContextResponse) SetHow(v string)`

SetHow sets How field to given value.


### GetBudgetChars

`func (o *ExtractContextResponse) GetBudgetChars() int32`

GetBudgetChars returns the BudgetChars field if non-nil, zero value otherwise.

### GetBudgetCharsOk

`func (o *ExtractContextResponse) GetBudgetCharsOk() (*int32, bool)`

GetBudgetCharsOk returns a tuple with the BudgetChars field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetChars

`func (o *ExtractContextResponse) SetBudgetChars(v int32)`

SetBudgetChars sets BudgetChars field to given value.


### GetProvider

`func (o *ExtractContextResponse) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *ExtractContextResponse) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *ExtractContextResponse) SetProvider(v string)`

SetProvider sets Provider field to given value.


### GetMs

`func (o *ExtractContextResponse) GetMs() float32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *ExtractContextResponse) GetMsOk() (*float32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *ExtractContextResponse) SetMs(v float32)`

SetMs sets Ms field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


