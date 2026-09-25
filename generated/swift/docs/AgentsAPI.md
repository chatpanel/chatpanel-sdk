# AgentsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agentsExportDef**](AgentsAPI.md#agentsexportdef) | **POST** /agent-defs/export | Write an agent definition into another tool&#39;s folder.
[**agentsExportPlan**](AgentsAPI.md#agentsexportplan) | **POST** /agent-defs/export-plan | What an export would write, and what the target cannot carry — without writing it.
[**agentsGetDef**](AgentsAPI.md#agentsgetdef) | **GET** /agent-defs/{agentId} | One agent definition, prompt included.
[**agentsListDefs**](AgentsAPI.md#agentslistdefs) | **GET** /agent-defs | The agent definitions on this machine, from every tool that writes one.
[**agentsRate**](AgentsAPI.md#agentsrate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job.
[**agentsScorecard**](AgentsAPI.md#agentsscorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard.
[**agentsScorecards**](AgentsAPI.md#agentsscorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard.


# **agentsExportDef**
```swift
    open class func agentsExportDef(agentExportRequest: AgentExportRequest, completion: @escaping (_ data: AgentsExportDef200Response?, _ error: Error?) -> Void)
```

Write an agent definition into another tool's folder.

Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with `NOT_OURS` unless `overwrite` is set. Which of those applies is what `export-plan` reports as `status`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let agentExportRequest = AgentExportRequest(agent: AgentDef(id: "id_example", name: "name_example", purpose: "purpose_example", dialect: "dialect_example", source: "source_example", label: "label_example", path: "path_example", writable: false, engine: "TODO", grants: ["grants_example"], skills: ["skills_example"], promptChars: 123, prompt: "prompt_example", warnings: ["warnings_example"], scanned: "TODO"), to: "to_example", overwrite: false) // AgentExportRequest | 

// Write an agent definition into another tool's folder.
AgentsAPI.agentsExportDef(agentExportRequest: agentExportRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md) |  | 

### Return type

[**AgentsExportDef200Response**](AgentsExportDef200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsExportPlan**
```swift
    open class func agentsExportPlan(agentExportRequest: AgentExportRequest, completion: @escaping (_ data: AgentExportPlan?, _ error: Error?) -> Void)
```

What an export would write, and what the target cannot carry — without writing it.

A separate call from the export itself, deliberately: \"show me what you are about to do to my Claude Code directory\" is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let agentExportRequest = AgentExportRequest(agent: AgentDef(id: "id_example", name: "name_example", purpose: "purpose_example", dialect: "dialect_example", source: "source_example", label: "label_example", path: "path_example", writable: false, engine: "TODO", grants: ["grants_example"], skills: ["skills_example"], promptChars: 123, prompt: "prompt_example", warnings: ["warnings_example"], scanned: "TODO"), to: "to_example", overwrite: false) // AgentExportRequest | 

// What an export would write, and what the target cannot carry — without writing it.
AgentsAPI.agentsExportPlan(agentExportRequest: agentExportRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md) |  | 

### Return type

[**AgentExportPlan**](AgentExportPlan.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsGetDef**
```swift
    open class func agentsGetDef(agentId: String, workdir: String? = nil, completion: @escaping (_ data: AgentsGetDef200Response?, _ error: Error?) -> Void)
```

One agent definition, prompt included.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let agentId = "agentId_example" // String | One path segment; slashes and `..` are refused.
let workdir = "workdir_example" // String |  (optional)

// One agent definition, prompt included.
AgentsAPI.agentsGetDef(agentId: agentId, workdir: workdir) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String** | One path segment; slashes and &#x60;..&#x60; are refused. | 
 **workdir** | **String** |  | [optional] 

### Return type

[**AgentsGetDef200Response**](AgentsGetDef200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsListDefs**
```swift
    open class func agentsListDefs(workdir: String? = nil, dir: String? = nil, completion: @escaping (_ data: AgentsListDefs200Response?, _ error: Error?) -> Void)
```

The agent definitions on this machine, from every tool that writes one.

`.claude/agents/_*.md`, `.codex/agents/_*.toml`, `~/.chatpanel/agents/_*.json` and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — `promptChars` only, for the same reason `GET /skills` omits them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let workdir = "workdir_example" // String | Also read this project's own agent folders, ahead of the home ones. (optional)
let dir = "dir_example" // String | An extra absolute folder to scan. Repeatable. (optional)

// The agent definitions on this machine, from every tool that writes one.
AgentsAPI.agentsListDefs(workdir: workdir, dir: dir) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workdir** | **String** | Also read this project&#39;s own agent folders, ahead of the home ones. | [optional] 
 **dir** | **String** | An extra absolute folder to scan. Repeatable. | [optional] 

### Return type

[**AgentsListDefs200Response**](AgentsListDefs200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsRate**
```swift
    open class func agentsRate(agentId: String, agentsRateRequest: AgentsRateRequest, completion: @escaping (_ data: [String: JSONValue]?, _ error: Error?) -> Void)
```

A person rates the agent's work on a run, task or job.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let agentId = "agentId_example" // String | 
let agentsRateRequest = agents_rate_request(score: 123, note: "note_example", about: "about_example", by: "by_example", runId: "runId_example", taskId: "taskId_example", jobId: "jobId_example", refs: "TODO") // AgentsRateRequest | 

// A person rates the agent's work on a run, task or job.
AgentsAPI.agentsRate(agentId: agentId, agentsRateRequest: agentsRateRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String** |  | 
 **agentsRateRequest** | [**AgentsRateRequest**](AgentsRateRequest.md) |  | 

### Return type

**[String: JSONValue]**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsScorecard**
```swift
    open class func agentsScorecard(agentId: String, completion: @escaping (_ data: [String: JSONValue]?, _ error: Error?) -> Void)
```

One agent's attested scorecard.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let agentId = "agentId_example" // String | 

// One agent's attested scorecard.
AgentsAPI.agentsScorecard(agentId: agentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String** |  | 

### Return type

**[String: JSONValue]**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentsScorecards**
```swift
    open class func agentsScorecards(completion: @escaping (_ data: AgentsScorecards200Response?, _ error: Error?) -> Void)
```

Every agent's scorecard.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// Every agent's scorecard.
AgentsAPI.agentsScorecards() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AgentsScorecards200Response**](AgentsScorecards200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

