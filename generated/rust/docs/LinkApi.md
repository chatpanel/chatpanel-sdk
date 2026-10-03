# \LinkApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**link_answer_approval**](LinkApi.md#link_answer_approval) | **POST** /v1/link/approvals/{approvalId} | The owner's answer — once, this action for the rest of the conversation, everything in it, or no.
[**link_approvals**](LinkApi.md#link_approvals) | **GET** /v1/link/approvals | What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow.
[**link_approvals_stream**](LinkApi.md#link_approvals_stream) | **GET** /v1/link/approvals/stream | The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect.
[**link_delete_file**](LinkApi.md#link_delete_file) | **DELETE** /v1/link/files/{path} | Remove a file from the partner's folder (never a folder).
[**link_list_files**](LinkApi.md#link_list_files) | **GET** /v1/link/files | A partner's own folder, from its side — every file it may hold there, with size and last change.
[**link_pair**](LinkApi.md#link_pair) | **POST** /v1/link/pair | Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.
[**link_read_file**](LinkApi.md#link_read_file) | **GET** /v1/link/files/{path} | Read back a file from the partner's folder — what its agents wrote there.
[**link_remove_device**](LinkApi.md#link_remove_device) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection.
[**link_route**](LinkApi.md#link_route) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.
[**link_status**](LinkApi.md#link_status) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach.
[**link_write_file**](LinkApi.md#link_write_file) | **PUT** /v1/link/files/{path} | Put a file in the partner's folder — its data, a skill, a subagent or instructions.



## link_answer_approval

> models::BrowserAnnounce200Response link_answer_approval(approval_id, link_answer_approval_request)
The owner's answer — once, this action for the rest of the conversation, everything in it, or no.

No answer within the agent's own wait (10 minutes) is a no; revoking the partner denies what it waits on.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**approval_id** | **String** |  | [required] |
**link_answer_approval_request** | [**LinkAnswerApprovalRequest**](LinkAnswerApprovalRequest.md) |  | [required] |

### Return type

[**models::BrowserAnnounce200Response**](browser_announce_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## link_approvals

> models::LinkApprovals200Response link_approvals()
What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow.

A partner granted `agents` (gateway 0.90.0+) runs them as the owner's own turn does, and never answers their permission prompts: the request waits here for the OWNER (0.91.0+). Nothing that arrives over Link may list or answer these — 403 for a partner and a phone alike. In memory only. 

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::LinkApprovals200Response**](link_approvals_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## link_approvals_stream

> String link_approvals_stream()
The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect.

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


## link_delete_file

> models::BrowserAnnounce200Response link_delete_file(path)
Remove a file from the partner's folder (never a folder).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**path** | **String** | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | [required] |

### Return type

[**models::BrowserAnnounce200Response**](browser_announce_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## link_list_files

> models::LinkListFiles200Response link_list_files()
A partner's own folder, from its side — every file it may hold there, with size and last change.

Called BY A PARTNER over Link (`createLinkFetch`), granted `files` (0.92.0+; needs `agents`). The folder is the one the owner chose at pairing, where its agents work; a partner may hold its data (`data/`), skills (`.claude/skills/`, `.agents/skills/`), subagents (`.claude/agents/_*.md`) and instructions (`CLAUDE.md`, `AGENTS.md`) — never what configures the agent. `GET /v1/link/files/data` lists one root. 

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::LinkListFiles200Response**](link_listFiles_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## link_pair

> models::LinkPairResult link_pair(link_pair_request)
Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.

**A phone** (no `kind`, or `kind: phone`): a room on the route's relay and the QR the phone scans; the answer carries `uri`, `svg`, `expiresAt`, `room`.  **A partner server** (`kind: partner`, gateway 0.89.0+): nothing is issued without the owner's yes. Without `confirm: true` the answer is `{ confirmed: false, preview }` — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With `confirm: true` the answer adds the `code` (`cplink1.…`, one use, 10 minutes), `room`, `route` and `host`. The route is the gateway's own unless `route` names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel's hosted relay is used only for `link`. Refused with 403 from a device on Link: a paired device never pairs another. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**link_pair_request** | Option<[**LinkPairRequest**](LinkPairRequest.md)> |  |  |

### Return type

[**models::LinkPairResult**](LinkPairResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## link_read_file

> std::path::PathBuf link_read_file(path)
Read back a file from the partner's folder — what its agents wrote there.

The raw bytes (`application/octet-stream`). `path` is relative to the folder; slashes may be sent encoded.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**path** | **String** | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | [required] |

### Return type

[**std::path::PathBuf**](std::path::PathBuf.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## link_remove_device

> models::BrowserAnnounce200Response link_remove_device(device_id)
Remove a paired device now — its relay room, its key and its open connection.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** | The device's `id` from `link.status`. | [required] |

### Return type

[**models::BrowserAnnounce200Response**](browser_announce_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## link_route

> models::LinkStatus link_route(link_route_request)
How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.

Checked, saved in the gateway's config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**link_route_request** | [**LinkRouteRequest**](LinkRouteRequest.md) |  | [required] |

### Return type

[**models::LinkStatus**](LinkStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## link_status

> models::LinkStatus link_status()
The Link route and every paired device — phones and partner servers — with what each may reach.

No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries `kind: partner`, its `partner.name`, `scopes`, the `route` it was paired on and the `host` it connects to; a phone carries `kind: phone` and follows the gateway's route. Changing the route never moves a partner: one whose tunnel door shut with the route says `routeClosed`. 

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::LinkStatus**](LinkStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## link_write_file

> models::LinkPartnerFile link_write_file(path, body)
Put a file in the partner's folder — its data, a skill, a subagent or instructions.

The body is the file's bytes. Refused (400): a path outside what a partner may hold (`.claude/settings*.json`, hooks, `.mcp.json`, `.codex/` among them), and a skill or subagent whose front matter would widen what the agent may do (`allowed-tools`, `hooks`, `permissionMode`, `mcpServers`). Refused (403): a path through a link in the folder. Written atomically, readable by the owner alone. Up to the gateway's body limit (413 past it). 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**path** | **String** | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | [required] |
**body** | **std::path::PathBuf** |  | [required] |

### Return type

[**models::LinkPartnerFile**](LinkPartnerFile.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/octet-stream
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

