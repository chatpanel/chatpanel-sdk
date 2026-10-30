# ExtractContextRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Question** | **string** | The question the documents are read for — its content words pick the pages of a long document. | 
**Documents** | [**[]ExtractContextRequestDocumentsInner**](ExtractContextRequestDocumentsInner.md) | Each document as its bytes (&#x60;name&#x60; + &#x60;data&#x60;, optionally &#x60;type&#x60;) or as the &#x60;hash&#x60; &#x60;/v1/extract&#x60; returned for one already open (optionally &#x60;name&#x60;, the title the block shows). | 
**Window** | Pointer to **int32** | The answering model&#39;s window in tokens — sizes the share the documents may take. Absent: a small window&#39;s share. | [optional] 
**BudgetChars** | Pointer to **int32** | The share outright, in characters; overrides &#x60;window&#x60;. | [optional] 

## Methods

### NewExtractContextRequest

`func NewExtractContextRequest(question string, documents []ExtractContextRequestDocumentsInner, ) *ExtractContextRequest`

NewExtractContextRequest instantiates a new ExtractContextRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExtractContextRequestWithDefaults

`func NewExtractContextRequestWithDefaults() *ExtractContextRequest`

NewExtractContextRequestWithDefaults instantiates a new ExtractContextRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetQuestion

`func (o *ExtractContextRequest) GetQuestion() string`

GetQuestion returns the Question field if non-nil, zero value otherwise.

### GetQuestionOk

`func (o *ExtractContextRequest) GetQuestionOk() (*string, bool)`

GetQuestionOk returns a tuple with the Question field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuestion

`func (o *ExtractContextRequest) SetQuestion(v string)`

SetQuestion sets Question field to given value.


### GetDocuments

`func (o *ExtractContextRequest) GetDocuments() []ExtractContextRequestDocumentsInner`

GetDocuments returns the Documents field if non-nil, zero value otherwise.

### GetDocumentsOk

`func (o *ExtractContextRequest) GetDocumentsOk() (*[]ExtractContextRequestDocumentsInner, bool)`

GetDocumentsOk returns a tuple with the Documents field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocuments

`func (o *ExtractContextRequest) SetDocuments(v []ExtractContextRequestDocumentsInner)`

SetDocuments sets Documents field to given value.


### GetWindow

`func (o *ExtractContextRequest) GetWindow() int32`

GetWindow returns the Window field if non-nil, zero value otherwise.

### GetWindowOk

`func (o *ExtractContextRequest) GetWindowOk() (*int32, bool)`

GetWindowOk returns a tuple with the Window field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWindow

`func (o *ExtractContextRequest) SetWindow(v int32)`

SetWindow sets Window field to given value.

### HasWindow

`func (o *ExtractContextRequest) HasWindow() bool`

HasWindow returns a boolean if a field has been set.

### GetBudgetChars

`func (o *ExtractContextRequest) GetBudgetChars() int32`

GetBudgetChars returns the BudgetChars field if non-nil, zero value otherwise.

### GetBudgetCharsOk

`func (o *ExtractContextRequest) GetBudgetCharsOk() (*int32, bool)`

GetBudgetCharsOk returns a tuple with the BudgetChars field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetChars

`func (o *ExtractContextRequest) SetBudgetChars(v int32)`

SetBudgetChars sets BudgetChars field to given value.

### HasBudgetChars

`func (o *ExtractContextRequest) HasBudgetChars() bool`

HasBudgetChars returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


