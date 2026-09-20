# ExtractResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | SHA-256 of the bytes — the document&#39;s identity for page calls. | 
**type** | **String** | What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html. | 
**pages** | **Int** |  | 
**title** | **String** | The document&#39;s own title, when it declares one; else empty. | [optional] 
**scanned** | **Bool** | A PDF with no text layer: its pages are empty and need OCR, which this does not do. | [optional] 
**page** | **Int** | Present on a page call. | [optional] 
**text** | **String** | The page&#39;s text, on a page call. May be empty. | [optional] 
**provider** | **String** | &#x60;chatpanel-extract&#x60;. | 
**ms** | **Double** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


