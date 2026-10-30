# KbGraphResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Node** | [**KbGraphResponseNode**](KbGraphResponseNode.md) |  | 
**Neighbours** | [**[]KbGraphResponseNeighboursInner**](KbGraphResponseNeighboursInner.md) |  | 
**To** | Pointer to **string** |  | [optional] 
**Path** | Pointer to [**[]KbGraphResponsePathInner**](KbGraphResponsePathInner.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewKbGraphResponse

`func NewKbGraphResponse(node KbGraphResponseNode, neighbours []KbGraphResponseNeighboursInner, ) *KbGraphResponse`

NewKbGraphResponse instantiates a new KbGraphResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbGraphResponseWithDefaults

`func NewKbGraphResponseWithDefaults() *KbGraphResponse`

NewKbGraphResponseWithDefaults instantiates a new KbGraphResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNode

`func (o *KbGraphResponse) GetNode() KbGraphResponseNode`

GetNode returns the Node field if non-nil, zero value otherwise.

### GetNodeOk

`func (o *KbGraphResponse) GetNodeOk() (*KbGraphResponseNode, bool)`

GetNodeOk returns a tuple with the Node field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNode

`func (o *KbGraphResponse) SetNode(v KbGraphResponseNode)`

SetNode sets Node field to given value.


### GetNeighbours

`func (o *KbGraphResponse) GetNeighbours() []KbGraphResponseNeighboursInner`

GetNeighbours returns the Neighbours field if non-nil, zero value otherwise.

### GetNeighboursOk

`func (o *KbGraphResponse) GetNeighboursOk() (*[]KbGraphResponseNeighboursInner, bool)`

GetNeighboursOk returns a tuple with the Neighbours field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNeighbours

`func (o *KbGraphResponse) SetNeighbours(v []KbGraphResponseNeighboursInner)`

SetNeighbours sets Neighbours field to given value.


### GetTo

`func (o *KbGraphResponse) GetTo() string`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *KbGraphResponse) GetToOk() (*string, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *KbGraphResponse) SetTo(v string)`

SetTo sets To field to given value.

### HasTo

`func (o *KbGraphResponse) HasTo() bool`

HasTo returns a boolean if a field has been set.

### GetPath

`func (o *KbGraphResponse) GetPath() []KbGraphResponsePathInner`

GetPath returns the Path field if non-nil, zero value otherwise.

### GetPathOk

`func (o *KbGraphResponse) GetPathOk() (*[]KbGraphResponsePathInner, bool)`

GetPathOk returns a tuple with the Path field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPath

`func (o *KbGraphResponse) SetPath(v []KbGraphResponsePathInner)`

SetPath sets Path field to given value.

### HasPath

`func (o *KbGraphResponse) HasPath() bool`

HasPath returns a boolean if a field has been set.

### GetMessage

`func (o *KbGraphResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *KbGraphResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *KbGraphResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *KbGraphResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


