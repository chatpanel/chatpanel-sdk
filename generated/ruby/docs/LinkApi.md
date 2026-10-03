# ChatPanel::LinkApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**link_pair**](LinkApi.md#link_pair) | **POST** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first. |
| [**link_remove_device**](LinkApi.md#link_remove_device) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection. |
| [**link_route**](LinkApi.md#link_route) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel. |
| [**link_status**](LinkApi.md#link_status) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach. |


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

