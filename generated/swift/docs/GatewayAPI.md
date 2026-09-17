# GatewayAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gatewayAudit**](GatewayAPI.md#gatewayaudit) | **GET** /audit | The egress audit — which hosts this gateway has contacted and which its config allows.
[**gatewayHealth**](GatewayAPI.md#gatewayhealth) | **GET** /health | Liveness, version and capabilities.
[**gatewayPair**](GatewayAPI.md#gatewaypair) | **POST** /pair | Exchange a pairing code for the gateway token.
[**gatewayPairCode**](GatewayAPI.md#gatewaypaircode) | **POST** /pair/code | Mint a one-time pairing code (5 minutes, one use, 5 attempts).
[**gatewayWhoami**](GatewayAPI.md#gatewaywhoami) | **POST** /whoami | What the gateway makes of this caller.


# **gatewayAudit**
```swift
    open class func gatewayAudit(completion: @escaping (_ data: Audit?, _ error: Error?) -> Void)
```

The egress audit — which hosts this gateway has contacted and which its config allows.

The checkable claim behind \"nothing leaves the machine\". Admin-gated because it names the user's model endpoints.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// The egress audit — which hosts this gateway has contacted and which its config allows.
GatewayAPI.gatewayAudit() { (response, error) in
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

[**Audit**](Audit.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayHealth**
```swift
    open class func gatewayHealth(completion: @escaping (_ data: Health?, _ error: Error?) -> Void)
```

Liveness, version and capabilities.

Additive fields only. `version` is what every version gate reads.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// Liveness, version and capabilities.
GatewayAPI.gatewayHealth() { (response, error) in
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

[**Health**](Health.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayPair**
```swift
    open class func gatewayPair(gatewayPairRequest: GatewayPairRequest, completion: @escaping (_ data: Paired?, _ error: Error?) -> Void)
```

Exchange a pairing code for the gateway token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let gatewayPairRequest = gateway_pair_request(code: "code_example") // GatewayPairRequest | 

// Exchange a pairing code for the gateway token.
GatewayAPI.gatewayPair(gatewayPairRequest: gatewayPairRequest) { (response, error) in
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
 **gatewayPairRequest** | [**GatewayPairRequest**](GatewayPairRequest.md) |  | 

### Return type

[**Paired**](Paired.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayPairCode**
```swift
    open class func gatewayPairCode(completion: @escaping (_ data: PairingCode?, _ error: Error?) -> Void)
```

Mint a one-time pairing code (5 minutes, one use, 5 attempts).

Only a caller that already holds the token may mint one — pairing widens nothing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// Mint a one-time pairing code (5 minutes, one use, 5 attempts).
GatewayAPI.gatewayPairCode() { (response, error) in
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

[**PairingCode**](PairingCode.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayWhoami**
```swift
    open class func gatewayWhoami(completion: @escaping (_ data: WhoAmI?, _ error: Error?) -> Void)
```

What the gateway makes of this caller.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// What the gateway makes of this caller.
GatewayAPI.gatewayWhoami() { (response, error) in
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

[**WhoAmI**](WhoAmI.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

