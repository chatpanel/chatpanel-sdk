# ExtractResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **string** | SHA-256 of the bytes — the document&#39;s identity for page calls. |
**type** | **string** | What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html. |
**pages** | **int** |  |
**title** | **string** | The document&#39;s own title, when it declares one; else empty. | [optional]
**scanned** | **bool** | A PDF with no text layer: its pages are empty and need OCR, which this does not do. | [optional]
**page** | **int** | Present on a page call. | [optional]
**text** | **string** | The page&#39;s text, on a page call. May be empty. | [optional]
**provider** | **string** | &#x60;chatpanel-extract&#x60;. |
**ms** | **float** |  |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
