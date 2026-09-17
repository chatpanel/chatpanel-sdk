# PrefsWrite

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sections** | [**map[string]PrefSection**](PrefSection.md) |  | 
**By** | Pointer to **string** | Which client is writing. | [optional] 

## Methods

### NewPrefsWrite

`func NewPrefsWrite(sections map[string]PrefSection, ) *PrefsWrite`

NewPrefsWrite instantiates a new PrefsWrite object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPrefsWriteWithDefaults

`func NewPrefsWriteWithDefaults() *PrefsWrite`

NewPrefsWriteWithDefaults instantiates a new PrefsWrite object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSections

`func (o *PrefsWrite) GetSections() map[string]PrefSection`

GetSections returns the Sections field if non-nil, zero value otherwise.

### GetSectionsOk

`func (o *PrefsWrite) GetSectionsOk() (*map[string]PrefSection, bool)`

GetSectionsOk returns a tuple with the Sections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSections

`func (o *PrefsWrite) SetSections(v map[string]PrefSection)`

SetSections sets Sections field to given value.


### GetBy

`func (o *PrefsWrite) GetBy() string`

GetBy returns the By field if non-nil, zero value otherwise.

### GetByOk

`func (o *PrefsWrite) GetByOk() (*string, bool)`

GetByOk returns a tuple with the By field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBy

`func (o *PrefsWrite) SetBy(v string)`

SetBy sets By field to given value.

### HasBy

`func (o *PrefsWrite) HasBy() bool`

HasBy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


