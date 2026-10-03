# \LinkAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LinkAnswerApproval**](LinkAPI.md#LinkAnswerApproval) | **Post** /v1/link/approvals/{approvalId} | The owner&#39;s answer — once, this action for the rest of the conversation, everything in it, or no.
[**LinkApprovals**](LinkAPI.md#LinkApprovals) | **Get** /v1/link/approvals | What partners&#39; agents are waiting on the owner for — each request a partner&#39;s coding agent made that the owner&#39;s settings do not already allow.
[**LinkApprovalsStream**](LinkAPI.md#LinkApprovalsStream) | **Get** /v1/link/approvals/stream | The waiting requests as they change — one &#x60;approvals&#x60; event with the whole list on each change, and at connect.
[**LinkDeleteFile**](LinkAPI.md#LinkDeleteFile) | **Delete** /v1/link/files/{path} | Remove a file from the partner&#39;s folder (never a folder).
[**LinkListFiles**](LinkAPI.md#LinkListFiles) | **Get** /v1/link/files | A partner&#39;s own folder, from its side — every file it may hold there, with size and last change.
[**LinkPair**](LinkAPI.md#LinkPair) | **Post** /v1/link/pair | Start a pairing — a phone&#39;s QR, or (with &#x60;kind partner&#x60;) a partner server&#39;s one-time code, shown and confirmed first.
[**LinkReadFile**](LinkAPI.md#LinkReadFile) | **Get** /v1/link/files/{path} | Read back a file from the partner&#39;s folder — what its agents wrote there.
[**LinkRemoveDevice**](LinkAPI.md#LinkRemoveDevice) | **Delete** /v1/link/devices/{deviceId} | Remove a paired device now — its relay room, its key and its open connection.
[**LinkRoute**](LinkAPI.md#LinkRoute) | **Post** /v1/link/route | How devices reach this computer — ChatPanel Link, the person&#39;s own relay, Tailscale or Cloudflare Tunnel.
[**LinkStatus**](LinkAPI.md#LinkStatus) | **Get** /v1/link | The Link route and every paired device — phones and partner servers — with what each may reach.
[**LinkWriteFile**](LinkAPI.md#LinkWriteFile) | **Put** /v1/link/files/{path} | Put a file in the partner&#39;s folder — its data, a skill, a subagent or instructions.



## LinkAnswerApproval

> BrowserAnnounce200Response LinkAnswerApproval(ctx, approvalId).LinkAnswerApprovalRequest(linkAnswerApprovalRequest).Execute()

The owner's answer — once, this action for the rest of the conversation, everything in it, or no.



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
	approvalId := "approvalId_example" // string | 
	linkAnswerApprovalRequest := *openapiclient.NewLinkAnswerApprovalRequest("Decision_example") // LinkAnswerApprovalRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.LinkAPI.LinkAnswerApproval(context.Background(), approvalId).LinkAnswerApprovalRequest(linkAnswerApprovalRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkAnswerApproval``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkAnswerApproval`: BrowserAnnounce200Response
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkAnswerApproval`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**approvalId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiLinkAnswerApprovalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **linkAnswerApprovalRequest** | [**LinkAnswerApprovalRequest**](LinkAnswerApprovalRequest.md) |  | 

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkApprovals

> LinkApprovals200Response LinkApprovals(ctx).Execute()

What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow.



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
	resp, r, err := apiClient.LinkAPI.LinkApprovals(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkApprovals``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkApprovals`: LinkApprovals200Response
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkApprovals`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiLinkApprovalsRequest struct via the builder pattern


### Return type

[**LinkApprovals200Response**](LinkApprovals200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkApprovalsStream

> string LinkApprovalsStream(ctx).Execute()

The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect.

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
	resp, r, err := apiClient.LinkAPI.LinkApprovalsStream(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkApprovalsStream``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkApprovalsStream`: string
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkApprovalsStream`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiLinkApprovalsStreamRequest struct via the builder pattern


### Return type

**string**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkDeleteFile

> BrowserAnnounce200Response LinkDeleteFile(ctx, path).Execute()

Remove a file from the partner's folder (never a folder).

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
	path := "path_example" // string | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.LinkAPI.LinkDeleteFile(context.Background(), path).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkDeleteFile``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkDeleteFile`: BrowserAnnounce200Response
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkDeleteFile`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**path** | **string** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | 

### Other Parameters

Other parameters are passed through a pointer to a apiLinkDeleteFileRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkListFiles

> LinkListFiles200Response LinkListFiles(ctx).Execute()

A partner's own folder, from its side — every file it may hold there, with size and last change.



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
	resp, r, err := apiClient.LinkAPI.LinkListFiles(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkListFiles``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkListFiles`: LinkListFiles200Response
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkListFiles`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiLinkListFilesRequest struct via the builder pattern


### Return type

[**LinkListFiles200Response**](LinkListFiles200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkPair

> LinkPairResult LinkPair(ctx).LinkPairRequest(linkPairRequest).Execute()

Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.



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
	linkPairRequest := *openapiclient.NewLinkPairRequest() // LinkPairRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.LinkAPI.LinkPair(context.Background()).LinkPairRequest(linkPairRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkPair``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkPair`: LinkPairResult
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkPair`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiLinkPairRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkPairRequest** | [**LinkPairRequest**](LinkPairRequest.md) |  | 

### Return type

[**LinkPairResult**](LinkPairResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkReadFile

> *os.File LinkReadFile(ctx, path).Execute()

Read back a file from the partner's folder — what its agents wrote there.



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
	path := "path_example" // string | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.LinkAPI.LinkReadFile(context.Background(), path).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkReadFile``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkReadFile`: *os.File
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkReadFile`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**path** | **string** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | 

### Other Parameters

Other parameters are passed through a pointer to a apiLinkReadFileRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[***os.File**](*os.File.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkRemoveDevice

> BrowserAnnounce200Response LinkRemoveDevice(ctx, deviceId).Execute()

Remove a paired device now — its relay room, its key and its open connection.

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
	deviceId := "deviceId_example" // string | The device's `id` from `link.status`.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.LinkAPI.LinkRemoveDevice(context.Background(), deviceId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkRemoveDevice``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkRemoveDevice`: BrowserAnnounce200Response
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkRemoveDevice`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**deviceId** | **string** | The device&#39;s &#x60;id&#x60; from &#x60;link.status&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiLinkRemoveDeviceRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkRoute

> LinkStatus LinkRoute(ctx).LinkRouteRequest(linkRouteRequest).Execute()

How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.



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
	linkRouteRequest := *openapiclient.NewLinkRouteRequest("Route_example") // LinkRouteRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.LinkAPI.LinkRoute(context.Background()).LinkRouteRequest(linkRouteRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkRoute``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkRoute`: LinkStatus
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkRoute`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiLinkRouteRequest struct via the builder pattern


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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkStatus

> LinkStatus LinkStatus(ctx).Execute()

The Link route and every paired device — phones and partner servers — with what each may reach.



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
	resp, r, err := apiClient.LinkAPI.LinkStatus(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkStatus`: LinkStatus
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkStatus`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiLinkStatusRequest struct via the builder pattern


### Return type

[**LinkStatus**](LinkStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LinkWriteFile

> LinkPartnerFile LinkWriteFile(ctx, path).Body(body).Execute()

Put a file in the partner's folder — its data, a skill, a subagent or instructions.



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
	path := "path_example" // string | Relative to the partner's folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/<name>.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F).
	body := os.NewFile(1234, "some_file") // *os.File | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.LinkAPI.LinkWriteFile(context.Background(), path).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LinkAPI.LinkWriteFile``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `LinkWriteFile`: LinkPartnerFile
	fmt.Fprintf(os.Stdout, "Response from `LinkAPI.LinkWriteFile`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**path** | **string** | Relative to the partner&#39;s folder — data/…, .claude/skills/…, .agents/skills/…, .claude/agents/&lt;name&gt;.md, CLAUDE.md or AGENTS.md. Slashes may be sent encoded (%2F). | 

### Other Parameters

Other parameters are passed through a pointer to a apiLinkWriteFileRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **body** | ***os.File** |  | 

### Return type

[**LinkPartnerFile**](LinkPartnerFile.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/octet-stream
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

