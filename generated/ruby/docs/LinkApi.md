# ChatPanel::LinkApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**link_answer_approval**](LinkApi.md#link_answer_approval) | **POST** /v1/link/approvals/{approvalId} | The owner&#39;s answer — once, this action for the rest of the conversation, everything in it, or no. |
| [**link_approvals**](LinkApi.md#link_approvals) | **GET** /v1/link/approvals | What partners&#39; agents are waiting on the owner for — each request a partner&#39;s coding agent made that the owner&#39;s settings do not already allow. |
| [**link_approvals_stream**](LinkApi.md#link_approvals_stream) | **GET** /v1/link/approvals/stream | The waiting requests as they change — one &#x60;approvals&#x60; event with the whole list on each change, and at connect. |
| [**link_delete_file**](LinkApi.md#link_delete_file) | **DELETE** /v1/link/files/{path} | Remove a file from the partner&#39;s folder (never a folder). |
| [**link_list_files**](LinkApi.md#link_list_files) | **GET** /v1/link/files | A partner&#39;s own folder, from its side — every file it may hold there, with size and last change. |
| [**link_pair**](LinkApi.md#link_pair) | **POST** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first. |
| [**link_read_file**](LinkApi.md#link_read_file) | **GET** /v1/link/files/{path} | Read back a file from the partner&#39;s folder — what its agents wrote there. |
| [**link_remove_device**](LinkApi.md#link_remove_device) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection. |
| [**link_route**](LinkApi.md#link_route) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel. |
| [**link_status**](LinkApi.md#link_status) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach. |
| [**link_write_file**](LinkApi.md#link_write_file) | **PUT** /v1/link/files/{path} | Put a file in the partner&#39;s folder — its data, a skill, a subagent or instructions. |


## link_answer_approval

> <BrowserAnnounce200Response> link_answer_approval(approval_id, link_answer_approval_request)

The owner's answer — once, this action for the rest of the conversation, everything in it, or no.

No answer within the agent's own wait (10 minutes) is a no; revoking the partner denies what it waits on.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::LinkApi.new
approval_id = 'approval_id_example' # String | 
link_answer_approval_request = ChatPanel::LinkAnswerApprovalRequest.new({decision: 'allow'}) # LinkAnswerApprovalRequest | 

begin
  # The owner's answer — once, this action for the rest of the conversation, everything in it, or no.
  result = api_instance.link_answer_approval(approval_id, link_answer_approval_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_answer_approval: #{e}"
end
```

#### Using the link_answer_approval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrowserAnnounce200Response>, Integer, Hash)> link_answer_approval_with_http_info(approval_id, link_answer_approval_request)

```ruby
begin
  # The owner's answer — once, this action for the rest of the conversation, everything in it, or no.
  data, status_code, headers = api_instance.link_answer_approval_with_http_info(approval_id, link_answer_approval_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrowserAnnounce200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_answer_approval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approval_id** | **String** |  |  |
| **link_answer_approval_request** | [**LinkAnswerApprovalRequest**](LinkAnswerApprovalRequest.md) |  |  |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## link_approvals

> <LinkApprovals200Response> link_approvals

What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow.

A partner granted `agents` (gateway 0.90.0+) runs them as the owner's own turn does, and never answers their permission prompts: the request waits here for the OWNER (0.91.0+). Nothing that arrives over Link may list or answer these — 403 for a partner and a phone alike. In memory only. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::LinkApi.new

begin
  # What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow.
  result = api_instance.link_approvals
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_approvals: #{e}"
end
```

#### Using the link_approvals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkApprovals200Response>, Integer, Hash)> link_approvals_with_http_info

```ruby
begin
  # What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow.
  data, status_code, headers = api_instance.link_approvals_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkApprovals200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_approvals_with_http_info: #{e}"
end
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


## link_approvals_stream

> String link_approvals_stream

The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::LinkApi.new

begin
  # The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect.
  result = api_instance.link_approvals_stream
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_approvals_stream: #{e}"
end
```

#### Using the link_approvals_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> link_approvals_stream_with_http_info

```ruby
begin
  # The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect.
  data, status_code, headers = api_instance.link_approvals_stream_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_approvals_stream_with_http_info: #{e}"
end
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


## link_delete_file

> <BrowserAnnounce200Response> link_delete_file(path)

Remove a file from the partner's folder (never a folder).

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::LinkApi.new
path = 'path_example' # String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).

begin
  # Remove a file from the partner's folder (never a folder).
  result = api_instance.link_delete_file(path)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_delete_file: #{e}"
end
```

#### Using the link_delete_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrowserAnnounce200Response>, Integer, Hash)> link_delete_file_with_http_info(path)

```ruby
begin
  # Remove a file from the partner's folder (never a folder).
  data, status_code, headers = api_instance.link_delete_file_with_http_info(path)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrowserAnnounce200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_delete_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). |  |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## link_list_files

> <LinkListFiles200Response> link_list_files

A partner's own folder, from its side — every file it may hold there, with size and last change.

Called BY A PARTNER over Link (`createLinkFetch`), granted `files` (0.92.0+; needs `agents`). The folder is the one the owner chose at pairing, where its agents work; a partner may hold its data (`data/`), skills (`.claude/skills/`, `.agents/skills/`), subagents (`.claude/agents/*.md`) and instructions (`CLAUDE.md`, `AGENTS.md`) — never what configures the agent. `GET /v1/link/files/data` lists one root. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::LinkApi.new

begin
  # A partner's own folder, from its side — every file it may hold there, with size and last change.
  result = api_instance.link_list_files
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_list_files: #{e}"
end
```

#### Using the link_list_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkListFiles200Response>, Integer, Hash)> link_list_files_with_http_info

```ruby
begin
  # A partner's own folder, from its side — every file it may hold there, with size and last change.
  data, status_code, headers = api_instance.link_list_files_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkListFiles200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_list_files_with_http_info: #{e}"
end
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


## link_pair

> <LinkPairResult> link_pair(opts)

Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.

**A phone** (no `kind`, or `kind: phone`): a room on the route's relay and the QR the phone scans; the answer carries `uri`, `svg`, `expiresAt`, `room`.  **A partner server** (`kind: partner`, gateway 0.89.0+): nothing is issued without the owner's yes. Without `confirm: true` the answer is `{ confirmed: false, preview }` — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With `confirm: true` the answer adds the `code` (`cplink1.…`, one use, 10 minutes), `room`, `route` and `host`. The route is the gateway's own unless `route` names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel's hosted relay is used only for `link`. Refused with 403 from a device on Link: a paired device never pairs another. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::LinkApi.new
opts = {
  link_pair_request: ChatPanel::LinkPairRequest.new # LinkPairRequest | 
}

begin
  # Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.
  result = api_instance.link_pair(opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_pair: #{e}"
end
```

#### Using the link_pair_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkPairResult>, Integer, Hash)> link_pair_with_http_info(opts)

```ruby
begin
  # Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.
  data, status_code, headers = api_instance.link_pair_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkPairResult>
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_pair_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_pair_request** | [**LinkPairRequest**](LinkPairRequest.md) |  | [optional] |

### Return type

[**LinkPairResult**](LinkPairResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## link_read_file

> File link_read_file(path)

Read back a file from the partner's folder — what its agents wrote there.

The raw bytes (`application/octet-stream`). `path` is relative to the folder; slashes may be sent encoded.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::LinkApi.new
path = 'path_example' # String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).

begin
  # Read back a file from the partner's folder — what its agents wrote there.
  result = api_instance.link_read_file(path)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_read_file: #{e}"
end
```

#### Using the link_read_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> link_read_file_with_http_info(path)

```ruby
begin
  # Read back a file from the partner's folder — what its agents wrote there.
  data, status_code, headers = api_instance.link_read_file_with_http_info(path)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_read_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). |  |

### Return type

**File**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## link_remove_device

> <BrowserAnnounce200Response> link_remove_device(device_id)

Remove a paired device now — its relay room, its key and its open connection.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::LinkApi.new
device_id = 'device_id_example' # String | The device's `id` from `link.status`.

begin
  # Remove a paired device now — its relay room, its key and its open connection.
  result = api_instance.link_remove_device(device_id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_remove_device: #{e}"
end
```

#### Using the link_remove_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrowserAnnounce200Response>, Integer, Hash)> link_remove_device_with_http_info(device_id)

```ruby
begin
  # Remove a paired device now — its relay room, its key and its open connection.
  data, status_code, headers = api_instance.link_remove_device_with_http_info(device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrowserAnnounce200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_remove_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | The device&#39;s &#x60;id&#x60; from &#x60;link.status&#x60;. |  |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## link_route

> <LinkStatus> link_route(link_route_request)

How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.

Checked, saved in the gateway's config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::LinkApi.new
link_route_request = ChatPanel::LinkRouteRequest.new({route: 'link'}) # LinkRouteRequest | 

begin
  # How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.
  result = api_instance.link_route(link_route_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_route: #{e}"
end
```

#### Using the link_route_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkStatus>, Integer, Hash)> link_route_with_http_info(link_route_request)

```ruby
begin
  # How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.
  data, status_code, headers = api_instance.link_route_with_http_info(link_route_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkStatus>
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_route_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_route_request** | [**LinkRouteRequest**](LinkRouteRequest.md) |  |  |

### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## link_status

> <LinkStatus> link_status

The Link route and every paired device — phones and partner servers — with what each may reach.

No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries `kind: partner`, its `partner.name`, `scopes`, the `route` it was paired on and the `host` it connects to; a phone carries `kind: phone` and follows the gateway's route. Changing the route never moves a partner: one whose tunnel door shut with the route says `routeClosed`. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::LinkApi.new

begin
  # The Link route and every paired device — phones and partner servers — with what each may reach.
  result = api_instance.link_status
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_status: #{e}"
end
```

#### Using the link_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkStatus>, Integer, Hash)> link_status_with_http_info

```ruby
begin
  # The Link route and every paired device — phones and partner servers — with what each may reach.
  data, status_code, headers = api_instance.link_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkStatus>
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_status_with_http_info: #{e}"
end
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


## link_write_file

> <LinkPartnerFile> link_write_file(path, body)

Put a file in the partner's folder — its data, a skill, a subagent or instructions.

The body is the file's bytes. Refused (400): a path outside what a partner may hold (`.claude/settings*.json`, hooks, `.mcp.json`, `.codex/` among them), and a skill or subagent whose front matter would widen what the agent may do (`allowed-tools`, `hooks`, `permissionMode`, `mcpServers`). Refused (403): a path through a link in the folder. Written atomically, readable by the owner alone. Up to the gateway's body limit (413 past it). 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::LinkApi.new
path = 'path_example' # String | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
body = File.new('/path/to/some/file') # File | 

begin
  # Put a file in the partner's folder — its data, a skill, a subagent or instructions.
  result = api_instance.link_write_file(path, body)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_write_file: #{e}"
end
```

#### Using the link_write_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkPartnerFile>, Integer, Hash)> link_write_file_with_http_info(path, body)

```ruby
begin
  # Put a file in the partner's folder — its data, a skill, a subagent or instructions.
  data, status_code, headers = api_instance.link_write_file_with_http_info(path, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkPartnerFile>
rescue ChatPanel::ApiError => e
  puts "Error when calling LinkApi->link_write_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). |  |
| **body** | **File** |  |  |

### Return type

[**LinkPartnerFile**](LinkPartnerFile.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/octet-stream
- **Accept**: application/json

