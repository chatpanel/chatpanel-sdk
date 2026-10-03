# LinkApproval

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Partner** | **string** | The partner whose agent asks. | 
**Device** | Pointer to **string** |  | [optional] 
**Conversation** | Pointer to **string** | The partner&#39;s conversation (&#x60;partner.&lt;device&gt;.&lt;thread&gt;&#x60;), or the turn&#39;s own. | [optional] 
**Title** | **string** | Who asks and what kind of action — \&quot;Atlas’s agent asks — run a command?\&quot; | 
**Body** | **string** | The command | 
**Tool** | Pointer to **string** |  | [optional] 
**CreatedAt** | **int64** |  | 
**ExpiresAt** | **int64** | When it becomes a no. | 

## Methods

### NewLinkApproval

`func NewLinkApproval(id string, partner string, title string, body string, createdAt int64, expiresAt int64, ) *LinkApproval`

NewLinkApproval instantiates a new LinkApproval object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLinkApprovalWithDefaults

`func NewLinkApprovalWithDefaults() *LinkApproval`

NewLinkApprovalWithDefaults instantiates a new LinkApproval object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *LinkApproval) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *LinkApproval) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *LinkApproval) SetId(v string)`

SetId sets Id field to given value.


### GetPartner

`func (o *LinkApproval) GetPartner() string`

GetPartner returns the Partner field if non-nil, zero value otherwise.

### GetPartnerOk

`func (o *LinkApproval) GetPartnerOk() (*string, bool)`

GetPartnerOk returns a tuple with the Partner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPartner

`func (o *LinkApproval) SetPartner(v string)`

SetPartner sets Partner field to given value.


### GetDevice

`func (o *LinkApproval) GetDevice() string`

GetDevice returns the Device field if non-nil, zero value otherwise.

### GetDeviceOk

`func (o *LinkApproval) GetDeviceOk() (*string, bool)`

GetDeviceOk returns a tuple with the Device field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDevice

`func (o *LinkApproval) SetDevice(v string)`

SetDevice sets Device field to given value.

### HasDevice

`func (o *LinkApproval) HasDevice() bool`

HasDevice returns a boolean if a field has been set.

### GetConversation

`func (o *LinkApproval) GetConversation() string`

GetConversation returns the Conversation field if non-nil, zero value otherwise.

### GetConversationOk

`func (o *LinkApproval) GetConversationOk() (*string, bool)`

GetConversationOk returns a tuple with the Conversation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConversation

`func (o *LinkApproval) SetConversation(v string)`

SetConversation sets Conversation field to given value.

### HasConversation

`func (o *LinkApproval) HasConversation() bool`

HasConversation returns a boolean if a field has been set.

### GetTitle

`func (o *LinkApproval) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *LinkApproval) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *LinkApproval) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetBody

`func (o *LinkApproval) GetBody() string`

GetBody returns the Body field if non-nil, zero value otherwise.

### GetBodyOk

`func (o *LinkApproval) GetBodyOk() (*string, bool)`

GetBodyOk returns a tuple with the Body field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBody

`func (o *LinkApproval) SetBody(v string)`

SetBody sets Body field to given value.


### GetTool

`func (o *LinkApproval) GetTool() string`

GetTool returns the Tool field if non-nil, zero value otherwise.

### GetToolOk

`func (o *LinkApproval) GetToolOk() (*string, bool)`

GetToolOk returns a tuple with the Tool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTool

`func (o *LinkApproval) SetTool(v string)`

SetTool sets Tool field to given value.

### HasTool

`func (o *LinkApproval) HasTool() bool`

HasTool returns a boolean if a field has been set.

### GetCreatedAt

`func (o *LinkApproval) GetCreatedAt() int64`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *LinkApproval) GetCreatedAtOk() (*int64, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *LinkApproval) SetCreatedAt(v int64)`

SetCreatedAt sets CreatedAt field to given value.


### GetExpiresAt

`func (o *LinkApproval) GetExpiresAt() int64`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *LinkApproval) GetExpiresAtOk() (*int64, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *LinkApproval) SetExpiresAt(v int64)`

SetExpiresAt sets ExpiresAt field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


