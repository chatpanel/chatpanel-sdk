
# ExtractResponse

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **hash** | **kotlin.String** | SHA-256 of the bytes — the document&#39;s identity for page calls. |  |
| **type** | **kotlin.String** | What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html. |  |
| **pages** | **kotlin.Int** |  |  |
| **provider** | **kotlin.String** | &#x60;chatpanel-extract&#x60;. |  |
| **ms** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  |
| **title** | **kotlin.String** | The document&#39;s own title, when it declares one; else empty. |  [optional] |
| **scanned** | **kotlin.Boolean** | A PDF with no text layer: its pages are empty and need OCR, which this does not do. |  [optional] |
| **page** | **kotlin.Int** | Present on a page call. |  [optional] |
| **text** | **kotlin.String** | The page&#39;s text, on a page call. May be empty. |  [optional] |



