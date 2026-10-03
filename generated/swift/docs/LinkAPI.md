# LinkAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linkAnswerApproval**](LinkAPI.md#linkanswerapproval) | **POST** /v1/link/approvals/{approvalId} | The owner&#39;s answer — once, this action for the rest of the conversation, everything in it, or no.
[**linkApprovals**](LinkAPI.md#linkapprovals) | **GET** /v1/link/approvals | What partners&#39; agents are waiting on the owner for — each request a partner&#39;s coding agent made that the owner&#39;s settings do not already allow.
[**linkApprovalsStream**](LinkAPI.md#linkapprovalsstream) | **GET** /v1/link/approvals/stream | The waiting requests as they change — one &#x60;approvals&#x60; event with the whole list on each change, and at connect.
[**linkDeleteFile**](LinkAPI.md#linkdeletefile) | **DELETE** /v1/link/files/{path} | Remove a file from the partner&#39;s folder (never a folder).
[**linkListFiles**](LinkAPI.md#linklistfiles) | **GET** /v1/link/files | A partner&#39;s own folder, from its side — every file it may hold there, with size and last change.
[**linkPair**](LinkAPI.md#linkpair) | **POST** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first.
[**linkReadFile**](LinkAPI.md#linkreadfile) | **GET** /v1/link/files/{path} | Read back a file from the partner&#39;s folder — what its agents wrote there.
[**linkRemoveDevice**](LinkAPI.md#linkremovedevice) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection.
[**linkRoute**](LinkAPI.md#linkroute) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel.
[**linkStatus**](LinkAPI.md#linkstatus) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach.
[**linkWriteFile**](LinkAPI.md#linkwritefile) | **PUT** /v1/link/files/{path} | Put a file in the partner&#39;s folder — its data, a skill, a subagent or instructions.


# **linkAnswerApproval**
```swift
    open class func linkAnswerApproval(approvalId: String, linkAnswerApprovalRequest: LinkAnswerApprovalRequest, completion: @escaping (_ data: BrowserAnnounce200Response?, _ error: Error?) -> Void)
```

The owner's answer — once, this action for the rest of the conversation, everything in it, or no.

No answer within the agent's own wait (10 minutes) is a no; revoking the partner denies what it waits on.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let approvalId = "approvalId_example" // String | 
let linkAnswerApprovalRequest = link_answerApproval_request(decision: "decision_example") // LinkAnswerApprovalRequest | 

// The owner's answer — once, this action for the rest of the conversation, everything in it, or no.
LinkAPI.linkAnswerApproval(approvalId: approvalId, linkAnswerApprovalRequest: linkAnswerApprovalRequest) { (response, error) in
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
 **approvalId** | **String** |  | 
 **linkAnswerApprovalRequest** | [**LinkAnswerApprovalRequest**](LinkAnswerApprovalRequest.md) |  | 

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkApprovals**
```swift
    open class func linkApprovals(completion: @escaping (_ data: LinkApprovals200Response?, _ error: Error?) -> Void)
```

What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow.

A partner granted `agents` (gateway 0.90.0+) runs them as the owner's own turn does, and never answers their permission prompts: the request waits here for the OWNER (0.91.0+). Nothing that arrives over Link may list or answer these — 403 for a partner and a phone alike. In memory only. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow.
LinkAPI.linkApprovals() { (response, error) in
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

[**LinkApprovals200Response**](LinkApprovals200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkApprovalsStream**
```swift
    open class func linkApprovalsStream(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect.
LinkAPI.linkApprovalsStream() { (response, error) in
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

**String**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkDeleteFile**
```swift
    open class func linkDeleteFile(path: String, completion: @escaping (_ data: BrowserAnnounce200Response?, _ error: Error?) -> Void)
```

Remove a file from the partner's folder (never a folder).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let path = "path_example" // String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).

// Remove a file from the partner's folder (never a folder).
LinkAPI.linkDeleteFile(path: path) { (response, error) in
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
 **path** | **String** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | 

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkListFiles**
```swift
    open class func linkListFiles(completion: @escaping (_ data: LinkListFiles200Response?, _ error: Error?) -> Void)
```

A partner's own folder, from its side — every file it may hold there, with size and last change.

Called BY A PARTNER over Link (`createLinkFetch`), granted `files` (0.92.0+; needs `agents`). The folder is the one the owner chose at pairing, where its agents work; a partner may hold its data (`data/`), skills (`.claude/skills/`, `.agents/skills/`), subagents (`.claude/agents/_*.md`) and instructions (`CLAUDE.md`, `AGENTS.md`) — never what configures the agent. `GET /v1/link/files/data` lists one root. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// A partner's own folder, from its side — every file it may hold there, with size and last change.
LinkAPI.linkListFiles() { (response, error) in
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

[**LinkListFiles200Response**](LinkListFiles200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkPair**
```swift
    open class func linkPair(linkPairRequest: LinkPairRequest? = nil, completion: @escaping (_ data: LinkPairResult?, _ error: Error?) -> Void)
```

Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.

**A phone** (no `kind`, or `kind: phone`): a room on the route's relay and the QR the phone scans; the answer carries `uri`, `svg`, `expiresAt`, `room`.  **A partner server** (`kind: partner`, gateway 0.89.0+): nothing is issued without the owner's yes. Without `confirm: true` the answer is `{ confirmed: false, preview }` — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With `confirm: true` the answer adds the `code` (`cplink1.…`, one use, 10 minutes), `room`, `route` and `host`. The route is the gateway's own unless `route` names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel's hosted relay is used only for `link`. Refused with 403 from a device on Link: a paired device never pairs another. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let linkPairRequest = LinkPairRequest(kind: "kind_example", name: "name_example", partner: LinkPairRequest_partner(name: "name_example"), scopes: LinkPairRequest_scopes(), route: "route_example", relay: "relay_example", folder: "folder_example", confirm: false) // LinkPairRequest |  (optional)

// Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.
LinkAPI.linkPair(linkPairRequest: linkPairRequest) { (response, error) in
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
 **linkPairRequest** | [**LinkPairRequest**](LinkPairRequest.md) |  | [optional] 

### Return type

[**LinkPairResult**](LinkPairResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkReadFile**
```swift
    open class func linkReadFile(path: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Read back a file from the partner's folder — what its agents wrote there.

The raw bytes (`application/octet-stream`). `path` is relative to the folder; slashes may be sent encoded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let path = "path_example" // String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).

// Read back a file from the partner's folder — what its agents wrote there.
LinkAPI.linkReadFile(path: path) { (response, error) in
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
 **path** | **String** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | 

### Return type

**URL**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkRemoveDevice**
```swift
    open class func linkRemoveDevice(deviceId: String, completion: @escaping (_ data: BrowserAnnounce200Response?, _ error: Error?) -> Void)
```

Remove a paired device now — its relay room, its key and its open connection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let deviceId = "deviceId_example" // String | The device's `id` from `link.status`.

// Remove a paired device now — its relay room, its key and its open connection.
LinkAPI.linkRemoveDevice(deviceId: deviceId) { (response, error) in
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
 **deviceId** | **String** | The device&#39;s &#x60;id&#x60; from &#x60;link.status&#x60;. | 

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkRoute**
```swift
    open class func linkRoute(linkRouteRequest: LinkRouteRequest, completion: @escaping (_ data: LinkStatus?, _ error: Error?) -> Void)
```

How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.

Checked, saved in the gateway's config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let linkRouteRequest = LinkRouteRequest(route: "route_example", url: "url_example", fallback: false) // LinkRouteRequest | 

// How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.
LinkAPI.linkRoute(linkRouteRequest: linkRouteRequest) { (response, error) in
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
 **linkRouteRequest** | [**LinkRouteRequest**](LinkRouteRequest.md) |  | 

### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkStatus**
```swift
    open class func linkStatus(completion: @escaping (_ data: LinkStatus?, _ error: Error?) -> Void)
```

The Link route and every paired device — phones and partner servers — with what each may reach.

No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries `kind: partner`, its `partner.name`, `scopes`, the `route` it was paired on and the `host` it connects to; a phone carries `kind: phone` and follows the gateway's route. Changing the route never moves a partner: one whose tunnel door shut with the route says `routeClosed`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// The Link route and every paired device — phones and partner servers — with what each may reach.
LinkAPI.linkStatus() { (response, error) in
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

[**LinkStatus**](LinkStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkWriteFile**
```swift
    open class func linkWriteFile(path: String, body: URL, completion: @escaping (_ data: LinkPartnerFile?, _ error: Error?) -> Void)
```

Put a file in the partner's folder — its data, a skill, a subagent or instructions.

The body is the file's bytes. Refused (400): a path outside what a partner may hold (`.claude/settings*.json`, hooks, `.mcp.json`, `.codex/` among them), and a skill or subagent whose front matter would widen what the agent may do (`allowed-tools`, `hooks`, `permissionMode`, `mcpServers`). Refused (403): a path through a link in the folder. Written atomically, readable by the owner alone. Up to the gateway's body limit (413 past it). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let path = "path_example" // String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
let body = URL(string: "https://example.com")! // URL | 

// Put a file in the partner's folder — its data, a skill, a subagent or instructions.
LinkAPI.linkWriteFile(path: path, body: body) { (response, error) in
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
 **path** | **String** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | 
 **body** | **URL** |  | 

### Return type

[**LinkPartnerFile**](LinkPartnerFile.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

