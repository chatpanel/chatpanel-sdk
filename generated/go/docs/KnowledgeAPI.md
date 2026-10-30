# \KnowledgeAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**KnowledgeAccess**](KnowledgeAPI.md#KnowledgeAccess) | **Get** /v1/kb/{id}/access | Who may use a base — every agent, or the ones named.
[**KnowledgeAdd**](KnowledgeAPI.md#KnowledgeAdd) | **Post** /v1/kb/{id}/documents | Add a document — bytes, a path on this machine, a URL, or text — and index it.
[**KnowledgeCreate**](KnowledgeAPI.md#KnowledgeCreate) | **Post** /v1/kb | Create a knowledge base (or return the one with that id).
[**KnowledgeDelete**](KnowledgeAPI.md#KnowledgeDelete) | **Delete** /v1/kb/{id} | Delete a base and its folder.
[**KnowledgeDocuments**](KnowledgeAPI.md#KnowledgeDocuments) | **Get** /v1/kb/{id}/documents | The documents in a base.
[**KnowledgeEmbed**](KnowledgeAPI.md#KnowledgeEmbed) | **Post** /v1/kb/{id}/embed | Embed every passage that has no vector yet, and say where the embedder stands.
[**KnowledgeGraph**](KnowledgeAPI.md#KnowledgeGraph) | **Post** /v1/kb/{id}/graph | What connects to a node — its neighbours up to &#x60;hops&#x60; away — or the path between two.
[**KnowledgeList**](KnowledgeAPI.md#KnowledgeList) | **Get** /v1/kb | The knowledge bases on this machine.
[**KnowledgeNote**](KnowledgeAPI.md#KnowledgeNote) | **Post** /v1/kb/{id}/notes | File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.
[**KnowledgeNoteStatus**](KnowledgeAPI.md#KnowledgeNoteStatus) | **Post** /v1/kb/{id}/notes/{note} | Accept a proposed note, withdraw it to proposed, or remove it.
[**KnowledgeNotes**](KnowledgeAPI.md#KnowledgeNotes) | **Get** /v1/kb/{id}/notes | The notes filed into a base.
[**KnowledgeOutline**](KnowledgeAPI.md#KnowledgeOutline) | **Get** /v1/kb/{id}/outline | The table of contents a document&#39;s headings imply — every section once, with where it starts.
[**KnowledgePage**](KnowledgeAPI.md#KnowledgePage) | **Get** /v1/kb/{id}/documents/{doc} | One page of a document, from the index.
[**KnowledgePassage**](KnowledgeAPI.md#KnowledgePassage) | **Get** /v1/kb/{id}/passages/{passage} | One passage by id, with its citation.
[**KnowledgeRemoveDocument**](KnowledgeAPI.md#KnowledgeRemoveDocument) | **Delete** /v1/kb/{id}/documents/{doc} | Remove a document, its passages and vectors (notes keep their text and lose the cite).
[**KnowledgeReport**](KnowledgeAPI.md#KnowledgeReport) | **Get** /v1/kb/{id}/report | The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.
[**KnowledgeResearch**](KnowledgeAPI.md#KnowledgeResearch) | **Post** /v1/kb/{id}/research | The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.
[**KnowledgeSearch**](KnowledgeAPI.md#KnowledgeSearch) | **Post** /v1/kb/{id}/search | The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.
[**KnowledgeSetAccess**](KnowledgeAPI.md#KnowledgeSetAccess) | **Post** /v1/kb/{id}/access | Grant a base to every agent or to the ones named — the owner&#39;s act.
[**KnowledgeStatus**](KnowledgeAPI.md#KnowledgeStatus) | **Get** /v1/kb/{id} | What a base holds — its documents, passages, notes, vectors, entities and connections.



## KnowledgeAccess

> KbAccessResponse KnowledgeAccess(ctx, id).Execute()

Who may use a base — every agent, or the ones named.

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
	id := "id_example" // string | The base id.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeAccess(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeAccess``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeAccess`: KbAccessResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeAccess`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeAccessRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeAdd

> KbAddResponse KnowledgeAdd(ctx, id).KbAddRequest(kbAddRequest).Execute()

Add a document — bytes, a path on this machine, a URL, or text — and index it.



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
	id := "id_example" // string | The base id.
	kbAddRequest := *openapiclient.NewKbAddRequest() // KbAddRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeAdd(context.Background(), id).KbAddRequest(kbAddRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeAdd``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeAdd`: KbAddResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeAdd`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeAddRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **kbAddRequest** | [**KbAddRequest**](KbAddRequest.md) |  | 

### Return type

[**KbAddResponse**](KbAddResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeCreate

> KbStatusResponse KnowledgeCreate(ctx).KbCreateRequest(kbCreateRequest).Execute()

Create a knowledge base (or return the one with that id).



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
	kbCreateRequest := *openapiclient.NewKbCreateRequest() // KbCreateRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeCreate(context.Background()).KbCreateRequest(kbCreateRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeCreate`: KbStatusResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kbCreateRequest** | [**KbCreateRequest**](KbCreateRequest.md) |  | 

### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeDelete

> KbOkResponse KnowledgeDelete(ctx, id).Execute()

Delete a base and its folder.

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
	id := "id_example" // string | The base id.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeDelete`: KbOkResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**KbOkResponse**](KbOkResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeDocuments

> KbDocuments KnowledgeDocuments(ctx, id).Execute()

The documents in a base.

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
	id := "id_example" // string | The base id.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeDocuments(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeDocuments``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeDocuments`: KbDocuments
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeDocuments`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeDocumentsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**KbDocuments**](KbDocuments.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeEmbed

> KbEmbedResponse KnowledgeEmbed(ctx, id).Body(body).Execute()

Embed every passage that has no vector yet, and say where the embedder stands.

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
	id := "id_example" // string | The base id.
	body := map[string]interface{}{ ... } // map[string]interface{} |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeEmbed(context.Background(), id).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeEmbed``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeEmbed`: KbEmbedResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeEmbed`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeEmbedRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **body** | **map[string]interface{}** |  | 

### Return type

[**KbEmbedResponse**](KbEmbedResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeGraph

> KbGraphResponse KnowledgeGraph(ctx, id).KbGraphRequest(kbGraphRequest).Execute()

What connects to a node — its neighbours up to `hops` away — or the path between two.

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
	id := "id_example" // string | The base id.
	kbGraphRequest := *openapiclient.NewKbGraphRequest("Node_example") // KbGraphRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeGraph(context.Background(), id).KbGraphRequest(kbGraphRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeGraph``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeGraph`: KbGraphResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeGraph`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeGraphRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **kbGraphRequest** | [**KbGraphRequest**](KbGraphRequest.md) |  | 

### Return type

[**KbGraphResponse**](KbGraphResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeList

> KbList KnowledgeList(ctx).Execute()

The knowledge bases on this machine.



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
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeList(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeList`: KbList
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeList`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeListRequest struct via the builder pattern


### Return type

[**KbList**](KbList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeNote

> KbNoteResponse KnowledgeNote(ctx, id).KbNoteRequest(kbNoteRequest).Execute()

File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.



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
	id := "id_example" // string | The base id.
	kbNoteRequest := *openapiclient.NewKbNoteRequest("Text_example") // KbNoteRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeNote(context.Background(), id).KbNoteRequest(kbNoteRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeNote``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeNote`: KbNoteResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeNote`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeNoteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **kbNoteRequest** | [**KbNoteRequest**](KbNoteRequest.md) |  | 

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeNoteStatus

> KbNoteResponse KnowledgeNoteStatus(ctx, id, note).KbNoteStatusRequest(kbNoteStatusRequest).Execute()

Accept a proposed note, withdraw it to proposed, or remove it.

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
	id := "id_example" // string | The base id.
	note := "note_example" // string | The note id.
	kbNoteStatusRequest := *openapiclient.NewKbNoteStatusRequest("Status_example") // KbNoteStatusRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeNoteStatus(context.Background(), id, note).KbNoteStatusRequest(kbNoteStatusRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeNoteStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeNoteStatus`: KbNoteResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeNoteStatus`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 
**note** | **string** | The note id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeNoteStatusRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **kbNoteStatusRequest** | [**KbNoteStatusRequest**](KbNoteStatusRequest.md) |  | 

### Return type

[**KbNoteResponse**](KbNoteResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeNotes

> KbNotes KnowledgeNotes(ctx, id).Execute()

The notes filed into a base.

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
	id := "id_example" // string | The base id.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeNotes(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeNotes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeNotes`: KbNotes
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeNotes`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeNotesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**KbNotes**](KbNotes.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeOutline

> KbOutline KnowledgeOutline(ctx, id).Doc(doc).Execute()

The table of contents a document's headings imply — every section once, with where it starts.

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
	id := "id_example" // string | The base id.
	doc := "doc_example" // string | One document; omit for all. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeOutline(context.Background(), id).Doc(doc).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeOutline``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeOutline`: KbOutline
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeOutline`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeOutlineRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **doc** | **string** | One document; omit for all. | 

### Return type

[**KbOutline**](KbOutline.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgePage

> KbPage KnowledgePage(ctx, id, doc).Page(page).Execute()

One page of a document, from the index.

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
	id := "id_example" // string | The base id.
	doc := "doc_example" // string | The document id.
	page := int32(56) // int32 | The page to read. (optional) (default to 1)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgePage(context.Background(), id, doc).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgePage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgePage`: KbPage
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgePage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 
**doc** | **string** | The document id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgePageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **page** | **int32** | The page to read. | [default to 1]

### Return type

[**KbPage**](KbPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgePassage

> KbPassage KnowledgePassage(ctx, id, passage).Execute()

One passage by id, with its citation.

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
	id := "id_example" // string | The base id.
	passage := "passage_example" // string | A passage id (`<doc>#<n>`) or a note id (`note:<id>`).

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgePassage(context.Background(), id, passage).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgePassage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgePassage`: KbPassage
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgePassage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 
**passage** | **string** | A passage id (&#x60;&lt;doc&gt;#&lt;n&gt;&#x60;) or a note id (&#x60;note:&lt;id&gt;&#x60;). | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgePassageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**KbPassage**](KbPassage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeRemoveDocument

> KbStatusResponse KnowledgeRemoveDocument(ctx, id, doc).Execute()

Remove a document, its passages and vectors (notes keep their text and lose the cite).

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
	id := "id_example" // string | The base id.
	doc := "doc_example" // string | The document id.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeRemoveDocument(context.Background(), id, doc).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeRemoveDocument``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeRemoveDocument`: KbStatusResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeRemoveDocument`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 
**doc** | **string** | The document id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeRemoveDocumentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeReport

> string KnowledgeReport(ctx, id).Execute()

The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.

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
	id := "id_example" // string | The base id.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeReport(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeReport``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeReport`: string
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeReport`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeReportRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/markdown, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeResearch

> KbResearchResponse KnowledgeResearch(ctx, id).KbResearchRequest(kbResearchRequest).Execute()

The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.



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
	id := "id_example" // string | The base id.
	kbResearchRequest := *openapiclient.NewKbResearchRequest("Question_example") // KbResearchRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeResearch(context.Background(), id).KbResearchRequest(kbResearchRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeResearch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeResearch`: KbResearchResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeResearch`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeResearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **kbResearchRequest** | [**KbResearchRequest**](KbResearchRequest.md) |  | 

### Return type

[**KbResearchResponse**](KbResearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeSearch

> KbSearchResponse KnowledgeSearch(ctx, id).KbSearchRequest(kbSearchRequest).Execute()

The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.



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
	id := "id_example" // string | The base id.
	kbSearchRequest := *openapiclient.NewKbSearchRequest("Query_example") // KbSearchRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeSearch(context.Background(), id).KbSearchRequest(kbSearchRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeSearch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeSearch`: KbSearchResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeSearch`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **kbSearchRequest** | [**KbSearchRequest**](KbSearchRequest.md) |  | 

### Return type

[**KbSearchResponse**](KbSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeSetAccess

> KbAccessResponse KnowledgeSetAccess(ctx, id).KbAccessRequest(kbAccessRequest).Execute()

Grant a base to every agent or to the ones named — the owner's act.



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
	id := "id_example" // string | The base id.
	kbAccessRequest := *openapiclient.NewKbAccessRequest(openapiclient.KbAccessRequest_agents{ArrayOfString: new([]string)}) // KbAccessRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeSetAccess(context.Background(), id).KbAccessRequest(kbAccessRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeSetAccess``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeSetAccess`: KbAccessResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeSetAccess`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeSetAccessRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **kbAccessRequest** | [**KbAccessRequest**](KbAccessRequest.md) |  | 

### Return type

[**KbAccessResponse**](KbAccessResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## KnowledgeStatus

> KbStatusResponse KnowledgeStatus(ctx, id).Execute()

What a base holds — its documents, passages, notes, vectors, entities and connections.

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
	id := "id_example" // string | The base id.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.KnowledgeStatus(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.KnowledgeStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `KnowledgeStatus`: KbStatusResponse
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.KnowledgeStatus`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The base id. | 

### Other Parameters

Other parameters are passed through a pointer to a apiKnowledgeStatusRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

