# ReadRestriction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Reason** | **string** | &#x60;robots&#x60; and &#x60;tdm&#x60; come only from a hosted (crawler) provider; on the user&#39;s machine the reader is a user agent. | 
**Detail** | Pointer to **string** |  | [optional] 

## Methods

### NewReadRestriction

`func NewReadRestriction(reason string, ) *ReadRestriction`

NewReadRestriction instantiates a new ReadRestriction object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewReadRestrictionWithDefaults

`func NewReadRestrictionWithDefaults() *ReadRestriction`

NewReadRestrictionWithDefaults instantiates a new ReadRestriction object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetReason

`func (o *ReadRestriction) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *ReadRestriction) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *ReadRestriction) SetReason(v string)`

SetReason sets Reason field to given value.


### GetDetail

`func (o *ReadRestriction) GetDetail() string`

GetDetail returns the Detail field if non-nil, zero value otherwise.

### GetDetailOk

`func (o *ReadRestriction) GetDetailOk() (*string, bool)`

GetDetailOk returns a tuple with the Detail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetail

`func (o *ReadRestriction) SetDetail(v string)`

SetDetail sets Detail field to given value.

### HasDetail

`func (o *ReadRestriction) HasDetail() bool`

HasDetail returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


