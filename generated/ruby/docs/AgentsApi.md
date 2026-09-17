# ChatPanel::AgentsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**agents_rate**](AgentsApi.md#agents_rate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job. |
| [**agents_scorecard**](AgentsApi.md#agents_scorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard. |
| [**agents_scorecards**](AgentsApi.md#agents_scorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard. |


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

