# CapabilitiesDocument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Capabilities** | [**[]Capability**](Capability.md) |  | 
**Server** | [**CapabilitiesDocumentServer**](CapabilitiesDocumentServer.md) |  | 

## Methods

### NewCapabilitiesDocument

`func NewCapabilitiesDocument(capabilities []Capability, server CapabilitiesDocumentServer, ) *CapabilitiesDocument`

NewCapabilitiesDocument instantiates a new CapabilitiesDocument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCapabilitiesDocumentWithDefaults

`func NewCapabilitiesDocumentWithDefaults() *CapabilitiesDocument`

NewCapabilitiesDocumentWithDefaults instantiates a new CapabilitiesDocument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCapabilities

`func (o *CapabilitiesDocument) GetCapabilities() []Capability`

GetCapabilities returns the Capabilities field if non-nil, zero value otherwise.

### GetCapabilitiesOk

`func (o *CapabilitiesDocument) GetCapabilitiesOk() (*[]Capability, bool)`

GetCapabilitiesOk returns a tuple with the Capabilities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapabilities

`func (o *CapabilitiesDocument) SetCapabilities(v []Capability)`

SetCapabilities sets Capabilities field to given value.


### GetServer

`func (o *CapabilitiesDocument) GetServer() CapabilitiesDocumentServer`

GetServer returns the Server field if non-nil, zero value otherwise.

### GetServerOk

`func (o *CapabilitiesDocument) GetServerOk() (*CapabilitiesDocumentServer, bool)`

GetServerOk returns a tuple with the Server field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServer

`func (o *CapabilitiesDocument) SetServer(v CapabilitiesDocumentServer)`

SetServer sets Server field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


