# LinkAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linkPair**](LinkAPI.md#linkpair) | **POST** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first.
[**linkRemoveDevice**](LinkAPI.md#linkremovedevice) | **DELETE** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection.
[**linkRoute**](LinkAPI.md#linkroute) | **POST** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel.
[**linkStatus**](LinkAPI.md#linkstatus) | **GET** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach.


# **linkPair**
```swift
    open class func linkPair(linkPairRequest: LinkPairRequest? = nil, completion: @escaping (_ data: LinkPairResult?, _ error: Error?) -> Void)
```

Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.

**A phone** (no `kind`, or `kind: phone`): a room on the route's relay and the QR the phone scans; the answer carries `uri`, `svg`, `expiresAt`, `room`.  **A partner server** (`kind: partner`, gateway 0.89.0+): nothing is issued without the owner's yes. Without `confirm: true` the answer is `{ confirmed: false, preview }` — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With `confirm: true` the answer adds the `code` (`cplink1.…`, one use, 10 minutes), `room`, `route` and `host`. The route is the gateway's own unless `route` names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel's hosted relay is used only for `link`. Refused with 403 from a device on Link: a paired device never pairs another. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let linkPairRequest = LinkPairRequest(kind: "kind_example", name: "name_example", partner: LinkPairRequest_partner(name: "name_example"), scopes: LinkPairRequest_scopes(), route: "route_example", relay: "relay_example", confirm: false) // LinkPairRequest |  (optional)

// Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.
LinkAPI.linkPair(linkPairRequest: linkPairRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkPairRequest** | [**LinkPairRequest**](LinkPairRequest.md) |  | [optional] 

### Return type

[**LinkPairResult**](LinkPairResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkRemoveDevice**
```swift
    open class func linkRemoveDevice(deviceId: String, completion: @escaping (_ data: BrowserAnnounce200Response?, _ error: Error?) -> Void)
```

Remove a paired device now — its relay room, its key and its open connection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let deviceId = "deviceId_example" // String | The device's `id` from `link.status`.

// Remove a paired device now — its relay room, its key and its open connection.
LinkAPI.linkRemoveDevice(deviceId: deviceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String** | The device&#39;s &#x60;id&#x60; from &#x60;link.status&#x60;. | 

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkRoute**
```swift
    open class func linkRoute(linkRouteRequest: LinkRouteRequest, completion: @escaping (_ data: LinkStatus?, _ error: Error?) -> Void)
```

How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.

Checked, saved in the gateway's config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let linkRouteRequest = LinkRouteRequest(route: "route_example", url: "url_example", fallback: false) // LinkRouteRequest | 

// How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.
LinkAPI.linkRoute(linkRouteRequest: linkRouteRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkRouteRequest** | [**LinkRouteRequest**](LinkRouteRequest.md) |  | 

### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkStatus**
```swift
    open class func linkStatus(completion: @escaping (_ data: LinkStatus?, _ error: Error?) -> Void)
```

The Link route and every paired device — phones and partner servers — with what each may reach.

No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries `kind: partner`, its `partner.name`, `scopes`, the `route` it was paired on and the `host` it connects to; a phone carries `kind: phone` and follows the gateway's route. Changing the route never moves a partner: one whose tunnel door shut with the route says `routeClosed`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// The Link route and every paired device — phones and partner servers — with what each may reach.
LinkAPI.linkStatus() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

