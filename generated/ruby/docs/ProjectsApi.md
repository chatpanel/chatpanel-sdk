# ChatPanel::ProjectsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**projects_append_events**](ProjectsApi.md#projects_append_events) | **POST** /v1/projects/{projectId}/events | The executive loop appends (status, run.linked, run.spent, decision, report). |
| [**projects_applications**](ProjectsApi.md#projects_applications) | **GET** /v1/projects/{projectId}/jobs/{jobId}/applications | The pool applies at once; &#x60;prompt&#x60; is the evaluator&#39;s, for a structured call. |
| [**projects_create**](ProjectsApi.md#projects_create) | **POST** /v1/projects | Open a record (idempotent) or update the page. |
| [**projects_delete**](ProjectsApi.md#projects_delete) | **DELETE** /v1/projects/{projectId} | Remove a project record. |
| [**projects_events**](ProjectsApi.md#projects_events) | **GET** /v1/projects/{projectId}/events | Tail a project — hello, replay, then live. |
| [**projects_get**](ProjectsApi.md#projects_get) | **GET** /v1/projects/{projectId} | The record — jobs, runs, spend, decisions, report. |
| [**projects_job_board**](ProjectsApi.md#projects_job_board) | **GET** /v1/projects/jobs | Every open posting across projects. |
| [**projects_list**](ProjectsApi.md#projects_list) | **GET** /v1/projects | Projects, newest activity first, jobs counted. |
| [**projects_patch_job**](ProjectsApi.md#projects_patch_job) | **POST** /v1/projects/{projectId}/jobs/{jobId} | Move a job along its state machine. |
| [**projects_post_job**](ProjectsApi.md#projects_post_job) | **POST** /v1/projects/{projectId}/jobs | Post a job. |
| [**projects_recruit**](ProjectsApi.md#projects_recruit) | **POST** /v1/projects/{projectId}/jobs/{jobId}/recruit | One pass — fit recomputed, the evaluation read through the schema, the pick landed as events. |


## projects_append_events

> <InlineObject1> projects_append_events(project_id, teams_append_run_events_request)

The executive loop appends (status, run.linked, run.spent, decision, report).

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ProjectsApi.new
project_id = 'project_id_example' # String | 
teams_append_run_events_request = ChatPanel::TeamsAppendRunEventsRequest.new({events: [ChatPanel::RunEvent.new({type: 'type_example'})]}) # TeamsAppendRunEventsRequest | 

begin
  # The executive loop appends (status, run.linked, run.spent, decision, report).
  result = api_instance.projects_append_events(project_id, teams_append_run_events_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_append_events: #{e}"
end
```

#### Using the projects_append_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject1>, Integer, Hash)> projects_append_events_with_http_info(project_id, teams_append_run_events_request)

```ruby
begin
  # The executive loop appends (status, run.linked, run.spent, decision, report).
  data, status_code, headers = api_instance.projects_append_events_with_http_info(project_id, teams_append_run_events_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject1>
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_append_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **teams_append_run_events_request** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md) |  |  |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## projects_applications

> Hash&lt;String, Object&gt; projects_applications(project_id, job_id, opts)

The pool applies at once; `prompt` is the evaluator's, for a structured call.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ProjectsApi.new
project_id = 'project_id_example' # String | 
job_id = 'job_id_example' # String | 
opts = {
  reach: 'reach_example', # String | 
  chat_model: 'chat_model_example' # String | 
}

begin
  # The pool applies at once; `prompt` is the evaluator's, for a structured call.
  result = api_instance.projects_applications(project_id, job_id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_applications: #{e}"
end
```

#### Using the projects_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> projects_applications_with_http_info(project_id, job_id, opts)

```ruby
begin
  # The pool applies at once; `prompt` is the evaluator's, for a structured call.
  data, status_code, headers = api_instance.projects_applications_with_http_info(project_id, job_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **job_id** | **String** |  |  |
| **reach** | **String** |  | [optional][default to &#39;any&#39;] |
| **chat_model** | **String** |  | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## projects_create

> <InlineObject1> projects_create(projects_create_request)

Open a record (idempotent) or update the page.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ProjectsApi.new
projects_create_request = ChatPanel::ProjectsCreateRequest.new # ProjectsCreateRequest | 

begin
  # Open a record (idempotent) or update the page.
  result = api_instance.projects_create(projects_create_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_create: #{e}"
end
```

#### Using the projects_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject1>, Integer, Hash)> projects_create_with_http_info(projects_create_request)

```ruby
begin
  # Open a record (idempotent) or update the page.
  data, status_code, headers = api_instance.projects_create_with_http_info(projects_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject1>
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **projects_create_request** | [**ProjectsCreateRequest**](ProjectsCreateRequest.md) |  |  |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## projects_delete

> <PrefsDelete200Response> projects_delete(project_id)

Remove a project record.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ProjectsApi.new
project_id = 'project_id_example' # String | 

begin
  # Remove a project record.
  result = api_instance.projects_delete(project_id)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_delete: #{e}"
end
```

#### Using the projects_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrefsDelete200Response>, Integer, Hash)> projects_delete_with_http_info(project_id)

```ruby
begin
  # Remove a project record.
  data, status_code, headers = api_instance.projects_delete_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrefsDelete200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## projects_events

> String projects_events(project_id, opts)

Tail a project — hello, replay, then live.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ProjectsApi.new
project_id = 'project_id_example' # String | 
opts = {
  after: 56 # Integer | 
}

begin
  # Tail a project — hello, replay, then live.
  result = api_instance.projects_events(project_id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_events: #{e}"
end
```

#### Using the projects_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> projects_events_with_http_info(project_id, opts)

```ruby
begin
  # Tail a project — hello, replay, then live.
  data, status_code, headers = api_instance.projects_events_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **after** | **Integer** |  | [optional] |

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json


## projects_get

> <InlineObject1> projects_get(project_id, opts)

The record — jobs, runs, spend, decisions, report.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ProjectsApi.new
project_id = 'project_id_example' # String | 
opts = {
  events: true # Boolean | 
}

begin
  # The record — jobs, runs, spend, decisions, report.
  result = api_instance.projects_get(project_id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_get: #{e}"
end
```

#### Using the projects_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject1>, Integer, Hash)> projects_get_with_http_info(project_id, opts)

```ruby
begin
  # The record — jobs, runs, spend, decisions, report.
  data, status_code, headers = api_instance.projects_get_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject1>
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **events** | **Boolean** |  | [optional] |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## projects_job_board

> <ProjectsJobBoard200Response> projects_job_board

Every open posting across projects.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ProjectsApi.new

begin
  # Every open posting across projects.
  result = api_instance.projects_job_board
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_job_board: #{e}"
end
```

#### Using the projects_job_board_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectsJobBoard200Response>, Integer, Hash)> projects_job_board_with_http_info

```ruby
begin
  # Every open posting across projects.
  data, status_code, headers = api_instance.projects_job_board_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectsJobBoard200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_job_board_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProjectsJobBoard200Response**](ProjectsJobBoard200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## projects_list

> <ProjectsList200Response> projects_list(opts)

Projects, newest activity first, jobs counted.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ProjectsApi.new
opts = {
  limit: 56, # Integer | 
  status: 'status_example' # String | 
}

begin
  # Projects, newest activity first, jobs counted.
  result = api_instance.projects_list(opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_list: #{e}"
end
```

#### Using the projects_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectsList200Response>, Integer, Hash)> projects_list_with_http_info(opts)

```ruby
begin
  # Projects, newest activity first, jobs counted.
  data, status_code, headers = api_instance.projects_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectsList200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional][default to 50] |
| **status** | **String** |  | [optional] |

### Return type

[**ProjectsList200Response**](ProjectsList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## projects_patch_job

> <InlineObject1> projects_patch_job(project_id, job_id, projects_patch_job_request)

Move a job along its state machine.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ProjectsApi.new
project_id = 'project_id_example' # String | 
job_id = 'job_id_example' # String | 
projects_patch_job_request = ChatPanel::ProjectsPatchJobRequest.new({patch: { key: 3.56}}) # ProjectsPatchJobRequest | 

begin
  # Move a job along its state machine.
  result = api_instance.projects_patch_job(project_id, job_id, projects_patch_job_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_patch_job: #{e}"
end
```

#### Using the projects_patch_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject1>, Integer, Hash)> projects_patch_job_with_http_info(project_id, job_id, projects_patch_job_request)

```ruby
begin
  # Move a job along its state machine.
  data, status_code, headers = api_instance.projects_patch_job_with_http_info(project_id, job_id, projects_patch_job_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject1>
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_patch_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **job_id** | **String** |  |  |
| **projects_patch_job_request** | [**ProjectsPatchJobRequest**](ProjectsPatchJobRequest.md) |  |  |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## projects_post_job

> <InlineObject1> projects_post_job(project_id, projects_post_job_request)

Post a job.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ProjectsApi.new
project_id = 'project_id_example' # String | 
projects_post_job_request = ChatPanel::ProjectsPostJobRequest.new({job: { key: 3.56}}) # ProjectsPostJobRequest | 

begin
  # Post a job.
  result = api_instance.projects_post_job(project_id, projects_post_job_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_post_job: #{e}"
end
```

#### Using the projects_post_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject1>, Integer, Hash)> projects_post_job_with_http_info(project_id, projects_post_job_request)

```ruby
begin
  # Post a job.
  data, status_code, headers = api_instance.projects_post_job_with_http_info(project_id, projects_post_job_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject1>
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_post_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **projects_post_job_request** | [**ProjectsPostJobRequest**](ProjectsPostJobRequest.md) |  |  |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## projects_recruit

> Hash&lt;String, Object&gt; projects_recruit(project_id, job_id, projects_recruit_request)

One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ProjectsApi.new
project_id = 'project_id_example' # String | 
job_id = 'job_id_example' # String | 
projects_recruit_request = ChatPanel::ProjectsRecruitRequest.new # ProjectsRecruitRequest | 

begin
  # One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.
  result = api_instance.projects_recruit(project_id, job_id, projects_recruit_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_recruit: #{e}"
end
```

#### Using the projects_recruit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> projects_recruit_with_http_info(project_id, job_id, projects_recruit_request)

```ruby
begin
  # One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.
  data, status_code, headers = api_instance.projects_recruit_with_http_info(project_id, job_id, projects_recruit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue ChatPanel::ApiError => e
  puts "Error when calling ProjectsApi->projects_recruit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **job_id** | **String** |  |  |
| **projects_recruit_request** | [**ProjectsRecruitRequest**](ProjectsRecruitRequest.md) |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

