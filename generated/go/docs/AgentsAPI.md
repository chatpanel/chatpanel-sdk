# \AgentsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AgentsExportDef**](AgentsAPI.md#AgentsExportDef) | **Post** /agent-defs/export | Write an agent definition into another tool&#39;s folder.
[**AgentsExportPlan**](AgentsAPI.md#AgentsExportPlan) | **Post** /agent-defs/export-plan | What an export would write, and what the target cannot carry — without writing it.
[**AgentsGetDef**](AgentsAPI.md#AgentsGetDef) | **Get** /agent-defs/{agentId} | One agent definition, prompt included.
[**AgentsListDefs**](AgentsAPI.md#AgentsListDefs) | **Get** /agent-defs | The agent definitions on this machine, from every tool that writes one.
[**AgentsRate**](AgentsAPI.md#AgentsRate) | **Post** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job.
[**AgentsScorecard**](AgentsAPI.md#AgentsScorecard) | **Get** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard.
[**AgentsScorecards**](AgentsAPI.md#AgentsScorecards) | **Get** /v1/agents/scorecards | Every agent&#39;s scorecard.



## AgentsExportDef

> AgentsExportDef200Response AgentsExportDef(ctx).AgentExportRequest(agentExportRequest).Execute()

Write an agent definition into another tool's folder.



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
	agentExportRequest := *openapiclient.NewAgentExportRequest(*openapiclient.NewAgentDef("Id_example"), "To_example") // AgentExportRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.AgentsExportDef(context.Background()).AgentExportRequest(agentExportRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.AgentsExportDef``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AgentsExportDef`: AgentsExportDef200Response
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.AgentsExportDef`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAgentsExportDefRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md) |  | 

### Return type

[**AgentsExportDef200Response**](AgentsExportDef200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AgentsExportPlan

> AgentExportPlan AgentsExportPlan(ctx).AgentExportRequest(agentExportRequest).Execute()

What an export would write, and what the target cannot carry — without writing it.



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
	agentExportRequest := *openapiclient.NewAgentExportRequest(*openapiclient.NewAgentDef("Id_example"), "To_example") // AgentExportRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.AgentsExportPlan(context.Background()).AgentExportRequest(agentExportRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.AgentsExportPlan``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AgentsExportPlan`: AgentExportPlan
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.AgentsExportPlan`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAgentsExportPlanRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md) |  | 

### Return type

[**AgentExportPlan**](AgentExportPlan.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AgentsGetDef

> AgentsGetDef200Response AgentsGetDef(ctx, agentId).Workdir(workdir).Execute()

One agent definition, prompt included.

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
	agentId := "agentId_example" // string | One path segment; slashes and `..` are refused.
	workdir := "workdir_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.AgentsGetDef(context.Background(), agentId).Workdir(workdir).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.AgentsGetDef``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AgentsGetDef`: AgentsGetDef200Response
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.AgentsGetDef`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**agentId** | **string** | One path segment; slashes and &#x60;..&#x60; are refused. | 

### Other Parameters

Other parameters are passed through a pointer to a apiAgentsGetDefRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **workdir** | **string** |  | 

### Return type

[**AgentsGetDef200Response**](AgentsGetDef200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AgentsListDefs

> AgentsListDefs200Response AgentsListDefs(ctx).Workdir(workdir).Dir(dir).Execute()

The agent definitions on this machine, from every tool that writes one.



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
	workdir := "workdir_example" // string | Also read this project's own agent folders, ahead of the home ones. (optional)
	dir := "dir_example" // string | An extra absolute folder to scan. Repeatable. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.AgentsListDefs(context.Background()).Workdir(workdir).Dir(dir).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.AgentsListDefs``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AgentsListDefs`: AgentsListDefs200Response
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.AgentsListDefs`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAgentsListDefsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workdir** | **string** | Also read this project&#39;s own agent folders, ahead of the home ones. | 
 **dir** | **string** | An extra absolute folder to scan. Repeatable. | 

### Return type

[**AgentsListDefs200Response**](AgentsListDefs200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AgentsRate

> map[string]interface{} AgentsRate(ctx, agentId).AgentsRateRequest(agentsRateRequest).Execute()

A person rates the agent's work on a run, task or job.

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
	agentId := "agentId_example" // string | 
	agentsRateRequest := *openapiclient.NewAgentsRateRequest(float32(123)) // AgentsRateRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.AgentsRate(context.Background(), agentId).AgentsRateRequest(agentsRateRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.AgentsRate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AgentsRate`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.AgentsRate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAgentsRateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **agentsRateRequest** | [**AgentsRateRequest**](AgentsRateRequest.md) |  | 

### Return type

**map[string]interface{}**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AgentsScorecard

> map[string]interface{} AgentsScorecard(ctx, agentId).Execute()

One agent's attested scorecard.

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
	agentId := "agentId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AgentsAPI.AgentsScorecard(context.Background(), agentId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.AgentsScorecard``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AgentsScorecard`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.AgentsScorecard`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**agentId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAgentsScorecardRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**map[string]interface{}**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AgentsScorecards

> AgentsScorecards200Response AgentsScorecards(ctx).Execute()

Every agent's scorecard.

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
	resp, r, err := apiClient.AgentsAPI.AgentsScorecards(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AgentsAPI.AgentsScorecards``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AgentsScorecards`: AgentsScorecards200Response
	fmt.Fprintf(os.Stdout, "Response from `AgentsAPI.AgentsScorecards`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiAgentsScorecardsRequest struct via the builder pattern


### Return type

[**AgentsScorecards200Response**](AgentsScorecards200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

