# ChatPanel::BrowserApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**browser_announce**](BrowserApi.md#browser_announce) | **POST** /v1/browser/announce | The browser says what it offers — its page tool spec and guidance. |
| [**browser_call**](BrowserApi.md#browser_call) | **POST** /v1/browser/call | Run one page action in the person&#39;s browser and wait for its result. |
| [**browser_result**](BrowserApi.md#browser_result) | **POST** /v1/browser/result | The browser answers a call it ran. Only the session the call went to may answer it. |
| [**browser_status**](BrowserApi.md#browser_status) | **GET** /v1/browser | Is a browser connected, which one, and the page tool it offers. |
| [**browser_stream**](BrowserApi.md#browser_stream) | **GET** /v1/browser/stream | The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run. |


## browser_announce

> <BrowserAnnounce200Response> browser_announce(browser_announce)

The browser says what it offers — its page tool spec and guidance.

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

api_instance = ChatPanel::BrowserApi.new
browser_announce = ChatPanel::BrowserAnnounce.new({session: 'session_example', spec: { key: 3.56}}) # BrowserAnnounce | 

begin
  # The browser says what it offers — its page tool spec and guidance.
  result = api_instance.browser_announce(browser_announce)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling BrowserApi->browser_announce: #{e}"
end
```

#### Using the browser_announce_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrowserAnnounce200Response>, Integer, Hash)> browser_announce_with_http_info(browser_announce)

```ruby
begin
  # The browser says what it offers — its page tool spec and guidance.
  data, status_code, headers = api_instance.browser_announce_with_http_info(browser_announce)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrowserAnnounce200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling BrowserApi->browser_announce_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **browser_announce** | [**BrowserAnnounce**](BrowserAnnounce.md) |  |  |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## browser_call

> <BrowserCallResult> browser_call(browser_call)

Run one page action in the person's browser and wait for its result.

Carried to the connected browser, which runs it on the task's own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to `timeoutMs` (default 120 s) because a confirmation is a person deciding. 

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

api_instance = ChatPanel::BrowserApi.new
browser_call = ChatPanel::BrowserCall.new({action: 'action_example'}) # BrowserCall | 

begin
  # Run one page action in the person's browser and wait for its result.
  result = api_instance.browser_call(browser_call)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling BrowserApi->browser_call: #{e}"
end
```

#### Using the browser_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrowserCallResult>, Integer, Hash)> browser_call_with_http_info(browser_call)

```ruby
begin
  # Run one page action in the person's browser and wait for its result.
  data, status_code, headers = api_instance.browser_call_with_http_info(browser_call)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrowserCallResult>
rescue ChatPanel::ApiError => e
  puts "Error when calling BrowserApi->browser_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **browser_call** | [**BrowserCall**](BrowserCall.md) |  |  |

### Return type

[**BrowserCallResult**](BrowserCallResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## browser_result

> <BrowserAnnounce200Response> browser_result(browser_result)

The browser answers a call it ran. Only the session the call went to may answer it.

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

api_instance = ChatPanel::BrowserApi.new
browser_result = ChatPanel::BrowserResult.new({session: 'session_example', id: 'id_example', result: ChatPanel::BrowserResultResultOneOf.new({text: 'text_example'})}) # BrowserResult | 

begin
  # The browser answers a call it ran. Only the session the call went to may answer it.
  result = api_instance.browser_result(browser_result)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling BrowserApi->browser_result: #{e}"
end
```

#### Using the browser_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrowserAnnounce200Response>, Integer, Hash)> browser_result_with_http_info(browser_result)

```ruby
begin
  # The browser answers a call it ran. Only the session the call went to may answer it.
  data, status_code, headers = api_instance.browser_result_with_http_info(browser_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrowserAnnounce200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling BrowserApi->browser_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **browser_result** | [**BrowserResult**](BrowserResult.md) |  |  |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## browser_status

> <BrowserStatus> browser_status

Is a browser connected, which one, and the page tool it offers.

The spec and guidance are the extension's own — a client hands them to its model as they are.

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

api_instance = ChatPanel::BrowserApi.new

begin
  # Is a browser connected, which one, and the page tool it offers.
  result = api_instance.browser_status
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling BrowserApi->browser_status: #{e}"
end
```

#### Using the browser_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrowserStatus>, Integer, Hash)> browser_status_with_http_info

```ruby
begin
  # Is a browser connected, which one, and the page tool it offers.
  data, status_code, headers = api_instance.browser_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrowserStatus>
rescue ChatPanel::ApiError => e
  puts "Error when calling BrowserApi->browser_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BrowserStatus**](BrowserStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## browser_stream

> String browser_stream

The browser's end — `hello` with its session, then a `call` frame per action to run.

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

api_instance = ChatPanel::BrowserApi.new

begin
  # The browser's end — `hello` with its session, then a `call` frame per action to run.
  result = api_instance.browser_stream
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling BrowserApi->browser_stream: #{e}"
end
```

#### Using the browser_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> browser_stream_with_http_info

```ruby
begin
  # The browser's end — `hello` with its session, then a `call` frame per action to run.
  data, status_code, headers = api_instance.browser_stream_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue ChatPanel::ApiError => e
  puts "Error when calling BrowserApi->browser_stream_with_http_info: #{e}"
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

