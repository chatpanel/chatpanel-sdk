# RuntimeDocument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sandbox** | Pointer to **map[string]interface{}** | the bridge&#39;s /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows) | [optional] 
**Processes** | Pointer to [**RuntimeDocumentProcesses**](RuntimeDocumentProcesses.md) |  | [optional] 
**Containers** | Pointer to **[]map[string]interface{}** | every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1) | [optional] 
**Refused** | Pointer to **[]map[string]interface{}** | { id, engine, host, at } newest first | [optional] 
**Bridge** | Pointer to [**RuntimeDocumentBridge**](RuntimeDocumentBridge.md) |  | [optional] 
**Engines** | Pointer to **map[string]interface{}** | podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note } | [optional] 
**Services** | Pointer to **map[string]interface{}** | Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+). | [optional] 
**InProcess** | Pointer to **map[string]interface{}** | rerank and decide answered by the gateway itself, the default since gateway 0.57.0 (a container service above is the alternative): per capability { provider (embedded | container | remote | none — who serves it now), model (when embedded), models: [{ id, label, mb, languages, note }] (the curated list a person may pick; the first is the default), threads, state (idle | downloading | loading | ready | down), progress?, error? }. Pick one with POST /config capabilities.&lt;id&gt; { provider: &#39;embedded&#39;, model } or turn it off with { provider: &#39;none&#39; }. | [optional] 

## Methods

### NewRuntimeDocument

`func NewRuntimeDocument() *RuntimeDocument`

NewRuntimeDocument instantiates a new RuntimeDocument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuntimeDocumentWithDefaults

`func NewRuntimeDocumentWithDefaults() *RuntimeDocument`

NewRuntimeDocumentWithDefaults instantiates a new RuntimeDocument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSandbox

`func (o *RuntimeDocument) GetSandbox() map[string]interface{}`

GetSandbox returns the Sandbox field if non-nil, zero value otherwise.

### GetSandboxOk

`func (o *RuntimeDocument) GetSandboxOk() (*map[string]interface{}, bool)`

GetSandboxOk returns a tuple with the Sandbox field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSandbox

`func (o *RuntimeDocument) SetSandbox(v map[string]interface{})`

SetSandbox sets Sandbox field to given value.

### HasSandbox

`func (o *RuntimeDocument) HasSandbox() bool`

HasSandbox returns a boolean if a field has been set.

### GetProcesses

`func (o *RuntimeDocument) GetProcesses() RuntimeDocumentProcesses`

GetProcesses returns the Processes field if non-nil, zero value otherwise.

### GetProcessesOk

`func (o *RuntimeDocument) GetProcessesOk() (*RuntimeDocumentProcesses, bool)`

GetProcessesOk returns a tuple with the Processes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProcesses

`func (o *RuntimeDocument) SetProcesses(v RuntimeDocumentProcesses)`

SetProcesses sets Processes field to given value.

### HasProcesses

`func (o *RuntimeDocument) HasProcesses() bool`

HasProcesses returns a boolean if a field has been set.

### GetContainers

`func (o *RuntimeDocument) GetContainers() []map[string]interface{}`

GetContainers returns the Containers field if non-nil, zero value otherwise.

### GetContainersOk

`func (o *RuntimeDocument) GetContainersOk() (*[]map[string]interface{}, bool)`

GetContainersOk returns a tuple with the Containers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContainers

`func (o *RuntimeDocument) SetContainers(v []map[string]interface{})`

SetContainers sets Containers field to given value.

### HasContainers

`func (o *RuntimeDocument) HasContainers() bool`

HasContainers returns a boolean if a field has been set.

### GetRefused

`func (o *RuntimeDocument) GetRefused() []map[string]interface{}`

GetRefused returns the Refused field if non-nil, zero value otherwise.

### GetRefusedOk

`func (o *RuntimeDocument) GetRefusedOk() (*[]map[string]interface{}, bool)`

GetRefusedOk returns a tuple with the Refused field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRefused

`func (o *RuntimeDocument) SetRefused(v []map[string]interface{})`

SetRefused sets Refused field to given value.

### HasRefused

`func (o *RuntimeDocument) HasRefused() bool`

HasRefused returns a boolean if a field has been set.

### GetBridge

`func (o *RuntimeDocument) GetBridge() RuntimeDocumentBridge`

GetBridge returns the Bridge field if non-nil, zero value otherwise.

### GetBridgeOk

`func (o *RuntimeDocument) GetBridgeOk() (*RuntimeDocumentBridge, bool)`

GetBridgeOk returns a tuple with the Bridge field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBridge

`func (o *RuntimeDocument) SetBridge(v RuntimeDocumentBridge)`

SetBridge sets Bridge field to given value.

### HasBridge

`func (o *RuntimeDocument) HasBridge() bool`

HasBridge returns a boolean if a field has been set.

### GetEngines

`func (o *RuntimeDocument) GetEngines() map[string]interface{}`

GetEngines returns the Engines field if non-nil, zero value otherwise.

### GetEnginesOk

`func (o *RuntimeDocument) GetEnginesOk() (*map[string]interface{}, bool)`

GetEnginesOk returns a tuple with the Engines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEngines

`func (o *RuntimeDocument) SetEngines(v map[string]interface{})`

SetEngines sets Engines field to given value.

### HasEngines

`func (o *RuntimeDocument) HasEngines() bool`

HasEngines returns a boolean if a field has been set.

### GetServices

`func (o *RuntimeDocument) GetServices() map[string]interface{}`

GetServices returns the Services field if non-nil, zero value otherwise.

### GetServicesOk

`func (o *RuntimeDocument) GetServicesOk() (*map[string]interface{}, bool)`

GetServicesOk returns a tuple with the Services field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServices

`func (o *RuntimeDocument) SetServices(v map[string]interface{})`

SetServices sets Services field to given value.

### HasServices

`func (o *RuntimeDocument) HasServices() bool`

HasServices returns a boolean if a field has been set.

### GetInProcess

`func (o *RuntimeDocument) GetInProcess() map[string]interface{}`

GetInProcess returns the InProcess field if non-nil, zero value otherwise.

### GetInProcessOk

`func (o *RuntimeDocument) GetInProcessOk() (*map[string]interface{}, bool)`

GetInProcessOk returns a tuple with the InProcess field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInProcess

`func (o *RuntimeDocument) SetInProcess(v map[string]interface{})`

SetInProcess sets InProcess field to given value.

### HasInProcess

`func (o *RuntimeDocument) HasInProcess() bool`

HasInProcess returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


