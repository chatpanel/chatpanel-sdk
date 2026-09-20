# ReadSection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | The page&#39;s own heading id when it has one, else a slug — cite as &#x60;url#id&#x60;. | 
**Heading** | **string** |  | 
**Level** | **int32** |  | 
**Offset** | **int32** | Character offset of the heading line into the content. | 

## Methods

### NewReadSection

`func NewReadSection(id string, heading string, level int32, offset int32, ) *ReadSection`

NewReadSection instantiates a new ReadSection object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewReadSectionWithDefaults

`func NewReadSectionWithDefaults() *ReadSection`

NewReadSectionWithDefaults instantiates a new ReadSection object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ReadSection) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ReadSection) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ReadSection) SetId(v string)`

SetId sets Id field to given value.


### GetHeading

`func (o *ReadSection) GetHeading() string`

GetHeading returns the Heading field if non-nil, zero value otherwise.

### GetHeadingOk

`func (o *ReadSection) GetHeadingOk() (*string, bool)`

GetHeadingOk returns a tuple with the Heading field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHeading

`func (o *ReadSection) SetHeading(v string)`

SetHeading sets Heading field to given value.


### GetLevel

`func (o *ReadSection) GetLevel() int32`

GetLevel returns the Level field if non-nil, zero value otherwise.

### GetLevelOk

`func (o *ReadSection) GetLevelOk() (*int32, bool)`

GetLevelOk returns a tuple with the Level field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLevel

`func (o *ReadSection) SetLevel(v int32)`

SetLevel sets Level field to given value.


### GetOffset

`func (o *ReadSection) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *ReadSection) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *ReadSection) SetOffset(v int32)`

SetOffset sets Offset field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


