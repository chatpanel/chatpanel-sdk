# ChatPanel::AgentsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**agents_export_def**](AgentsApi.md#agents_export_def) | **POST** /agent-defs/export | Write an agent definition into another tool&#39;s folder. |
| [**agents_export_plan**](AgentsApi.md#agents_export_plan) | **POST** /agent-defs/export-plan | What an export would write, and what the target cannot carry — without writing it. |
| [**agents_get_def**](AgentsApi.md#agents_get_def) | **GET** /agent-defs/{agentId} | One agent definition, prompt included. |
| [**agents_list_defs**](AgentsApi.md#agents_list_defs) | **GET** /agent-defs | The agent definitions on this machine, from every tool that writes one. |
| [**agents_rate**](AgentsApi.md#agents_rate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job. |
| [**agents_scorecard**](AgentsApi.md#agents_scorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard. |
| [**agents_scorecards**](AgentsApi.md#agents_scorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard. |


## agents_export_def

> <AgentsExportDef200Response> agents_export_def(agent_export_request)

Write an agent definition into another tool's folder.

Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with `NOT_OURS` unless `overwrite` is set. Which of those applies is what `export-plan` reports as `status`.

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

api_instance = ChatPanel::AgentsApi.new
agent_export_request = ChatPanel::AgentExportRequest.new({agent: ChatPanel::AgentDef.new({id: 'id_example'}), to: 'claude'}) # AgentExportRequest | 

begin
  # Write an agent definition into another tool's folder.
  result = api_instance.agents_export_def(agent_export_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_export_def: #{e}"
end
```

#### Using the agents_export_def_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentsExportDef200Response>, Integer, Hash)> agents_export_def_with_http_info(agent_export_request)

```ruby
begin
  # Write an agent definition into another tool's folder.
  data, status_code, headers = api_instance.agents_export_def_with_http_info(agent_export_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentsExportDef200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_export_def_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_export_request** | [**AgentExportRequest**](AgentExportRequest.md) |  |  |

### Return type

[**AgentsExportDef200Response**](AgentsExportDef200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## agents_export_plan

> <AgentExportPlan> agents_export_plan(agent_export_request)

What an export would write, and what the target cannot carry — without writing it.

A separate call from the export itself, deliberately: \"show me what you are about to do to my Claude Code directory\" is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry.

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

api_instance = ChatPanel::AgentsApi.new
agent_export_request = ChatPanel::AgentExportRequest.new({agent: ChatPanel::AgentDef.new({id: 'id_example'}), to: 'claude'}) # AgentExportRequest | 

begin
  # What an export would write, and what the target cannot carry — without writing it.
  result = api_instance.agents_export_plan(agent_export_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_export_plan: #{e}"
end
```

#### Using the agents_export_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentExportPlan>, Integer, Hash)> agents_export_plan_with_http_info(agent_export_request)

```ruby
begin
  # What an export would write, and what the target cannot carry — without writing it.
  data, status_code, headers = api_instance.agents_export_plan_with_http_info(agent_export_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentExportPlan>
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_export_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_export_request** | [**AgentExportRequest**](AgentExportRequest.md) |  |  |

### Return type

[**AgentExportPlan**](AgentExportPlan.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## agents_get_def

> <AgentsGetDef200Response> agents_get_def(agent_id, opts)

One agent definition, prompt included.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::AgentsApi.new
agent_id = 'agent_id_example' # String | One path segment; slashes and `..` are refused.
opts = {
  workdir: 'workdir_example' # String | 
}

begin
  # One agent definition, prompt included.
  result = api_instance.agents_get_def(agent_id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_get_def: #{e}"
end
```

#### Using the agents_get_def_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentsGetDef200Response>, Integer, Hash)> agents_get_def_with_http_info(agent_id, opts)

```ruby
begin
  # One agent definition, prompt included.
  data, status_code, headers = api_instance.agents_get_def_with_http_info(agent_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentsGetDef200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_get_def_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** | One path segment; slashes and &#x60;..&#x60; are refused. |  |
| **workdir** | **String** |  | [optional] |

### Return type

[**AgentsGetDef200Response**](AgentsGetDef200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## agents_list_defs

> <AgentsListDefs200Response> agents_list_defs(opts)

The agent definitions on this machine, from every tool that writes one.

`.claude/agents/*.md`, `.codex/agents/*.toml`, `~/.chatpanel/agents/*.json` and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — `promptChars` only, for the same reason `GET /skills` omits them.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::AgentsApi.new
opts = {
  workdir: 'workdir_example', # String | Also read this project's own agent folders, ahead of the home ones.
  dir: 'dir_example' # String | An extra absolute folder to scan. Repeatable.
}

begin
  # The agent definitions on this machine, from every tool that writes one.
  result = api_instance.agents_list_defs(opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_list_defs: #{e}"
end
```

#### Using the agents_list_defs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentsListDefs200Response>, Integer, Hash)> agents_list_defs_with_http_info(opts)

```ruby
begin
  # The agent definitions on this machine, from every tool that writes one.
  data, status_code, headers = api_instance.agents_list_defs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentsListDefs200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_list_defs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workdir** | **String** | Also read this project&#39;s own agent folders, ahead of the home ones. | [optional] |
| **dir** | **String** | An extra absolute folder to scan. Repeatable. | [optional] |

### Return type

[**AgentsListDefs200Response**](AgentsListDefs200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## agents_rate

> Hash&lt;String, Object&gt; agents_rate(agent_id, agents_rate_request)

A person rates the agent's work on a run, task or job.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::AgentsApi.new
agent_id = 'agent_id_example' # String | 
agents_rate_request = ChatPanel::AgentsRateRequest.new({score: 3.56}) # AgentsRateRequest | 

begin
  # A person rates the agent's work on a run, task or job.
  result = api_instance.agents_rate(agent_id, agents_rate_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_rate: #{e}"
end
```

#### Using the agents_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> agents_rate_with_http_info(agent_id, agents_rate_request)

```ruby
begin
  # A person rates the agent's work on a run, task or job.
  data, status_code, headers = api_instance.agents_rate_with_http_info(agent_id, agents_rate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |
| **agents_rate_request** | [**AgentsRateRequest**](AgentsRateRequest.md) |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## agents_scorecard

> Hash&lt;String, Object&gt; agents_scorecard(agent_id)

One agent's attested scorecard.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::AgentsApi.new
agent_id = 'agent_id_example' # String | 

begin
  # One agent's attested scorecard.
  result = api_instance.agents_scorecard(agent_id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_scorecard: #{e}"
end
```

#### Using the agents_scorecard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> agents_scorecard_with_http_info(agent_id)

```ruby
begin
  # One agent's attested scorecard.
  data, status_code, headers = api_instance.agents_scorecard_with_http_info(agent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_scorecard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## agents_scorecards

> <AgentsScorecards200Response> agents_scorecards

Every agent's scorecard.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::AgentsApi.new

begin
  # Every agent's scorecard.
  result = api_instance.agents_scorecards
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_scorecards: #{e}"
end
```

#### Using the agents_scorecards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgentsScorecards200Response>, Integer, Hash)> agents_scorecards_with_http_info

```ruby
begin
  # Every agent's scorecard.
  data, status_code, headers = api_instance.agents_scorecards_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgentsScorecards200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling AgentsApi->agents_scorecards_with_http_info: #{e}"
end
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

