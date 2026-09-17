# \GatewayAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GatewayAudit**](GatewayAPI.md#GatewayAudit) | **Get** /audit | The egress audit — which hosts this gateway has contacted and which its config allows.
[**GatewayHealth**](GatewayAPI.md#GatewayHealth) | **Get** /health | Liveness, version and capabilities.
[**GatewayPair**](GatewayAPI.md#GatewayPair) | **Post** /pair | Exchange a pairing code for the gateway token.
[**GatewayPairCode**](GatewayAPI.md#GatewayPairCode) | **Post** /pair/code | Mint a one-time pairing code (5 minutes, one use, 5 attempts).
[**GatewayWhoami**](GatewayAPI.md#GatewayWhoami) | **Post** /whoami | What the gateway makes of this caller.



## GatewayAudit

> Audit GatewayAudit(ctx).Execute()

The egress audit — which hosts this gateway has contacted and which its config allows.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GatewayAPI.GatewayAudit(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GatewayAPI.GatewayAudit``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GatewayAudit`: Audit
	fmt.Fprintf(os.Stdout, "Response from `GatewayAPI.GatewayAudit`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGatewayAuditRequest struct via the builder pattern


### Return type

[**Audit**](Audit.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GatewayHealth

> Health GatewayHealth(ctx).Execute()

Liveness, version and capabilities.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GatewayAPI.GatewayHealth(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GatewayAPI.GatewayHealth``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GatewayHealth`: Health
	fmt.Fprintf(os.Stdout, "Response from `GatewayAPI.GatewayHealth`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGatewayHealthRequest struct via the builder pattern


### Return type

[**Health**](Health.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GatewayPair

> Paired GatewayPair(ctx).GatewayPairRequest(gatewayPairRequest).Execute()

Exchange a pairing code for the gateway token.

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {
	gatewayPairRequest := *openapiclient.NewGatewayPairRequest("Code_example") // GatewayPairRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GatewayAPI.GatewayPair(context.Background()).GatewayPairRequest(gatewayPairRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GatewayAPI.GatewayPair``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GatewayPair`: Paired
	fmt.Fprintf(os.Stdout, "Response from `GatewayAPI.GatewayPair`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGatewayPairRequest struct via the builder pattern


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GatewayPairCode

> PairingCode GatewayPairCode(ctx).Execute()

Mint a one-time pairing code (5 minutes, one use, 5 attempts).



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GatewayAPI.GatewayPairCode(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GatewayAPI.GatewayPairCode``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GatewayPairCode`: PairingCode
	fmt.Fprintf(os.Stdout, "Response from `GatewayAPI.GatewayPairCode`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGatewayPairCodeRequest struct via the builder pattern


### Return type

[**PairingCode**](PairingCode.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GatewayWhoami

> WhoAmI GatewayWhoami(ctx).Execute()

What the gateway makes of this caller.

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/chatpanel/chatpanel-sdk"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GatewayAPI.GatewayWhoami(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GatewayAPI.GatewayWhoami``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GatewayWhoami`: WhoAmI
	fmt.Fprintf(os.Stdout, "Response from `GatewayAPI.GatewayWhoami`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGatewayWhoamiRequest struct via the builder pattern


### Return type

[**WhoAmI**](WhoAmI.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

