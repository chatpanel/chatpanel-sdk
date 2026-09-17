# ErrorResponseErrorOneOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **string** |  | 
**Type** | Pointer to **string** | A stable machine word — &#x60;not_found&#x60;, &#x60;invalid_request&#x60;, &#x60;unavailable&#x60;, … | [optional] 

## Methods

### NewErrorResponseErrorOneOf

`func NewErrorResponseErrorOneOf(message string, ) *ErrorResponseErrorOneOf`

NewErrorResponseErrorOneOf instantiates a new ErrorResponseErrorOneOf object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewErrorResponseErrorOneOfWithDefaults

`func NewErrorResponseErrorOneOfWithDefaults() *ErrorResponseErrorOneOf`

NewErrorResponseErrorOneOfWithDefaults instantiates a new ErrorResponseErrorOneOf object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMessage

`func (o *ErrorResponseErrorOneOf) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *ErrorResponseErrorOneOf) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *ErrorResponseErrorOneOf) SetMessage(v string)`

SetMessage sets Message field to given value.


### GetType

`func (o *ErrorResponseErrorOneOf) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ErrorResponseErrorOneOf) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ErrorResponseErrorOneOf) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ErrorResponseErrorOneOf) HasType() bool`

HasType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


