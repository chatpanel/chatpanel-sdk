# ChatPanel.Sdk.Api.LinkApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**LinkAnswerApproval**](LinkApi.md#linkanswerapproval) | **POST** /v1/link/approvals/{approvalId} | The owner&#39;s answer — once, this action for the rest of the conversation, everything in it, or no. |
| [**LinkApprovals**](LinkApi.md#linkapprovals) | **GET** /v1/link/approvals | What partners&#39; agents are waiting on the owner for — each request a partner&#39;s coding agent made that the owner&#39;s settings do not already allow. |
| [**LinkApprovalsStream**](LinkApi.md#linkapprovalsstream) | **GET** /v1/link/approvals/stream | The waiting requests as they change — one &#x60;approvals&#x60; event with the whole list on each change, and at connect. |
| [**LinkDeleteFile**](LinkApi.md#linkdeletefile) | **DELETE** /v1/link/files/{path} | Remove a file from the partner&#39;s folder (never a folder). |
| [**LinkListFiles**](LinkApi.md#linklistfiles) | **GET** /v1/link/files | A partner&#39;s own folder, from its side — every file it may hold there, with size and last change. |
| [**LinkPair**](LinkApi.md#linkpair) | **POST** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first. |
| [**LinkReadFile**](LinkApi.md#linkreadfile) | **GET** /v1/link/files/{path} | Read back a file from the partner&#39;s folder — what its agents wrote there. |
| [**LinkRemoveDevice**](LinkApi.md#linkremovedevice) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection. |
| [**LinkRoute**](LinkApi.md#linkroute) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel. |
| [**LinkStatus**](LinkApi.md#linkstatus) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach. |
| [**LinkWriteFile**](LinkApi.md#linkwritefile) | **PUT** /v1/link/files/{path} | Put a file in the partner&#39;s folder — its data, a skill, a subagent or instructions. |

<a id="linkanswerapproval"></a>
# **LinkAnswerApproval**
> BrowserAnnounce200Response LinkAnswerApproval (string approvalId, LinkAnswerApprovalRequest linkAnswerApprovalRequest)

The owner's answer — once, this action for the rest of the conversation, everything in it, or no.

No answer within the agent's own wait (10 minutes) is a no; revoking the partner denies what it waits on.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **approvalId** | **string** |  |  |
| **linkAnswerApprovalRequest** | [**LinkAnswerApprovalRequest**](LinkAnswerApprovalRequest.md) |  |  |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Answered; the agent carries on. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="linkapprovals"></a>
# **LinkApprovals**
> LinkApprovals200Response LinkApprovals ()

What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow.

A partner granted `agents` (gateway 0.90.0+) runs them as the owner's own turn does, and never answers their permission prompts: the request waits here for the OWNER (0.91.0+). Nothing that arrives over Link may list or answer these — 403 for a partner and a phone alike. In memory only. 


### Parameters
This endpoint does not need any parameter.
### Return type

[**LinkApprovals200Response**](LinkApprovals200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The waiting requests, oldest first. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="linkapprovalsstream"></a>
# **LinkApprovalsStream**
> string LinkApprovalsStream ()

The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect.


### Parameters
This endpoint does not need any parameter.
### Return type

**string**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Server-sent events: &#x60;event: approvals&#x60;, &#x60;data: { pending: LinkApproval[] }&#x60;. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="linkdeletefile"></a>
# **LinkDeleteFile**
> BrowserAnnounce200Response LinkDeleteFile (string path)

Remove a file from the partner's folder (never a folder).


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **path** | **string** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). |  |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Removed. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="linklistfiles"></a>
# **LinkListFiles**
> LinkListFiles200Response LinkListFiles ()

A partner's own folder, from its side — every file it may hold there, with size and last change.

Called BY A PARTNER over Link (`createLinkFetch`), granted `files` (0.92.0+; needs `agents`). The folder is the one the owner chose at pairing, where its agents work; a partner may hold its data (`data/`), skills (`.claude/skills/`, `.agents/skills/`), subagents (`.claude/agents/_*.md`) and instructions (`CLAUDE.md`, `AGENTS.md`) — never what configures the agent. `GET /v1/link/files/data` lists one root. 


### Parameters
This endpoint does not need any parameter.
### Return type

[**LinkListFiles200Response**](LinkListFiles200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The files. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="linkpair"></a>
# **LinkPair**
> LinkPairResult LinkPair (LinkPairRequest linkPairRequest = null)

Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.

**A phone** (no `kind`, or `kind: phone`): a room on the route's relay and the QR the phone scans; the answer carries `uri`, `svg`, `expiresAt`, `room`.  **A partner server** (`kind: partner`, gateway 0.89.0+): nothing is issued without the owner's yes. Without `confirm: true` the answer is `{ confirmed: false, preview }` — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With `confirm: true` the answer adds the `code` (`cplink1.…`, one use, 10 minutes), `room`, `route` and `host`. The route is the gateway's own unless `route` names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel's hosted relay is used only for `link`. Refused with 403 from a device on Link: a paired device never pairs another. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **linkPairRequest** | [**LinkPairRequest**](LinkPairRequest.md) |  | [optional]  |

### Return type

[**LinkPairResult**](LinkPairResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The phone&#39;s code, or the partner&#39;s preview (and, once confirmed, its code). |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="linkreadfile"></a>
# **LinkReadFile**
> System.IO.Stream LinkReadFile (string path)

Read back a file from the partner's folder — what its agents wrote there.

The raw bytes (`application/octet-stream`). `path` is relative to the folder; slashes may be sent encoded.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **path** | **string** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). |  |

### Return type

**System.IO.Stream**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The file. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="linkremovedevice"></a>
# **LinkRemoveDevice**
> BrowserAnnounce200Response LinkRemoveDevice (string deviceId)

Remove a paired device now — its relay room, its key and its open connection.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** | The device&#39;s &#x60;id&#x60; from &#x60;link.status&#x60;. |  |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Removed. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="linkroute"></a>
# **LinkRoute**
> LinkStatus LinkRoute (LinkRouteRequest linkRouteRequest)

How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.

Checked, saved in the gateway's config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **linkRouteRequest** | [**LinkRouteRequest**](LinkRouteRequest.md) |  |  |

### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The route now in effect, and the devices. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="linkstatus"></a>
# **LinkStatus**
> LinkStatus LinkStatus ()

The Link route and every paired device — phones and partner servers — with what each may reach.

No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries `kind: partner`, its `partner.name`, `scopes`, the `route` it was paired on and the `host` it connects to; a phone carries `kind: phone` and follows the gateway's route. Changing the route never moves a partner: one whose tunnel door shut with the route says `routeClosed`. 


### Parameters
This endpoint does not need any parameter.
### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The route and the devices. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="linkwritefile"></a>
# **LinkWriteFile**
> LinkPartnerFile LinkWriteFile (string path, System.IO.Stream body)

Put a file in the partner's folder — its data, a skill, a subagent or instructions.

The body is the file's bytes. Refused (400): a path outside what a partner may hold (`.claude/settings*.json`, hooks, `.mcp.json`, `.codex/` among them), and a skill or subagent whose front matter would widen what the agent may do (`allowed-tools`, `hooks`, `permissionMode`, `mcpServers`). Refused (403): a path through a link in the folder. Written atomically, readable by the owner alone. Up to the gateway's body limit (413 past it). 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **path** | **string** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). |  |
| **body** | **System.IO.Stream****System.IO.Stream** |  |  |

### Return type

[**LinkPartnerFile**](LinkPartnerFile.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Written. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **413** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

