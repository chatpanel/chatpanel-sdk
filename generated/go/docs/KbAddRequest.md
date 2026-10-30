# KbAddRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | The file name (with &#x60;data&#x60;); the title for &#x60;text&#x60; when none is given. | [optional] 
**Type** | Pointer to **string** | A type hint (&#x60;pdf&#x60;, &#x60;docx&#x60;); the bytes decide. | [optional] 
**Data** | Pointer to **string** | The whole file, base64, at most 64 MB decoded. | [optional] 
**Path** | Pointer to **string** | A file or folder on this machine (token-gated). | [optional] 
**Recursive** | Pointer to **bool** | With a folder: walk subfolders. | [optional] [default to true]
**Include** | Pointer to **[]string** | With a folder: only these extensions (&#x60;*.pdf&#x60;, &#x60;.md&#x60;). | [optional] 
**Url** | Pointer to **string** | A public http(s) page, read as Markdown. | [optional] 
**Text** | Pointer to **string** | Plain text or Markdown, up to 4 M characters. | [optional] 
**Title** | Pointer to **string** |  | [optional] 
**Reach** | Pointer to **string** | Provenance to record on the document (&#x60;internal&#x60; narrows a turn that uses it). | [optional] 

## Methods

### NewKbAddRequest

`func NewKbAddRequest() *KbAddRequest`

NewKbAddRequest instantiates a new KbAddRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbAddRequestWithDefaults

`func NewKbAddRequestWithDefaults() *KbAddRequest`

NewKbAddRequestWithDefaults instantiates a new KbAddRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *KbAddRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *KbAddRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *KbAddRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *KbAddRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetType

`func (o *KbAddRequest) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *KbAddRequest) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *KbAddRequest) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *KbAddRequest) HasType() bool`

HasType returns a boolean if a field has been set.

### GetData

`func (o *KbAddRequest) GetData() string`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *KbAddRequest) GetDataOk() (*string, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *KbAddRequest) SetData(v string)`

SetData sets Data field to given value.

### HasData

`func (o *KbAddRequest) HasData() bool`

HasData returns a boolean if a field has been set.

### GetPath

`func (o *KbAddRequest) GetPath() string`

GetPath returns the Path field if non-nil, zero value otherwise.

### GetPathOk

`func (o *KbAddRequest) GetPathOk() (*string, bool)`

GetPathOk returns a tuple with the Path field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPath

`func (o *KbAddRequest) SetPath(v string)`

SetPath sets Path field to given value.

### HasPath

`func (o *KbAddRequest) HasPath() bool`

HasPath returns a boolean if a field has been set.

### GetRecursive

`func (o *KbAddRequest) GetRecursive() bool`

GetRecursive returns the Recursive field if non-nil, zero value otherwise.

### GetRecursiveOk

`func (o *KbAddRequest) GetRecursiveOk() (*bool, bool)`

GetRecursiveOk returns a tuple with the Recursive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecursive

`func (o *KbAddRequest) SetRecursive(v bool)`

SetRecursive sets Recursive field to given value.

### HasRecursive

`func (o *KbAddRequest) HasRecursive() bool`

HasRecursive returns a boolean if a field has been set.

### GetInclude

`func (o *KbAddRequest) GetInclude() []string`

GetInclude returns the Include field if non-nil, zero value otherwise.

### GetIncludeOk

`func (o *KbAddRequest) GetIncludeOk() (*[]string, bool)`

GetIncludeOk returns a tuple with the Include field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInclude

`func (o *KbAddRequest) SetInclude(v []string)`

SetInclude sets Include field to given value.

### HasInclude

`func (o *KbAddRequest) HasInclude() bool`

HasInclude returns a boolean if a field has been set.

### GetUrl

`func (o *KbAddRequest) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *KbAddRequest) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *KbAddRequest) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *KbAddRequest) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetText

`func (o *KbAddRequest) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *KbAddRequest) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *KbAddRequest) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *KbAddRequest) HasText() bool`

HasText returns a boolean if a field has been set.

### GetTitle

`func (o *KbAddRequest) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *KbAddRequest) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *KbAddRequest) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *KbAddRequest) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetReach

`func (o *KbAddRequest) GetReach() string`

GetReach returns the Reach field if non-nil, zero value otherwise.

### GetReachOk

`func (o *KbAddRequest) GetReachOk() (*string, bool)`

GetReachOk returns a tuple with the Reach field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReach

`func (o *KbAddRequest) SetReach(v string)`

SetReach sets Reach field to given value.

### HasReach

`func (o *KbAddRequest) HasReach() bool`

HasReach returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


