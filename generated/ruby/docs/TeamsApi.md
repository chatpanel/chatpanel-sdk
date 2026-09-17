# ChatPanel::TeamsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**teams_answer**](TeamsApi.md#teams_answer) | **POST** /v1/teams/runs/{runId}/answer | A person answers an ask on the board. |
| [**teams_append_run_events**](TeamsApi.md#teams_append_run_events) | **POST** /v1/teams/runs/{runId}/events | The running client appends events. |
| [**teams_checkpoint**](TeamsApi.md#teams_checkpoint) | **GET** /v1/teams/runs/{runId}/checkpoint | What a client needs to resume a run whose client went away. |
| [**teams_claim**](TeamsApi.md#teams_claim) | **POST** /v1/teams/runs/{runId}/claim | A client takes a stopped or stale run over. |
| [**teams_create_run**](TeamsApi.md#teams_create_run) | **POST** /v1/teams/runs | Open a run record. |
| [**teams_decide**](TeamsApi.md#teams_decide) | **POST** /v1/teams/runs/{runId}/decide | Approve or reject a post. |
| [**teams_delete_run**](TeamsApi.md#teams_delete_run) | **DELETE** /v1/teams/runs/{runId} | Remove a run; a live one is stopped first. |
| [**teams_get_run**](TeamsApi.md#teams_get_run) | **GET** /v1/teams/runs/{runId} | One run, optionally with its events. |
| [**teams_handoff**](TeamsApi.md#teams_handoff) | **POST** /v1/teams/runs/{runId}/handoff | Continue a task on another model. |
| [**teams_list_runs**](TeamsApi.md#teams_list_runs) | **GET** /v1/teams/runs | The board — recent runs, newest first. |
| [**teams_post**](TeamsApi.md#teams_post) | **POST** /v1/teams/runs/{runId}/post | Post a note to a thread. |
| [**teams_remove_thread**](TeamsApi.md#teams_remove_thread) | **DELETE** /v1/teams/runs/{runId}/threads/{threadId} | A person removes a thread from the board. |
| [**teams_run_events**](TeamsApi.md#teams_run_events) | **GET** /v1/teams/runs/{runId}/events | Tail a run — the record first, replay from &#x60;after&#x60;, then live. |
| [**teams_stop_run**](TeamsApi.md#teams_stop_run) | **POST** /v1/teams/runs/{runId}/stop | Ask the running client to stop. |


## teams_answer

> <InlineObject> teams_answer(run_id, teams_answer_request)

A person answers an ask on the board.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 
teams_answer_request = ChatPanel::TeamsAnswerRequest.new({thread_id: 'thread_id_example', text: 'text_example'}) # TeamsAnswerRequest | 

begin
  # A person answers an ask on the board.
  result = api_instance.teams_answer(run_id, teams_answer_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_answer: #{e}"
end
```

#### Using the teams_answer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> teams_answer_with_http_info(run_id, teams_answer_request)

```ruby
begin
  # A person answers an ask on the board.
  data, status_code, headers = api_instance.teams_answer_with_http_info(run_id, teams_answer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_answer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **teams_answer_request** | [**TeamsAnswerRequest**](TeamsAnswerRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## teams_append_run_events

> <InlineObject> teams_append_run_events(run_id, teams_append_run_events_request)

The running client appends events.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 
teams_append_run_events_request = ChatPanel::TeamsAppendRunEventsRequest.new({events: [ChatPanel::RunEvent.new({type: 'type_example'})]}) # TeamsAppendRunEventsRequest | 

begin
  # The running client appends events.
  result = api_instance.teams_append_run_events(run_id, teams_append_run_events_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_append_run_events: #{e}"
end
```

#### Using the teams_append_run_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> teams_append_run_events_with_http_info(run_id, teams_append_run_events_request)

```ruby
begin
  # The running client appends events.
  data, status_code, headers = api_instance.teams_append_run_events_with_http_info(run_id, teams_append_run_events_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_append_run_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **teams_append_run_events_request** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## teams_checkpoint

> <TeamsCheckpoint200Response> teams_checkpoint(run_id)

What a client needs to resume a run whose client went away.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 

begin
  # What a client needs to resume a run whose client went away.
  result = api_instance.teams_checkpoint(run_id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_checkpoint: #{e}"
end
```

#### Using the teams_checkpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamsCheckpoint200Response>, Integer, Hash)> teams_checkpoint_with_http_info(run_id)

```ruby
begin
  # What a client needs to resume a run whose client went away.
  data, status_code, headers = api_instance.teams_checkpoint_with_http_info(run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamsCheckpoint200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_checkpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |

### Return type

[**TeamsCheckpoint200Response**](TeamsCheckpoint200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## teams_claim

> <InlineObject> teams_claim(run_id, teams_claim_request)

A client takes a stopped or stale run over.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 
teams_claim_request = ChatPanel::TeamsClaimRequest.new({client: 'client_example'}) # TeamsClaimRequest | 

begin
  # A client takes a stopped or stale run over.
  result = api_instance.teams_claim(run_id, teams_claim_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_claim: #{e}"
end
```

#### Using the teams_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> teams_claim_with_http_info(run_id, teams_claim_request)

```ruby
begin
  # A client takes a stopped or stale run over.
  data, status_code, headers = api_instance.teams_claim_with_http_info(run_id, teams_claim_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **teams_claim_request** | [**TeamsClaimRequest**](TeamsClaimRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## teams_create_run

> <InlineObject> teams_create_run(team_run_create)

Open a run record.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
team_run_create = ChatPanel::TeamRunCreate.new # TeamRunCreate | 

begin
  # Open a run record.
  result = api_instance.teams_create_run(team_run_create)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_create_run: #{e}"
end
```

#### Using the teams_create_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> teams_create_run_with_http_info(team_run_create)

```ruby
begin
  # Open a run record.
  data, status_code, headers = api_instance.teams_create_run_with_http_info(team_run_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_create_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_run_create** | [**TeamRunCreate**](TeamRunCreate.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## teams_decide

> <InlineObject> teams_decide(run_id, teams_decide_request)

Approve or reject a post.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 
teams_decide_request = ChatPanel::TeamsDecideRequest.new({post_id: 'post_id_example', status: 'approved'}) # TeamsDecideRequest | 

begin
  # Approve or reject a post.
  result = api_instance.teams_decide(run_id, teams_decide_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_decide: #{e}"
end
```

#### Using the teams_decide_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> teams_decide_with_http_info(run_id, teams_decide_request)

```ruby
begin
  # Approve or reject a post.
  data, status_code, headers = api_instance.teams_decide_with_http_info(run_id, teams_decide_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_decide_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **teams_decide_request** | [**TeamsDecideRequest**](TeamsDecideRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## teams_delete_run

> <PrefsDelete200Response> teams_delete_run(run_id)

Remove a run; a live one is stopped first.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 

begin
  # Remove a run; a live one is stopped first.
  result = api_instance.teams_delete_run(run_id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_delete_run: #{e}"
end
```

#### Using the teams_delete_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrefsDelete200Response>, Integer, Hash)> teams_delete_run_with_http_info(run_id)

```ruby
begin
  # Remove a run; a live one is stopped first.
  data, status_code, headers = api_instance.teams_delete_run_with_http_info(run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrefsDelete200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_delete_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## teams_get_run

> <InlineObject> teams_get_run(run_id, opts)

One run, optionally with its events.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 
opts = {
  events: true # Boolean | 
}

begin
  # One run, optionally with its events.
  result = api_instance.teams_get_run(run_id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_get_run: #{e}"
end
```

#### Using the teams_get_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> teams_get_run_with_http_info(run_id, opts)

```ruby
begin
  # One run, optionally with its events.
  data, status_code, headers = api_instance.teams_get_run_with_http_info(run_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_get_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **events** | **Boolean** |  | [optional] |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## teams_handoff

> <InlineObject> teams_handoff(run_id, teams_handoff_request)

Continue a task on another model.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 
teams_handoff_request = ChatPanel::TeamsHandoffRequest.new({task_id: 'task_id_example', model: 'model_example'}) # TeamsHandoffRequest | 

begin
  # Continue a task on another model.
  result = api_instance.teams_handoff(run_id, teams_handoff_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_handoff: #{e}"
end
```

#### Using the teams_handoff_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> teams_handoff_with_http_info(run_id, teams_handoff_request)

```ruby
begin
  # Continue a task on another model.
  data, status_code, headers = api_instance.teams_handoff_with_http_info(run_id, teams_handoff_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_handoff_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **teams_handoff_request** | [**TeamsHandoffRequest**](TeamsHandoffRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## teams_list_runs

> <TeamsListRuns200Response> teams_list_runs(opts)

The board — recent runs, newest first.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
opts = {
  limit: 56, # Integer | 
  team: 'team_example' # String | 
}

begin
  # The board — recent runs, newest first.
  result = api_instance.teams_list_runs(opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_list_runs: #{e}"
end
```

#### Using the teams_list_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamsListRuns200Response>, Integer, Hash)> teams_list_runs_with_http_info(opts)

```ruby
begin
  # The board — recent runs, newest first.
  data, status_code, headers = api_instance.teams_list_runs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamsListRuns200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_list_runs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional][default to 50] |
| **team** | **String** |  | [optional] |

### Return type

[**TeamsListRuns200Response**](TeamsListRuns200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## teams_post

> <InlineObject> teams_post(run_id, teams_post_request)

Post a note to a thread.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 
teams_post_request = ChatPanel::TeamsPostRequest.new({thread_id: 'thread_id_example', text: 'text_example'}) # TeamsPostRequest | 

begin
  # Post a note to a thread.
  result = api_instance.teams_post(run_id, teams_post_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_post: #{e}"
end
```

#### Using the teams_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> teams_post_with_http_info(run_id, teams_post_request)

```ruby
begin
  # Post a note to a thread.
  data, status_code, headers = api_instance.teams_post_with_http_info(run_id, teams_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **teams_post_request** | [**TeamsPostRequest**](TeamsPostRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## teams_remove_thread

> <InlineObject> teams_remove_thread(run_id, thread_id)

A person removes a thread from the board.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 
thread_id = 'thread_id_example' # String | 

begin
  # A person removes a thread from the board.
  result = api_instance.teams_remove_thread(run_id, thread_id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_remove_thread: #{e}"
end
```

#### Using the teams_remove_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> teams_remove_thread_with_http_info(run_id, thread_id)

```ruby
begin
  # A person removes a thread from the board.
  data, status_code, headers = api_instance.teams_remove_thread_with_http_info(run_id, thread_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_remove_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **thread_id** | **String** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## teams_run_events

> String teams_run_events(run_id, opts)

Tail a run — the record first, replay from `after`, then live.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 
opts = {
  after: 56 # Integer | Replay events with seq greater than this; absent means from the start.
}

begin
  # Tail a run — the record first, replay from `after`, then live.
  result = api_instance.teams_run_events(run_id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_run_events: #{e}"
end
```

#### Using the teams_run_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> teams_run_events_with_http_info(run_id, opts)

```ruby
begin
  # Tail a run — the record first, replay from `after`, then live.
  data, status_code, headers = api_instance.teams_run_events_with_http_info(run_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_run_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |
| **after** | **Integer** | Replay events with seq greater than this; absent means from the start. | [optional] |

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json


## teams_stop_run

> <InlineObject> teams_stop_run(run_id)

Ask the running client to stop.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::TeamsApi.new
run_id = 'run_id_example' # String | 

begin
  # Ask the running client to stop.
  result = api_instance.teams_stop_run(run_id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_stop_run: #{e}"
end
```

#### Using the teams_stop_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> teams_stop_run_with_http_info(run_id)

```ruby
begin
  # Ask the running client to stop.
  data, status_code, headers = api_instance.teams_stop_run_with_http_info(run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue ChatPanel::ApiError => e
  puts "Error when calling TeamsApi->teams_stop_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

