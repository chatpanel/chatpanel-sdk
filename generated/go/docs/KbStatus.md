# KbStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Name** | **string** |  | 
**V** | Pointer to **int32** |  | [optional] 
**CreatedAt** | Pointer to **int64** |  | [optional] 
**UpdatedAt** | Pointer to **int64** |  | [optional] 
**Docs** | **int32** |  | 
**Chunks** | **int32** |  | 
**Notes** | **int32** |  | 
**Proposed** | Pointer to **int32** | Notes awaiting acceptance. | [optional] 
**Vectors** | **int32** |  | 
**Model** | Pointer to **string** | The embedding model the vectors came from. | [optional] 
**Dims** | Pointer to **int32** |  | [optional] 
**Embed** | Pointer to **string** |  | [optional] 
**Entities** | **int32** |  | 
**Edges** | **int32** |  | 
**Reach** | Pointer to **string** | The tightest provenance of its documents (&#x60;internal&#x60;, &#x60;web&#x60;, or empty). | [optional] 
**Access** | Pointer to [**KbAccess**](KbAccess.md) |  | [optional] 
**Documents** | [**[]KbDocument**](KbDocument.md) |  | 
**Bytes** | Pointer to **int64** | On disk. | [optional] 
**Dir** | Pointer to **string** | The folder on disk — to a caller with the token only. | [optional] 

## Methods

### NewKbStatus

`func NewKbStatus(id string, name string, docs int32, chunks int32, notes int32, vectors int32, entities int32, edges int32, documents []KbDocument, ) *KbStatus`

NewKbStatus instantiates a new KbStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewKbStatusWithDefaults

`func NewKbStatusWithDefaults() *KbStatus`

NewKbStatusWithDefaults instantiates a new KbStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *KbStatus) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *KbStatus) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *KbStatus) SetId(v string)`

SetId sets Id field to given value.


### GetName

`func (o *KbStatus) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *KbStatus) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *KbStatus) SetName(v string)`

SetName sets Name field to given value.


### GetV

`func (o *KbStatus) GetV() int32`

GetV returns the V field if non-nil, zero value otherwise.

### GetVOk

`func (o *KbStatus) GetVOk() (*int32, bool)`

GetVOk returns a tuple with the V field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetV

`func (o *KbStatus) SetV(v int32)`

SetV sets V field to given value.

### HasV

`func (o *KbStatus) HasV() bool`

HasV returns a boolean if a field has been set.

### GetCreatedAt

`func (o *KbStatus) GetCreatedAt() int64`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *KbStatus) GetCreatedAtOk() (*int64, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *KbStatus) SetCreatedAt(v int64)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *KbStatus) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *KbStatus) GetUpdatedAt() int64`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *KbStatus) GetUpdatedAtOk() (*int64, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *KbStatus) SetUpdatedAt(v int64)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *KbStatus) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### GetDocs

`func (o *KbStatus) GetDocs() int32`

GetDocs returns the Docs field if non-nil, zero value otherwise.

### GetDocsOk

`func (o *KbStatus) GetDocsOk() (*int32, bool)`

GetDocsOk returns a tuple with the Docs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocs

`func (o *KbStatus) SetDocs(v int32)`

SetDocs sets Docs field to given value.


### GetChunks

`func (o *KbStatus) GetChunks() int32`

GetChunks returns the Chunks field if non-nil, zero value otherwise.

### GetChunksOk

`func (o *KbStatus) GetChunksOk() (*int32, bool)`

GetChunksOk returns a tuple with the Chunks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChunks

`func (o *KbStatus) SetChunks(v int32)`

SetChunks sets Chunks field to given value.


### GetNotes

`func (o *KbStatus) GetNotes() int32`

GetNotes returns the Notes field if non-nil, zero value otherwise.

### GetNotesOk

`func (o *KbStatus) GetNotesOk() (*int32, bool)`

GetNotesOk returns a tuple with the Notes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNotes

`func (o *KbStatus) SetNotes(v int32)`

SetNotes sets Notes field to given value.


### GetProposed

`func (o *KbStatus) GetProposed() int32`

GetProposed returns the Proposed field if non-nil, zero value otherwise.

### GetProposedOk

`func (o *KbStatus) GetProposedOk() (*int32, bool)`

GetProposedOk returns a tuple with the Proposed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProposed

`func (o *KbStatus) SetProposed(v int32)`

SetProposed sets Proposed field to given value.

### HasProposed

`func (o *KbStatus) HasProposed() bool`

HasProposed returns a boolean if a field has been set.

### GetVectors

`func (o *KbStatus) GetVectors() int32`

GetVectors returns the Vectors field if non-nil, zero value otherwise.

### GetVectorsOk

`func (o *KbStatus) GetVectorsOk() (*int32, bool)`

GetVectorsOk returns a tuple with the Vectors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVectors

`func (o *KbStatus) SetVectors(v int32)`

SetVectors sets Vectors field to given value.


### GetModel

`func (o *KbStatus) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *KbStatus) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *KbStatus) SetModel(v string)`

SetModel sets Model field to given value.

### HasModel

`func (o *KbStatus) HasModel() bool`

HasModel returns a boolean if a field has been set.

### GetDims

`func (o *KbStatus) GetDims() int32`

GetDims returns the Dims field if non-nil, zero value otherwise.

### GetDimsOk

`func (o *KbStatus) GetDimsOk() (*int32, bool)`

GetDimsOk returns a tuple with the Dims field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDims

`func (o *KbStatus) SetDims(v int32)`

SetDims sets Dims field to given value.

### HasDims

`func (o *KbStatus) HasDims() bool`

HasDims returns a boolean if a field has been set.

### GetEmbed

`func (o *KbStatus) GetEmbed() string`

GetEmbed returns the Embed field if non-nil, zero value otherwise.

### GetEmbedOk

`func (o *KbStatus) GetEmbedOk() (*string, bool)`

GetEmbedOk returns a tuple with the Embed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmbed

`func (o *KbStatus) SetEmbed(v string)`

SetEmbed sets Embed field to given value.

### HasEmbed

`func (o *KbStatus) HasEmbed() bool`

HasEmbed returns a boolean if a field has been set.

### GetEntities

`func (o *KbStatus) GetEntities() int32`

GetEntities returns the Entities field if non-nil, zero value otherwise.

### GetEntitiesOk

`func (o *KbStatus) GetEntitiesOk() (*int32, bool)`

GetEntitiesOk returns a tuple with the Entities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntities

`func (o *KbStatus) SetEntities(v int32)`

SetEntities sets Entities field to given value.


### GetEdges

`func (o *KbStatus) GetEdges() int32`

GetEdges returns the Edges field if non-nil, zero value otherwise.

### GetEdgesOk

`func (o *KbStatus) GetEdgesOk() (*int32, bool)`

GetEdgesOk returns a tuple with the Edges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEdges

`func (o *KbStatus) SetEdges(v int32)`

SetEdges sets Edges field to given value.


### GetReach

`func (o *KbStatus) GetReach() string`

GetReach returns the Reach field if non-nil, zero value otherwise.

### GetReachOk

`func (o *KbStatus) GetReachOk() (*string, bool)`

GetReachOk returns a tuple with the Reach field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReach

`func (o *KbStatus) SetReach(v string)`

SetReach sets Reach field to given value.

### HasReach

`func (o *KbStatus) HasReach() bool`

HasReach returns a boolean if a field has been set.

### GetAccess

`func (o *KbStatus) GetAccess() KbAccess`

GetAccess returns the Access field if non-nil, zero value otherwise.

### GetAccessOk

`func (o *KbStatus) GetAccessOk() (*KbAccess, bool)`

GetAccessOk returns a tuple with the Access field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccess

`func (o *KbStatus) SetAccess(v KbAccess)`

SetAccess sets Access field to given value.

### HasAccess

`func (o *KbStatus) HasAccess() bool`

HasAccess returns a boolean if a field has been set.

### GetDocuments

`func (o *KbStatus) GetDocuments() []KbDocument`

GetDocuments returns the Documents field if non-nil, zero value otherwise.

### GetDocumentsOk

`func (o *KbStatus) GetDocumentsOk() (*[]KbDocument, bool)`

GetDocumentsOk returns a tuple with the Documents field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocuments

`func (o *KbStatus) SetDocuments(v []KbDocument)`

SetDocuments sets Documents field to given value.


### GetBytes

`func (o *KbStatus) GetBytes() int64`

GetBytes returns the Bytes field if non-nil, zero value otherwise.

### GetBytesOk

`func (o *KbStatus) GetBytesOk() (*int64, bool)`

GetBytesOk returns a tuple with the Bytes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBytes

`func (o *KbStatus) SetBytes(v int64)`

SetBytes sets Bytes field to given value.

### HasBytes

`func (o *KbStatus) HasBytes() bool`

HasBytes returns a boolean if a field has been set.

### GetDir

`func (o *KbStatus) GetDir() string`

GetDir returns the Dir field if non-nil, zero value otherwise.

### GetDirOk

`func (o *KbStatus) GetDirOk() (*string, bool)`

GetDirOk returns a tuple with the Dir field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDir

`func (o *KbStatus) SetDir(v string)`

SetDir sets Dir field to given value.

### HasDir

`func (o *KbStatus) HasDir() bool`

HasDir returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


