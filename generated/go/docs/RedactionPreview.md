# RedactionPreview

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **string** | What the model would receive. | 
**Count** | **int32** |  | 
**Sanitized** | Pointer to **int32** |  | [optional] 
**Tier** | Pointer to **string** |  | [optional] 
**Entities** | Pointer to **[]map[string]interface{}** | Placeholder tokens and their types — never the real values. | [optional] 
**Detector** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

## Methods

### NewRedactionPreview

`func NewRedactionPreview(text string, count int32, ) *RedactionPreview`

NewRedactionPreview instantiates a new RedactionPreview object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRedactionPreviewWithDefaults

`func NewRedactionPreviewWithDefaults() *RedactionPreview`

NewRedactionPreviewWithDefaults instantiates a new RedactionPreview object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetText

`func (o *RedactionPreview) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *RedactionPreview) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *RedactionPreview) SetText(v string)`

SetText sets Text field to given value.


### GetCount

`func (o *RedactionPreview) GetCount() int32`

GetCount returns the Count field if non-nil, zero value otherwise.

### GetCountOk

`func (o *RedactionPreview) GetCountOk() (*int32, bool)`

GetCountOk returns a tuple with the Count field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCount

`func (o *RedactionPreview) SetCount(v int32)`

SetCount sets Count field to given value.


### GetSanitized

`func (o *RedactionPreview) GetSanitized() int32`

GetSanitized returns the Sanitized field if non-nil, zero value otherwise.

### GetSanitizedOk

`func (o *RedactionPreview) GetSanitizedOk() (*int32, bool)`

GetSanitizedOk returns a tuple with the Sanitized field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSanitized

`func (o *RedactionPreview) SetSanitized(v int32)`

SetSanitized sets Sanitized field to given value.

### HasSanitized

`func (o *RedactionPreview) HasSanitized() bool`

HasSanitized returns a boolean if a field has been set.

### GetTier

`func (o *RedactionPreview) GetTier() string`

GetTier returns the Tier field if non-nil, zero value otherwise.

### GetTierOk

`func (o *RedactionPreview) GetTierOk() (*string, bool)`

GetTierOk returns a tuple with the Tier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTier

`func (o *RedactionPreview) SetTier(v string)`

SetTier sets Tier field to given value.

### HasTier

`func (o *RedactionPreview) HasTier() bool`

HasTier returns a boolean if a field has been set.

### GetEntities

`func (o *RedactionPreview) GetEntities() []map[string]interface{}`

GetEntities returns the Entities field if non-nil, zero value otherwise.

### GetEntitiesOk

`func (o *RedactionPreview) GetEntitiesOk() (*[]map[string]interface{}, bool)`

GetEntitiesOk returns a tuple with the Entities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntities

`func (o *RedactionPreview) SetEntities(v []map[string]interface{})`

SetEntities sets Entities field to given value.

### HasEntities

`func (o *RedactionPreview) HasEntities() bool`

HasEntities returns a boolean if a field has been set.

### GetDetector

`func (o *RedactionPreview) GetDetector() map[string]interface{}`

GetDetector returns the Detector field if non-nil, zero value otherwise.

### GetDetectorOk

`func (o *RedactionPreview) GetDetectorOk() (*map[string]interface{}, bool)`

GetDetectorOk returns a tuple with the Detector field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetector

`func (o *RedactionPreview) SetDetector(v map[string]interface{})`

SetDetector sets Detector field to given value.

### HasDetector

`func (o *RedactionPreview) HasDetector() bool`

HasDetector returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


