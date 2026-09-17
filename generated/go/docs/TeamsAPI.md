# \TeamsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**TeamsAnswer**](TeamsAPI.md#TeamsAnswer) | **Post** /v1/teams/runs/{runId}/answer | A person answers an ask on the board.
[**TeamsAppendRunEvents**](TeamsAPI.md#TeamsAppendRunEvents) | **Post** /v1/teams/runs/{runId}/events | The running client appends events.
[**TeamsCheckpoint**](TeamsAPI.md#TeamsCheckpoint) | **Get** /v1/teams/runs/{runId}/checkpoint | What a client needs to resume a run whose client went away.
[**TeamsClaim**](TeamsAPI.md#TeamsClaim) | **Post** /v1/teams/runs/{runId}/claim | A client takes a stopped or stale run over.
[**TeamsCreateRun**](TeamsAPI.md#TeamsCreateRun) | **Post** /v1/teams/runs | Open a run record.
[**TeamsDecide**](TeamsAPI.md#TeamsDecide) | **Post** /v1/teams/runs/{runId}/decide | Approve or reject a post.
[**TeamsDeleteRun**](TeamsAPI.md#TeamsDeleteRun) | **Delete** /v1/teams/runs/{runId} | Remove a run; a live one is stopped first.
[**TeamsGetRun**](TeamsAPI.md#TeamsGetRun) | **Get** /v1/teams/runs/{runId} | One run, optionally with its events.
[**TeamsHandoff**](TeamsAPI.md#TeamsHandoff) | **Post** /v1/teams/runs/{runId}/handoff | Continue a task on another model.
[**TeamsListRuns**](TeamsAPI.md#TeamsListRuns) | **Get** /v1/teams/runs | The board — recent runs, newest first.
[**TeamsPost**](TeamsAPI.md#TeamsPost) | **Post** /v1/teams/runs/{runId}/post | Post a note to a thread.
[**TeamsRemoveThread**](TeamsAPI.md#TeamsRemoveThread) | **Delete** /v1/teams/runs/{runId}/threads/{threadId} | A person removes a thread from the board.
[**TeamsRunEvents**](TeamsAPI.md#TeamsRunEvents) | **Get** /v1/teams/runs/{runId}/events | Tail a run — the record first, replay from &#x60;after&#x60;, then live.
[**TeamsStopRun**](TeamsAPI.md#TeamsStopRun) | **Post** /v1/teams/runs/{runId}/stop | Ask the running client to stop.



## TeamsAnswer

> InlineObject TeamsAnswer(ctx, runId).TeamsAnswerRequest(teamsAnswerRequest).Execute()

A person answers an ask on the board.

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
	runId := "runId_example" // string | 
	teamsAnswerRequest := *openapiclient.NewTeamsAnswerRequest("ThreadId_example", "Text_example") // TeamsAnswerRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsAnswer(context.Background(), runId).TeamsAnswerRequest(teamsAnswerRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsAnswer``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsAnswer`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsAnswer`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsAnswerRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **teamsAnswerRequest** | [**TeamsAnswerRequest**](TeamsAnswerRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsAppendRunEvents

> InlineObject TeamsAppendRunEvents(ctx, runId).TeamsAppendRunEventsRequest(teamsAppendRunEventsRequest).Execute()

The running client appends events.

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
	runId := "runId_example" // string | 
	teamsAppendRunEventsRequest := *openapiclient.NewTeamsAppendRunEventsRequest([]openapiclient.RunEvent{*openapiclient.NewRunEvent("Type_example")}) // TeamsAppendRunEventsRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsAppendRunEvents(context.Background(), runId).TeamsAppendRunEventsRequest(teamsAppendRunEventsRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsAppendRunEvents``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsAppendRunEvents`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsAppendRunEvents`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsAppendRunEventsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsCheckpoint

> TeamsCheckpoint200Response TeamsCheckpoint(ctx, runId).Execute()

What a client needs to resume a run whose client went away.

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
	runId := "runId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsCheckpoint(context.Background(), runId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsCheckpoint``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsCheckpoint`: TeamsCheckpoint200Response
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsCheckpoint`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsCheckpointRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**TeamsCheckpoint200Response**](TeamsCheckpoint200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsClaim

> InlineObject TeamsClaim(ctx, runId).TeamsClaimRequest(teamsClaimRequest).Execute()

A client takes a stopped or stale run over.

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
	runId := "runId_example" // string | 
	teamsClaimRequest := *openapiclient.NewTeamsClaimRequest("Client_example") // TeamsClaimRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsClaim(context.Background(), runId).TeamsClaimRequest(teamsClaimRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsClaim``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsClaim`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsClaim`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsClaimRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **teamsClaimRequest** | [**TeamsClaimRequest**](TeamsClaimRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsCreateRun

> InlineObject TeamsCreateRun(ctx).TeamRunCreate(teamRunCreate).Execute()

Open a run record.

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
	teamRunCreate := *openapiclient.NewTeamRunCreate() // TeamRunCreate | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsCreateRun(context.Background()).TeamRunCreate(teamRunCreate).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsCreateRun``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsCreateRun`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsCreateRun`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTeamsCreateRunRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamRunCreate** | [**TeamRunCreate**](TeamRunCreate.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsDecide

> InlineObject TeamsDecide(ctx, runId).TeamsDecideRequest(teamsDecideRequest).Execute()

Approve or reject a post.

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
	runId := "runId_example" // string | 
	teamsDecideRequest := *openapiclient.NewTeamsDecideRequest("PostId_example", "Status_example") // TeamsDecideRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsDecide(context.Background(), runId).TeamsDecideRequest(teamsDecideRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsDecide``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsDecide`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsDecide`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsDecideRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **teamsDecideRequest** | [**TeamsDecideRequest**](TeamsDecideRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsDeleteRun

> PrefsDelete200Response TeamsDeleteRun(ctx, runId).Execute()

Remove a run; a live one is stopped first.

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
	runId := "runId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsDeleteRun(context.Background(), runId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsDeleteRun``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsDeleteRun`: PrefsDelete200Response
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsDeleteRun`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsDeleteRunRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsGetRun

> InlineObject TeamsGetRun(ctx, runId).Events(events).Execute()

One run, optionally with its events.

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
	runId := "runId_example" // string | 
	events := true // bool |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsGetRun(context.Background(), runId).Events(events).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsGetRun``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsGetRun`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsGetRun`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsGetRunRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **events** | **bool** |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsHandoff

> InlineObject TeamsHandoff(ctx, runId).TeamsHandoffRequest(teamsHandoffRequest).Execute()

Continue a task on another model.

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
	runId := "runId_example" // string | 
	teamsHandoffRequest := *openapiclient.NewTeamsHandoffRequest("TaskId_example", "Model_example") // TeamsHandoffRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsHandoff(context.Background(), runId).TeamsHandoffRequest(teamsHandoffRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsHandoff``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsHandoff`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsHandoff`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsHandoffRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **teamsHandoffRequest** | [**TeamsHandoffRequest**](TeamsHandoffRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsListRuns

> TeamsListRuns200Response TeamsListRuns(ctx).Limit(limit).Team(team).Execute()

The board — recent runs, newest first.

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
	limit := int32(56) // int32 |  (optional) (default to 50)
	team := "team_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsListRuns(context.Background()).Limit(limit).Team(team).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsListRuns``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsListRuns`: TeamsListRuns200Response
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsListRuns`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTeamsListRunsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int32** |  | [default to 50]
 **team** | **string** |  | 

### Return type

[**TeamsListRuns200Response**](TeamsListRuns200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsPost

> InlineObject TeamsPost(ctx, runId).TeamsPostRequest(teamsPostRequest).Execute()

Post a note to a thread.

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
	runId := "runId_example" // string | 
	teamsPostRequest := *openapiclient.NewTeamsPostRequest("ThreadId_example", "Text_example") // TeamsPostRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsPost(context.Background(), runId).TeamsPostRequest(teamsPostRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsPost`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsPost`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **teamsPostRequest** | [**TeamsPostRequest**](TeamsPostRequest.md) |  | 

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsRemoveThread

> InlineObject TeamsRemoveThread(ctx, runId, threadId).Execute()

A person removes a thread from the board.

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
	runId := "runId_example" // string | 
	threadId := "threadId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsRemoveThread(context.Background(), runId, threadId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsRemoveThread``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsRemoveThread`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsRemoveThread`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 
**threadId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsRemoveThreadRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsRunEvents

> string TeamsRunEvents(ctx, runId).After(after).Execute()

Tail a run — the record first, replay from `after`, then live.

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
	runId := "runId_example" // string | 
	after := int32(56) // int32 | Replay events with seq greater than this; absent means from the start. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsRunEvents(context.Background(), runId).After(after).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsRunEvents``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsRunEvents`: string
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsRunEvents`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsRunEventsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **after** | **int32** | Replay events with seq greater than this; absent means from the start. | 

### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TeamsStopRun

> InlineObject TeamsStopRun(ctx, runId).Execute()

Ask the running client to stop.

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
	runId := "runId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TeamsAPI.TeamsStopRun(context.Background(), runId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TeamsAPI.TeamsStopRun``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TeamsStopRun`: InlineObject
	fmt.Fprintf(os.Stdout, "Response from `TeamsAPI.TeamsStopRun`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**runId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTeamsStopRunRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

