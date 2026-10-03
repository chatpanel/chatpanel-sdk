# LinkPartnerFile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Path** | **string** | Relative to the partner&#39;s folder. | 
**Size** | **int64** |  | 
**ModifiedAt** | Pointer to **int64** |  | [optional] 

## Methods

### NewLinkPartnerFile

`func NewLinkPartnerFile(path string, size int64, ) *LinkPartnerFile`

NewLinkPartnerFile instantiates a new LinkPartnerFile object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLinkPartnerFileWithDefaults

`func NewLinkPartnerFileWithDefaults() *LinkPartnerFile`

NewLinkPartnerFileWithDefaults instantiates a new LinkPartnerFile object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPath

`func (o *LinkPartnerFile) GetPath() string`

GetPath returns the Path field if non-nil, zero value otherwise.

### GetPathOk

`func (o *LinkPartnerFile) GetPathOk() (*string, bool)`

GetPathOk returns a tuple with the Path field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPath

`func (o *LinkPartnerFile) SetPath(v string)`

SetPath sets Path field to given value.


### GetSize

`func (o *LinkPartnerFile) GetSize() int64`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *LinkPartnerFile) GetSizeOk() (*int64, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *LinkPartnerFile) SetSize(v int64)`

SetSize sets Size field to given value.


### GetModifiedAt

`func (o *LinkPartnerFile) GetModifiedAt() int64`

GetModifiedAt returns the ModifiedAt field if non-nil, zero value otherwise.

### GetModifiedAtOk

`func (o *LinkPartnerFile) GetModifiedAtOk() (*int64, bool)`

GetModifiedAtOk returns a tuple with the ModifiedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModifiedAt

`func (o *LinkPartnerFile) SetModifiedAt(v int64)`

SetModifiedAt sets ModifiedAt field to given value.

### HasModifiedAt

`func (o *LinkPartnerFile) HasModifiedAt() bool`

HasModifiedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


