# RuntimeDocumentProcesses

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**All** | Pointer to **[]map[string]interface{}** | every process running for the user — the bridge&#39;s (kind agent | warm | mcp | probe) and the gateway&#39;s own workers (kind worker): id, kind, engine, command (basename), label, pid, since, sandbox (the record), refused[] — never argv or env (0.19.1) | [optional] 
**LocalMcp** | Pointer to **[]map[string]interface{}** | id, command (basename), pid, since, sandbox (the record), refused[] — never argv or env | [optional] 
**Warm** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

## Methods

### NewRuntimeDocumentProcesses

`func NewRuntimeDocumentProcesses() *RuntimeDocumentProcesses`

NewRuntimeDocumentProcesses instantiates a new RuntimeDocumentProcesses object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuntimeDocumentProcessesWithDefaults

`func NewRuntimeDocumentProcessesWithDefaults() *RuntimeDocumentProcesses`

NewRuntimeDocumentProcessesWithDefaults instantiates a new RuntimeDocumentProcesses object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAll

`func (o *RuntimeDocumentProcesses) GetAll() []map[string]interface{}`

GetAll returns the All field if non-nil, zero value otherwise.

### GetAllOk

`func (o *RuntimeDocumentProcesses) GetAllOk() (*[]map[string]interface{}, bool)`

GetAllOk returns a tuple with the All field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAll

`func (o *RuntimeDocumentProcesses) SetAll(v []map[string]interface{})`

SetAll sets All field to given value.

### HasAll

`func (o *RuntimeDocumentProcesses) HasAll() bool`

HasAll returns a boolean if a field has been set.

### GetLocalMcp

`func (o *RuntimeDocumentProcesses) GetLocalMcp() []map[string]interface{}`

GetLocalMcp returns the LocalMcp field if non-nil, zero value otherwise.

### GetLocalMcpOk

`func (o *RuntimeDocumentProcesses) GetLocalMcpOk() (*[]map[string]interface{}, bool)`

GetLocalMcpOk returns a tuple with the LocalMcp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocalMcp

`func (o *RuntimeDocumentProcesses) SetLocalMcp(v []map[string]interface{})`

SetLocalMcp sets LocalMcp field to given value.

### HasLocalMcp

`func (o *RuntimeDocumentProcesses) HasLocalMcp() bool`

HasLocalMcp returns a boolean if a field has been set.

### GetWarm

`func (o *RuntimeDocumentProcesses) GetWarm() map[string]interface{}`

GetWarm returns the Warm field if non-nil, zero value otherwise.

### GetWarmOk

`func (o *RuntimeDocumentProcesses) GetWarmOk() (*map[string]interface{}, bool)`

GetWarmOk returns a tuple with the Warm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWarm

`func (o *RuntimeDocumentProcesses) SetWarm(v map[string]interface{})`

SetWarm sets Warm field to given value.

### HasWarm

`func (o *RuntimeDocumentProcesses) HasWarm() bool`

HasWarm returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


