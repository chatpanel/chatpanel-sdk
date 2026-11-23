# \SkillsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SkillsFile**](SkillsAPI.md#SkillsFile) | **Get** /skills/{skillId}/file/{path} | One reference file a packaged skill ships — what a model opens when the skill&#39;s prompt points at it.
[**SkillsGet**](SkillsAPI.md#SkillsGet) | **Get** /skills/{skillId} | One skill, with its prompt.
[**SkillsList**](SkillsAPI.md#SkillsList) | **Get** /skills | The skills on this machine — with a prompt character count, not the prompt.
[**SkillsQuarantined**](SkillsAPI.md#SkillsQuarantined) | **Get** /skills-quarantined | Packages the admission scanner refused — what is on disk and deliberately not listed.



## SkillsFile

> SkillsFile200Response SkillsFile(ctx, skillId, path).Workdir(workdir).Execute()

One reference file a packaged skill ships — what a model opens when the skill's prompt points at it.

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
	skillId := "skillId_example" // string | One path segment; slashes and `..` are refused.
	path := "path_example" // string | A file inside the skill's package, relative to it (`SKILL.md`, `reference/forms.md`). Its own slashes stay; each segment is URL-encoded. `..` is refused, and the bridge refuses anything outside the package.
	workdir := "workdir_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SkillsAPI.SkillsFile(context.Background(), skillId, path).Workdir(workdir).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SkillsAPI.SkillsFile``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SkillsFile`: SkillsFile200Response
	fmt.Fprintf(os.Stdout, "Response from `SkillsAPI.SkillsFile`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**skillId** | **string** | One path segment; slashes and &#x60;..&#x60; are refused. | 
**path** | **string** | A file inside the skill&#39;s package, relative to it (&#x60;SKILL.md&#x60;, &#x60;reference/forms.md&#x60;). Its own slashes stay; each segment is URL-encoded. &#x60;..&#x60; is refused, and the bridge refuses anything outside the package. | 

### Other Parameters

Other parameters are passed through a pointer to a apiSkillsFileRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **workdir** | **string** |  | 

### Return type

[**SkillsFile200Response**](SkillsFile200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SkillsGet

> SkillsGet200Response SkillsGet(ctx, skillId).Workdir(workdir).Execute()

One skill, with its prompt.

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
	skillId := "skillId_example" // string | One path segment; slashes and `..` are refused.
	workdir := "workdir_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SkillsAPI.SkillsGet(context.Background(), skillId).Workdir(workdir).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SkillsAPI.SkillsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SkillsGet`: SkillsGet200Response
	fmt.Fprintf(os.Stdout, "Response from `SkillsAPI.SkillsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**skillId** | **string** | One path segment; slashes and &#x60;..&#x60; are refused. | 

### Other Parameters

Other parameters are passed through a pointer to a apiSkillsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **workdir** | **string** |  | 

### Return type

[**SkillsGet200Response**](SkillsGet200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SkillsList

> SkillsList200Response SkillsList(ctx).Workdir(workdir).Execute()

The skills on this machine — with a prompt character count, not the prompt.

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
	workdir := "workdir_example" // string | Include the project-local skill roots of this directory (0.9.4+). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SkillsAPI.SkillsList(context.Background()).Workdir(workdir).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SkillsAPI.SkillsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SkillsList`: SkillsList200Response
	fmt.Fprintf(os.Stdout, "Response from `SkillsAPI.SkillsList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSkillsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workdir** | **string** | Include the project-local skill roots of this directory (0.9.4+). | 

### Return type

[**SkillsList200Response**](SkillsList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SkillsQuarantined

> SkillsQuarantined200Response SkillsQuarantined(ctx).Workdir(workdir).Execute()

Packages the admission scanner refused — what is on disk and deliberately not listed.



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
	workdir := "workdir_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SkillsAPI.SkillsQuarantined(context.Background()).Workdir(workdir).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SkillsAPI.SkillsQuarantined``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SkillsQuarantined`: SkillsQuarantined200Response
	fmt.Fprintf(os.Stdout, "Response from `SkillsAPI.SkillsQuarantined`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSkillsQuarantinedRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workdir** | **string** |  | 

### Return type

[**SkillsQuarantined200Response**](SkillsQuarantined200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

