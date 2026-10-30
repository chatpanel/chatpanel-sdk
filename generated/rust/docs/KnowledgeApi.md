# \KnowledgeApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**knowledge_access**](KnowledgeApi.md#knowledge_access) | **GET** /v1/kb/{id}/access | Who may use a base — every agent, or the ones named.
[**knowledge_add**](KnowledgeApi.md#knowledge_add) | **POST** /v1/kb/{id}/documents | Add a document — bytes, a path on this machine, a URL, or text — and index it.
[**knowledge_create**](KnowledgeApi.md#knowledge_create) | **POST** /v1/kb | Create a knowledge base (or return the one with that id).
[**knowledge_delete**](KnowledgeApi.md#knowledge_delete) | **DELETE** /v1/kb/{id} | Delete a base and its folder.
[**knowledge_documents**](KnowledgeApi.md#knowledge_documents) | **GET** /v1/kb/{id}/documents | The documents in a base.
[**knowledge_embed**](KnowledgeApi.md#knowledge_embed) | **POST** /v1/kb/{id}/embed | Embed every passage that has no vector yet, and say where the embedder stands.
[**knowledge_graph**](KnowledgeApi.md#knowledge_graph) | **POST** /v1/kb/{id}/graph | What connects to a node — its neighbours up to `hops` away — or the path between two.
[**knowledge_list**](KnowledgeApi.md#knowledge_list) | **GET** /v1/kb | The knowledge bases on this machine.
[**knowledge_note**](KnowledgeApi.md#knowledge_note) | **POST** /v1/kb/{id}/notes | File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.
[**knowledge_note_status**](KnowledgeApi.md#knowledge_note_status) | **POST** /v1/kb/{id}/notes/{note} | Accept a proposed note, withdraw it to proposed, or remove it.
[**knowledge_notes**](KnowledgeApi.md#knowledge_notes) | **GET** /v1/kb/{id}/notes | The notes filed into a base.
[**knowledge_outline**](KnowledgeApi.md#knowledge_outline) | **GET** /v1/kb/{id}/outline | The table of contents a document's headings imply — every section once, with where it starts.
[**knowledge_page**](KnowledgeApi.md#knowledge_page) | **GET** /v1/kb/{id}/documents/{doc} | One page of a document, from the index.
[**knowledge_passage**](KnowledgeApi.md#knowledge_passage) | **GET** /v1/kb/{id}/passages/{passage} | One passage by id, with its citation.
[**knowledge_remove_document**](KnowledgeApi.md#knowledge_remove_document) | **DELETE** /v1/kb/{id}/documents/{doc} | Remove a document, its passages and vectors (notes keep their text and lose the cite).
[**knowledge_report**](KnowledgeApi.md#knowledge_report) | **GET** /v1/kb/{id}/report | The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.
[**knowledge_research**](KnowledgeApi.md#knowledge_research) | **POST** /v1/kb/{id}/research | The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.
[**knowledge_search**](KnowledgeApi.md#knowledge_search) | **POST** /v1/kb/{id}/search | The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.
[**knowledge_set_access**](KnowledgeApi.md#knowledge_set_access) | **POST** /v1/kb/{id}/access | Grant a base to every agent or to the ones named — the owner's act.
[**knowledge_status**](KnowledgeApi.md#knowledge_status) | **GET** /v1/kb/{id} | What a base holds — its documents, passages, notes, vectors, entities and connections.



## knowledge_access

> models::KbAccessResponse knowledge_access(id)
Who may use a base — every agent, or the ones named.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |

### Return type

[**models::KbAccessResponse**](KbAccessResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_add

> models::KbAddResponse knowledge_add(id, kb_add_request)
Add a document — bytes, a path on this machine, a URL, or text — and index it.

One of four sources: `name` + `data` (the file, base64, up to 64 MB — a PDF, DOCX, XLSX, PPTX, ODF, Markdown or text, parsed in the extract worker); `path` (a file or folder on this machine, walked with the same refusals the `files` tool applies — credential stores withheld and named, `node_modules` and hidden folders skipped, documents up to 64 MB; TOKEN-GATED: a path is a read on the machine, so it is 403 to a caller without the token or the extension origin); `url` (a public page through the `read` capability); `text`. The same bytes added again REPLACE the document. Passages are chunked by the document's own headings with page citations, indexed by words and in the graph, and embedded when the embedder's model is on disk (`embedded` says how many); the report is rewritten. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**kb_add_request** | [**KbAddRequest**](KbAddRequest.md) |  | [required] |

### Return type

[**models::KbAddResponse**](KbAddResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_create

> models::KbStatusResponse knowledge_create(kb_create_request)
Create a knowledge base (or return the one with that id).

A base is a folder under `~/.chatpanel/kb/<id>/` (manifest, passages, notes, vectors, a Markdown report) — a projection over the documents added to it, rebuildable from them. `embed: off` keeps it on words and the graph only. 201 when created, 200 with `existed` when the id was already there. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**kb_create_request** | [**KbCreateRequest**](KbCreateRequest.md) |  | [required] |

### Return type

[**models::KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_delete

> models::KbOkResponse knowledge_delete(id)
Delete a base and its folder.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |

### Return type

[**models::KbOkResponse**](KbOkResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_documents

> models::KbDocuments knowledge_documents(id)
The documents in a base.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |

### Return type

[**models::KbDocuments**](KbDocuments.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_embed

> models::KbEmbedResponse knowledge_embed(id, body)
Embed every passage that has no vector yet, and say where the embedder stands.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**body** | Option<**serde_json::Value**> |  |  |

### Return type

[**models::KbEmbedResponse**](KbEmbedResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_graph

> models::KbGraphResponse knowledge_graph(id, kb_graph_request)
What connects to a node — its neighbours up to `hops` away — or the path between two.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**kb_graph_request** | [**KbGraphRequest**](KbGraphRequest.md) |  | [required] |

### Return type

[**models::KbGraphResponse**](KbGraphResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_list

> models::KbList knowledge_list()
The knowledge bases on this machine.

Each base with its id, name, document count, vector count and model. Loads no passages.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::KbList**](KbList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_note

> models::KbNoteResponse knowledge_note(id, kb_note_request)
File a note — a fact, a summary, a correction — cited to passages; proposed until accepted.

How a base improves over time. A note is indexed and searched as its own lane and shown with its status; `status: accepted` is honoured only from a caller with the token (the person, or a client acting for them) — any other caller's note is filed as `proposed`. Unknown cites are dropped. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**kb_note_request** | [**KbNoteRequest**](KbNoteRequest.md) |  | [required] |

### Return type

[**models::KbNoteResponse**](KbNoteResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_note_status

> models::KbNoteResponse knowledge_note_status(id, note, kb_note_status_request)
Accept a proposed note, withdraw it to proposed, or remove it.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**note** | **String** | The note id. | [required] |
**kb_note_status_request** | [**KbNoteStatusRequest**](KbNoteStatusRequest.md) |  | [required] |

### Return type

[**models::KbNoteResponse**](KbNoteResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_notes

> models::KbNotes knowledge_notes(id)
The notes filed into a base.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |

### Return type

[**models::KbNotes**](KbNotes.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_outline

> models::KbOutline knowledge_outline(id, doc)
The table of contents a document's headings imply — every section once, with where it starts.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**doc** | Option<**String**> | One document; omit for all. |  |

### Return type

[**models::KbOutline**](KbOutline.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_page

> models::KbPage knowledge_page(id, doc, page)
One page of a document, from the index.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**doc** | **String** | The document id. | [required] |
**page** | Option<**i32**> | The page to read. |  |[default to 1]

### Return type

[**models::KbPage**](KbPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_passage

> models::KbPassage knowledge_passage(id, passage)
One passage by id, with its citation.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**passage** | **String** | A passage id (`<doc>#<n>`) or a note id (`note:<id>`). | [required] |

### Return type

[**models::KbPassage**](KbPassage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_remove_document

> models::KbStatusResponse knowledge_remove_document(id, doc)
Remove a document, its passages and vectors (notes keep their text and lose the cite).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**doc** | **String** | The document id. | [required] |

### Return type

[**models::KbStatusResponse**](KbStatusResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_report

> String knowledge_report(id)
The base written down as Markdown — documents with outlines, the entities that bind them, the communities, the notes.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/markdown, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_research

> models::KbResearchResponse knowledge_research(id, kb_research_request)
The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model.

The harness's loop (events kb-research.js), not a model's tool calls: a whole-document ask (\"what is this about\") reads the outline and the opening of each section; a focused one searches, reads the best passages grouped by document in page order, and — with `model` (TOKEN-GATED: the check runs on this gateway's own chat route) — asks that model once whether what was read answers it, then searches once more for what it says is missing. When the hits split evenly across documents and the question names none, the answer is `ask` (which document?) instead of a guess; call again with `answer` to go on, or `ask: false` to never pause. `attachment` is the block a client attaches before the question (`kind: prefetch`), `null` when nothing matched beyond the plain statement. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**kb_research_request** | [**KbResearchRequest**](KbResearchRequest.md) |  | [required] |

### Return type

[**models::KbResearchResponse**](KbResearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_search

> models::KbSearchResponse knowledge_search(id, kb_search_request)
The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation.

The words in up to four query shapes (BM25), the meaning when the base has vectors (the query embedded by the same model), the graph's one-hop expansion of the best hits (a passage sharing a name or a section with a hit, and `via` says which), and the notes as their own lane — fused by Reciprocal Rank Fusion with the graph at half weight, then the gateway's reranker fused in (never substituted). Each result carries `lanes` (which found it), `scores` (each lane's own, comparable within one query) and `cite` as the model is told to write it (`[report.pdf p.12]`). `docs` scopes to documents; `queries` adds the caller's own phrasings. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**kb_search_request** | [**KbSearchRequest**](KbSearchRequest.md) |  | [required] |

### Return type

[**models::KbSearchResponse**](KbSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_set_access

> models::KbAccessResponse knowledge_set_access(id, kb_access_request)
Grant a base to every agent or to the ones named — the owner's act.

Grants (docs/knowledge-base.md §3, \"knowledge is granted like skills\"): a caller with the token or the extension's origin is the owner and reaches every base; any other caller names itself (`X-ChatPanel-Agent: claude`, or `?agent=`) — the gateway's own MCP server sends the connected client's name — and reaches the bases whose `access.agents` is `all` (the default) or names it. `GET /v1/kb` lists only those; a base not granted reads as 404 to that caller. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |
**kb_access_request** | [**KbAccessRequest**](KbAccessRequest.md) |  | [required] |

### Return type

[**models::KbAccessResponse**](KbAccessResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## knowledge_status

> models::KbStatusResponse knowledge_status(id)
What a base holds — its documents, passages, notes, vectors, entities and connections.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | The base id. | [required] |

### Return type

[**models::KbStatusResponse**](KbStatusResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

