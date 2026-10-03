# LinkListFiles200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Folder** | Pointer to **string** |  | [optional] 
**Files** | [**[]LinkPartnerFile**](LinkPartnerFile.md) |  | 

## Methods

### NewLinkListFiles200Response

`func NewLinkListFiles200Response(files []LinkPartnerFile, ) *LinkListFiles200Response`

NewLinkListFiles200Response instantiates a new LinkListFiles200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLinkListFiles200ResponseWithDefaults

`func NewLinkListFiles200ResponseWithDefaults() *LinkListFiles200Response`

NewLinkListFiles200ResponseWithDefaults instantiates a new LinkListFiles200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFolder

`func (o *LinkListFiles200Response) GetFolder() string`

GetFolder returns the Folder field if non-nil, zero value otherwise.

### GetFolderOk

`func (o *LinkListFiles200Response) GetFolderOk() (*string, bool)`

GetFolderOk returns a tuple with the Folder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFolder

`func (o *LinkListFiles200Response) SetFolder(v string)`

SetFolder sets Folder field to given value.

### HasFolder

`func (o *LinkListFiles200Response) HasFolder() bool`

HasFolder returns a boolean if a field has been set.

### GetFiles

`func (o *LinkListFiles200Response) GetFiles() []LinkPartnerFile`

GetFiles returns the Files field if non-nil, zero value otherwise.

### GetFilesOk

`func (o *LinkListFiles200Response) GetFilesOk() (*[]LinkPartnerFile, bool)`

GetFilesOk returns a tuple with the Files field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFiles

`func (o *LinkListFiles200Response) SetFiles(v []LinkPartnerFile)`

SetFiles sets Files field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


