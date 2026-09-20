# ExtractRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | The file name — its extension helps tell office formats apart. | [optional] 
**Type** | Pointer to **string** | The client&#39;s guess at the type (e.g. &#x60;pdf&#x60;, &#x60;docx&#x60;); the bytes decide. | [optional] 
**Data** | Pointer to **string** | The whole file, base64. At most 64 MB decoded. | [optional] 
**Hash** | Pointer to **string** | The &#x60;hash&#x60; an open call returned. | [optional] 
**Page** | Pointer to **int32** | The page to read, 1-based. | [optional] 
**BudgetMs** | Pointer to **float32** | Refused before parsing if the worker&#39;s record predicts it cannot be met. | [optional] 

## Methods

### NewExtractRequest

`func NewExtractRequest() *ExtractRequest`

NewExtractRequest instantiates a new ExtractRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExtractRequestWithDefaults

`func NewExtractRequestWithDefaults() *ExtractRequest`

NewExtractRequestWithDefaults instantiates a new ExtractRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *ExtractRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ExtractRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ExtractRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ExtractRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetType

`func (o *ExtractRequest) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ExtractRequest) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ExtractRequest) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ExtractRequest) HasType() bool`

HasType returns a boolean if a field has been set.

### GetData

`func (o *ExtractRequest) GetData() string`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *ExtractRequest) GetDataOk() (*string, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *ExtractRequest) SetData(v string)`

SetData sets Data field to given value.

### HasData

`func (o *ExtractRequest) HasData() bool`

HasData returns a boolean if a field has been set.

### GetHash

`func (o *ExtractRequest) GetHash() string`

GetHash returns the Hash field if non-nil, zero value otherwise.

### GetHashOk

`func (o *ExtractRequest) GetHashOk() (*string, bool)`

GetHashOk returns a tuple with the Hash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHash

`func (o *ExtractRequest) SetHash(v string)`

SetHash sets Hash field to given value.

### HasHash

`func (o *ExtractRequest) HasHash() bool`

HasHash returns a boolean if a field has been set.

### GetPage

`func (o *ExtractRequest) GetPage() int32`

GetPage returns the Page field if non-nil, zero value otherwise.

### GetPageOk

`func (o *ExtractRequest) GetPageOk() (*int32, bool)`

GetPageOk returns a tuple with the Page field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPage

`func (o *ExtractRequest) SetPage(v int32)`

SetPage sets Page field to given value.

### HasPage

`func (o *ExtractRequest) HasPage() bool`

HasPage returns a boolean if a field has been set.

### GetBudgetMs

`func (o *ExtractRequest) GetBudgetMs() float32`

GetBudgetMs returns the BudgetMs field if non-nil, zero value otherwise.

### GetBudgetMsOk

`func (o *ExtractRequest) GetBudgetMsOk() (*float32, bool)`

GetBudgetMsOk returns a tuple with the BudgetMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetMs

`func (o *ExtractRequest) SetBudgetMs(v float32)`

SetBudgetMs sets BudgetMs field to given value.

### HasBudgetMs

`func (o *ExtractRequest) HasBudgetMs() bool`

HasBudgetMs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


