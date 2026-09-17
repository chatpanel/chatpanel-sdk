# Prefs

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Revision** | **int32** |  | 
**Sections** | Pointer to [**map[string]PrefSection**](PrefSection.md) |  | [optional] 
**Stamps** | Pointer to **map[string]int64** |  | [optional] 

## Methods

### NewPrefs

`func NewPrefs(ok bool, revision int32, ) *Prefs`

NewPrefs instantiates a new Prefs object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPrefsWithDefaults

`func NewPrefsWithDefaults() *Prefs`

NewPrefsWithDefaults instantiates a new Prefs object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *Prefs) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *Prefs) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *Prefs) SetOk(v bool)`

SetOk sets Ok field to given value.


### GetRevision

`func (o *Prefs) GetRevision() int32`

GetRevision returns the Revision field if non-nil, zero value otherwise.

### GetRevisionOk

`func (o *Prefs) GetRevisionOk() (*int32, bool)`

GetRevisionOk returns a tuple with the Revision field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRevision

`func (o *Prefs) SetRevision(v int32)`

SetRevision sets Revision field to given value.


### GetSections

`func (o *Prefs) GetSections() map[string]PrefSection`

GetSections returns the Sections field if non-nil, zero value otherwise.

### GetSectionsOk

`func (o *Prefs) GetSectionsOk() (*map[string]PrefSection, bool)`

GetSectionsOk returns a tuple with the Sections field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSections

`func (o *Prefs) SetSections(v map[string]PrefSection)`

SetSections sets Sections field to given value.

### HasSections

`func (o *Prefs) HasSections() bool`

HasSections returns a boolean if a field has been set.

### GetStamps

`func (o *Prefs) GetStamps() map[string]int64`

GetStamps returns the Stamps field if non-nil, zero value otherwise.

### GetStampsOk

`func (o *Prefs) GetStampsOk() (*map[string]int64, bool)`

GetStampsOk returns a tuple with the Stamps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStamps

`func (o *Prefs) SetStamps(v map[string]int64)`

SetStamps sets Stamps field to given value.

### HasStamps

`func (o *Prefs) HasStamps() bool`

HasStamps returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


