# ReadRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **string** | Absolute http(s) URL of a public page. | 
**Format** | Pointer to **string** |  | [optional] [default to "markdown"]
**MaxChars** | Pointer to **int32** | Cut at a section boundary near this length; &#x60;truncated&#x60; says so. | [optional] 
**Snippet** | Pointer to **string** | A search snippet to stand in for the content when the page cannot be read. | [optional] 
**Provider** | Pointer to **string** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;read&#x60;; 404 otherwise. | [optional] 
**BudgetMs** | Pointer to **float32** | Refused before fetching if the provider&#39;s record predicts it cannot be met. | [optional] 

## Methods

### NewReadRequest

`func NewReadRequest(url string, ) *ReadRequest`

NewReadRequest instantiates a new ReadRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewReadRequestWithDefaults

`func NewReadRequestWithDefaults() *ReadRequest`

NewReadRequestWithDefaults instantiates a new ReadRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUrl

`func (o *ReadRequest) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *ReadRequest) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *ReadRequest) SetUrl(v string)`

SetUrl sets Url field to given value.


### GetFormat

`func (o *ReadRequest) GetFormat() string`

GetFormat returns the Format field if non-nil, zero value otherwise.

### GetFormatOk

`func (o *ReadRequest) GetFormatOk() (*string, bool)`

GetFormatOk returns a tuple with the Format field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFormat

`func (o *ReadRequest) SetFormat(v string)`

SetFormat sets Format field to given value.

### HasFormat

`func (o *ReadRequest) HasFormat() bool`

HasFormat returns a boolean if a field has been set.

### GetMaxChars

`func (o *ReadRequest) GetMaxChars() int32`

GetMaxChars returns the MaxChars field if non-nil, zero value otherwise.

### GetMaxCharsOk

`func (o *ReadRequest) GetMaxCharsOk() (*int32, bool)`

GetMaxCharsOk returns a tuple with the MaxChars field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxChars

`func (o *ReadRequest) SetMaxChars(v int32)`

SetMaxChars sets MaxChars field to given value.

### HasMaxChars

`func (o *ReadRequest) HasMaxChars() bool`

HasMaxChars returns a boolean if a field has been set.

### GetSnippet

`func (o *ReadRequest) GetSnippet() string`

GetSnippet returns the Snippet field if non-nil, zero value otherwise.

### GetSnippetOk

`func (o *ReadRequest) GetSnippetOk() (*string, bool)`

GetSnippetOk returns a tuple with the Snippet field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSnippet

`func (o *ReadRequest) SetSnippet(v string)`

SetSnippet sets Snippet field to given value.

### HasSnippet

`func (o *ReadRequest) HasSnippet() bool`

HasSnippet returns a boolean if a field has been set.

### GetProvider

`func (o *ReadRequest) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *ReadRequest) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *ReadRequest) SetProvider(v string)`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *ReadRequest) HasProvider() bool`

HasProvider returns a boolean if a field has been set.

### GetBudgetMs

`func (o *ReadRequest) GetBudgetMs() float32`

GetBudgetMs returns the BudgetMs field if non-nil, zero value otherwise.

### GetBudgetMsOk

`func (o *ReadRequest) GetBudgetMsOk() (*float32, bool)`

GetBudgetMsOk returns a tuple with the BudgetMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetMs

`func (o *ReadRequest) SetBudgetMs(v float32)`

SetBudgetMs sets BudgetMs field to given value.

### HasBudgetMs

`func (o *ReadRequest) HasBudgetMs() bool`

HasBudgetMs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


