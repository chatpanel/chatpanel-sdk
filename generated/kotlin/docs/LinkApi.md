# LinkApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**linkAnswerApproval**](LinkApi.md#linkAnswerApproval) | **POST** /v1/link/approvals/{approvalId} | The owner&#39;s answer — once, this action for the rest of the conversation, everything in it, or no. |
| [**linkApprovals**](LinkApi.md#linkApprovals) | **GET** /v1/link/approvals | What partners&#39; agents are waiting on the owner for — each request a partner&#39;s coding agent made that the owner&#39;s settings do not already allow. |
| [**linkApprovalsStream**](LinkApi.md#linkApprovalsStream) | **GET** /v1/link/approvals/stream | The waiting requests as they change — one &#x60;approvals&#x60; event with the whole list on each change, and at connect. |
| [**linkDeleteFile**](LinkApi.md#linkDeleteFile) | **DELETE** /v1/link/files/{path} | Remove a file from the partner&#39;s folder (never a folder). |
| [**linkListFiles**](LinkApi.md#linkListFiles) | **GET** /v1/link/files | A partner&#39;s own folder, from its side — every file it may hold there, with size and last change. |
| [**linkPair**](LinkApi.md#linkPair) | **POST** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first. |
| [**linkReadFile**](LinkApi.md#linkReadFile) | **GET** /v1/link/files/{path} | Read back a file from the partner&#39;s folder — what its agents wrote there. |
| [**linkRemoveDevice**](LinkApi.md#linkRemoveDevice) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection. |
| [**linkRoute**](LinkApi.md#linkRoute) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel. |
| [**linkStatus**](LinkApi.md#linkStatus) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach. |
| [**linkWriteFile**](LinkApi.md#linkWriteFile) | **PUT** /v1/link/files/{path} | Put a file in the partner&#39;s folder — its data, a skill, a subagent or instructions. |


<a id="linkAnswerApproval"></a>
# **linkAnswerApproval**
> BrowserAnnounce200Response linkAnswerApproval(approvalId, linkAnswerApprovalRequest)

The owner&#39;s answer — once, this action for the rest of the conversation, everything in it, or no.

No answer within the agent&#39;s own wait (10 minutes) is a no; revoking the partner denies what it waits on.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
val approvalId : kotlin.String = approvalId_example // kotlin.String | 
val linkAnswerApprovalRequest : LinkAnswerApprovalRequest =  // LinkAnswerApprovalRequest | 
try {
    val result : BrowserAnnounce200Response = apiInstance.linkAnswerApproval(approvalId, linkAnswerApprovalRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkAnswerApproval")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkAnswerApproval")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **approvalId** | **kotlin.String**|  | |
| **linkAnswerApprovalRequest** | [**LinkAnswerApprovalRequest**](LinkAnswerApprovalRequest.md)|  | |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="linkApprovals"></a>
# **linkApprovals**
> LinkApprovals200Response linkApprovals()

What partners&#39; agents are waiting on the owner for — each request a partner&#39;s coding agent made that the owner&#39;s settings do not already allow.

A partner granted &#x60;agents&#x60; (gateway 0.90.0+) runs them as the owner&#39;s own turn does, and never answers their permission prompts: the request waits here for the OWNER (0.91.0+). Nothing that arrives over Link may list or answer these — 403 for a partner and a phone alike. In memory only. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
try {
    val result : LinkApprovals200Response = apiInstance.linkApprovals()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkApprovals")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkApprovals")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LinkApprovals200Response**](LinkApprovals200Response.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="linkApprovalsStream"></a>
# **linkApprovalsStream**
> kotlin.String linkApprovalsStream()

The waiting requests as they change — one &#x60;approvals&#x60; event with the whole list on each change, and at connect.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
try {
    val result : kotlin.String = apiInstance.linkApprovalsStream()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkApprovalsStream")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkApprovalsStream")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**kotlin.String**

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="linkDeleteFile"></a>
# **linkDeleteFile**
> BrowserAnnounce200Response linkDeleteFile(path)

Remove a file from the partner&#39;s folder (never a folder).

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
val path : kotlin.String = path_example // kotlin.String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
try {
    val result : BrowserAnnounce200Response = apiInstance.linkDeleteFile(path)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkDeleteFile")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkDeleteFile")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **path** | **kotlin.String**| Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="linkListFiles"></a>
# **linkListFiles**
> LinkListFiles200Response linkListFiles()

A partner&#39;s own folder, from its side — every file it may hold there, with size and last change.

Called BY A PARTNER over Link (&#x60;createLinkFetch&#x60;), granted &#x60;files&#x60; (0.92.0+; needs &#x60;agents&#x60;). The folder is the one the owner chose at pairing, where its agents work; a partner may hold its data (&#x60;data/&#x60;), skills (&#x60;.claude/skills/&#x60;, &#x60;.agents/skills/&#x60;), subagents (&#x60;.claude/agents/_*.md&#x60;) and instructions (&#x60;CLAUDE.md&#x60;, &#x60;AGENTS.md&#x60;) — never what configures the agent. &#x60;GET /v1/link/files/data&#x60; lists one root. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
try {
    val result : LinkListFiles200Response = apiInstance.linkListFiles()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkListFiles")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkListFiles")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LinkListFiles200Response**](LinkListFiles200Response.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="linkPair"></a>
# **linkPair**
> LinkPairResult linkPair(linkPairRequest)

Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first.

**A phone** (no &#x60;kind&#x60;, or &#x60;kind: phone&#x60;): a room on the route&#39;s relay and the QR the phone scans; the answer carries &#x60;uri&#x60;, &#x60;svg&#x60;, &#x60;expiresAt&#x60;, &#x60;room&#x60;.  **A partner server** (&#x60;kind: partner&#x60;, gateway 0.89.0+): nothing is issued without the owner&#39;s yes. Without &#x60;confirm: true&#x60; the answer is &#x60;{ confirmed: false, preview }&#x60; — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With &#x60;confirm: true&#x60; the answer adds the &#x60;code&#x60; (&#x60;cplink1.…&#x60;, one use, 10 minutes), &#x60;room&#x60;, &#x60;route&#x60; and &#x60;host&#x60;. The route is the gateway&#39;s own unless &#x60;route&#x60; names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel&#39;s hosted relay is used only for &#x60;link&#x60;. Refused with 403 from a device on Link: a paired device never pairs another. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
val linkPairRequest : LinkPairRequest =  // LinkPairRequest | 
try {
    val result : LinkPairResult = apiInstance.linkPair(linkPairRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkPair")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkPair")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **linkPairRequest** | [**LinkPairRequest**](LinkPairRequest.md)|  | [optional] |

### Return type

[**LinkPairResult**](LinkPairResult.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="linkReadFile"></a>
# **linkReadFile**
> java.io.File linkReadFile(path)

Read back a file from the partner&#39;s folder — what its agents wrote there.

The raw bytes (&#x60;application/octet-stream&#x60;). &#x60;path&#x60; is relative to the folder; slashes may be sent encoded.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
val path : kotlin.String = path_example // kotlin.String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
try {
    val result : java.io.File = apiInstance.linkReadFile(path)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkReadFile")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkReadFile")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **path** | **kotlin.String**| Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | |

### Return type

[**java.io.File**](java.io.File.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

<a id="linkRemoveDevice"></a>
# **linkRemoveDevice**
> BrowserAnnounce200Response linkRemoveDevice(deviceId)

Remove a paired device now — its relay room, its key and its open connection.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
val deviceId : kotlin.String = deviceId_example // kotlin.String | The device's `id` from `link.status`.
try {
    val result : BrowserAnnounce200Response = apiInstance.linkRemoveDevice(deviceId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkRemoveDevice")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkRemoveDevice")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **deviceId** | **kotlin.String**| The device&#39;s &#x60;id&#x60; from &#x60;link.status&#x60;. | |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="linkRoute"></a>
# **linkRoute**
> LinkStatus linkRoute(linkRouteRequest)

How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel.

Checked, saved in the gateway&#39;s config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
val linkRouteRequest : LinkRouteRequest =  // LinkRouteRequest | 
try {
    val result : LinkStatus = apiInstance.linkRoute(linkRouteRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkRoute")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkRoute")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **linkRouteRequest** | [**LinkRouteRequest**](LinkRouteRequest.md)|  | |

### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="linkStatus"></a>
# **linkStatus**
> LinkStatus linkStatus()

The Link route and every paired device — phones and partner servers — with what each may reach.

No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries &#x60;kind: partner&#x60;, its &#x60;partner.name&#x60;, &#x60;scopes&#x60;, the &#x60;route&#x60; it was paired on and the &#x60;host&#x60; it connects to; a phone carries &#x60;kind: phone&#x60; and follows the gateway&#39;s route. Changing the route never moves a partner: one whose tunnel door shut with the route says &#x60;routeClosed&#x60;. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
try {
    val result : LinkStatus = apiInstance.linkStatus()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkStatus")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkStatus")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="linkWriteFile"></a>
# **linkWriteFile**
> LinkPartnerFile linkWriteFile(path, body)

Put a file in the partner&#39;s folder — its data, a skill, a subagent or instructions.

The body is the file&#39;s bytes. Refused (400): a path outside what a partner may hold (&#x60;.claude/settings*.json&#x60;, hooks, &#x60;.mcp.json&#x60;, &#x60;.codex/&#x60; among them), and a skill or subagent whose front matter would widen what the agent may do (&#x60;allowed-tools&#x60;, &#x60;hooks&#x60;, &#x60;permissionMode&#x60;, &#x60;mcpServers&#x60;). Refused (403): a path through a link in the folder. Written atomically, readable by the owner alone. Up to the gateway&#39;s body limit (413 past it). 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = LinkApi()
val path : kotlin.String = path_example // kotlin.String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
val body : java.io.File = BINARY_DATA_HERE // java.io.File | 
try {
    val result : LinkPartnerFile = apiInstance.linkWriteFile(path, body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LinkApi#linkWriteFile")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LinkApi#linkWriteFile")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **path** | **kotlin.String**| Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | |
| **body** | **java.io.File**|  | |

### Return type

[**LinkPartnerFile**](LinkPartnerFile.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

