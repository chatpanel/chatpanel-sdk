# ChatPanel::GatewayApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**gateway_audit**](GatewayApi.md#gateway_audit) | **GET** /audit | The egress audit — which hosts this gateway has contacted and which its config allows. |
| [**gateway_health**](GatewayApi.md#gateway_health) | **GET** /health | Liveness, version and capabilities. |
| [**gateway_pair**](GatewayApi.md#gateway_pair) | **POST** /pair | Exchange a pairing code for the gateway token. |
| [**gateway_pair_code**](GatewayApi.md#gateway_pair_code) | **POST** /pair/code | Mint a one-time pairing code (5 minutes, one use, 5 attempts). |
| [**gateway_whoami**](GatewayApi.md#gateway_whoami) | **POST** /whoami | What the gateway makes of this caller. |


## gateway_audit

> <Audit> gateway_audit

The egress audit — which hosts this gateway has contacted and which its config allows.

The checkable claim behind \"nothing leaves the machine\". Admin-gated because it names the user's model endpoints.

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

api_instance = ChatPanel::GatewayApi.new

begin
  # The egress audit — which hosts this gateway has contacted and which its config allows.
  result = api_instance.gateway_audit
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling GatewayApi->gateway_audit: #{e}"
end
```

#### Using the gateway_audit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Audit>, Integer, Hash)> gateway_audit_with_http_info

```ruby
begin
  # The egress audit — which hosts this gateway has contacted and which its config allows.
  data, status_code, headers = api_instance.gateway_audit_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Audit>
rescue ChatPanel::ApiError => e
  puts "Error when calling GatewayApi->gateway_audit_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Audit**](Audit.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## gateway_health

> <Health> gateway_health

Liveness, version and capabilities.

Additive fields only. `version` is what every version gate reads.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::GatewayApi.new

begin
  # Liveness, version and capabilities.
  result = api_instance.gateway_health
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling GatewayApi->gateway_health: #{e}"
end
```

#### Using the gateway_health_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Health>, Integer, Hash)> gateway_health_with_http_info

```ruby
begin
  # Liveness, version and capabilities.
  data, status_code, headers = api_instance.gateway_health_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Health>
rescue ChatPanel::ApiError => e
  puts "Error when calling GatewayApi->gateway_health_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Health**](Health.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## gateway_pair

> <Paired> gateway_pair(gateway_pair_request)

Exchange a pairing code for the gateway token.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::GatewayApi.new
gateway_pair_request = ChatPanel::GatewayPairRequest.new({code: 'code_example'}) # GatewayPairRequest | 

begin
  # Exchange a pairing code for the gateway token.
  result = api_instance.gateway_pair(gateway_pair_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling GatewayApi->gateway_pair: #{e}"
end
```

#### Using the gateway_pair_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Paired>, Integer, Hash)> gateway_pair_with_http_info(gateway_pair_request)

```ruby
begin
  # Exchange a pairing code for the gateway token.
  data, status_code, headers = api_instance.gateway_pair_with_http_info(gateway_pair_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Paired>
rescue ChatPanel::ApiError => e
  puts "Error when calling GatewayApi->gateway_pair_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gateway_pair_request** | [**GatewayPairRequest**](GatewayPairRequest.md) |  |  |

### Return type

[**Paired**](Paired.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## gateway_pair_code

> <PairingCode> gateway_pair_code

Mint a one-time pairing code (5 minutes, one use, 5 attempts).

Only a caller that already holds the token may mint one — pairing widens nothing.

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

api_instance = ChatPanel::GatewayApi.new

begin
  # Mint a one-time pairing code (5 minutes, one use, 5 attempts).
  result = api_instance.gateway_pair_code
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling GatewayApi->gateway_pair_code: #{e}"
end
```

#### Using the gateway_pair_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PairingCode>, Integer, Hash)> gateway_pair_code_with_http_info

```ruby
begin
  # Mint a one-time pairing code (5 minutes, one use, 5 attempts).
  data, status_code, headers = api_instance.gateway_pair_code_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PairingCode>
rescue ChatPanel::ApiError => e
  puts "Error when calling GatewayApi->gateway_pair_code_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PairingCode**](PairingCode.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## gateway_whoami

> <WhoAmI> gateway_whoami

What the gateway makes of this caller.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::GatewayApi.new

begin
  # What the gateway makes of this caller.
  result = api_instance.gateway_whoami
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling GatewayApi->gateway_whoami: #{e}"
end
```

#### Using the gateway_whoami_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhoAmI>, Integer, Hash)> gateway_whoami_with_http_info

```ruby
begin
  # What the gateway makes of this caller.
  data, status_code, headers = api_instance.gateway_whoami_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhoAmI>
rescue ChatPanel::ApiError => e
  puts "Error when calling GatewayApi->gateway_whoami_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WhoAmI**](WhoAmI.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

