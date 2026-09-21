# ChatPanel::RuntimeApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**runtime_engine**](RuntimeApi.md#runtime_engine) | **POST** /v1/runtime/engines/{name} | Start the container engine (Podman — creates and starts its machine where one is needed). |
| [**runtime_service**](RuntimeApi.md#runtime_service) | **POST** /v1/runtime/services/{id} | Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it. |
| [**runtime_status**](RuntimeApi.md#runtime_status) | **GET** /v1/runtime | The runtime — the process sandbox, what is running now, the container engine, the services. |


## runtime_engine

> <RuntimeActionResult> runtime_engine(name, opts)

Start the container engine (Podman — creates and starts its machine where one is needed).

`{ action: 'start' }`. Podman on macOS and Windows runs containers in a machine: made on first start (`podman machine init`), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. 

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

api_instance = ChatPanel::RuntimeApi.new
name = 'podman' # String | 
opts = {
  runtime_engine_request: ChatPanel::RuntimeEngineRequest.new # RuntimeEngineRequest | 
}

begin
  # Start the container engine (Podman — creates and starts its machine where one is needed).
  result = api_instance.runtime_engine(name, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling RuntimeApi->runtime_engine: #{e}"
end
```

#### Using the runtime_engine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RuntimeActionResult>, Integer, Hash)> runtime_engine_with_http_info(name, opts)

```ruby
begin
  # Start the container engine (Podman — creates and starts its machine where one is needed).
  data, status_code, headers = api_instance.runtime_engine_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RuntimeActionResult>
rescue ChatPanel::ApiError => e
  puts "Error when calling RuntimeApi->runtime_engine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **runtime_engine_request** | [**RuntimeEngineRequest**](RuntimeEngineRequest.md) |  | [optional] |

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## runtime_service

> <RuntimeActionResult> runtime_service(id, opts)

Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it.

`{ action: 'start' | 'stop' }`. `start` brings the engine up if it is not, runs the service's container from its kit (SearXNG: `127.0.0.1:8888`, JSON on, the limiter off, a random secret, capabilities dropped; `reranker` on 8889 and `opendecision` on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (`search.searxng.url`; `capabilities.rerank` / `capabilities.decide`, so `/v1/rerank` and `/v1/decide` are served and listed). `stop` stops the container and clears what it set. `{ action: 'model', model }` (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (`GET /v1/runtime` `services.<id>.models`) or a Hugging Face `owner/name` — gated by the container ENGINE's memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. 

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

api_instance = ChatPanel::RuntimeApi.new
id = 'searxng' # String | 
opts = {
  runtime_service_request: ChatPanel::RuntimeServiceRequest.new # RuntimeServiceRequest | 
}

begin
  # Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it.
  result = api_instance.runtime_service(id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling RuntimeApi->runtime_service: #{e}"
end
```

#### Using the runtime_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RuntimeActionResult>, Integer, Hash)> runtime_service_with_http_info(id, opts)

```ruby
begin
  # Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it.
  data, status_code, headers = api_instance.runtime_service_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RuntimeActionResult>
rescue ChatPanel::ApiError => e
  puts "Error when calling RuntimeApi->runtime_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **runtime_service_request** | [**RuntimeServiceRequest**](RuntimeServiceRequest.md) |  | [optional] |

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## runtime_status

> <RuntimeDocument> runtime_status

The runtime — the process sandbox, what is running now, the container engine, the services.

One document for Settings › Runtime. `sandbox` is the bridge's own (`/health.sandbox`: enabled, mode `open` | `allowlist` | `none`, the runtime found, the reason when none, the global `extras`, whether a process can get a session of its own, and `refused` — the last hosts any process was refused, names only). `processes` lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. `engines` says which container engine exists (`podman` first, `docker`) and whether it can run a container now; when none does, `install` carries the command for this platform — shown to the person, never run by the gateway. `services` is the catalogue: `searxng` with its state (`no-engine` | `engine-stopped` | `absent` | `stopped` | `running`), its loopback URL and whether it answers. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::RuntimeApi.new

begin
  # The runtime — the process sandbox, what is running now, the container engine, the services.
  result = api_instance.runtime_status
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling RuntimeApi->runtime_status: #{e}"
end
```

#### Using the runtime_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RuntimeDocument>, Integer, Hash)> runtime_status_with_http_info

```ruby
begin
  # The runtime — the process sandbox, what is running now, the container engine, the services.
  data, status_code, headers = api_instance.runtime_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RuntimeDocument>
rescue ChatPanel::ApiError => e
  puts "Error when calling RuntimeApi->runtime_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RuntimeDocument**](RuntimeDocument.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

