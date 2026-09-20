# ChatPanel.Sdk.Model.ExtractResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hash** | **string** | SHA-256 of the bytes — the document&#39;s identity for page calls. | 
**Type** | **string** | What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html. | 
**Pages** | **int** |  | 
**Provider** | **string** | &#x60;chatpanel-extract&#x60;. | 
**Ms** | **decimal** |  | 
**Title** | **string** | The document&#39;s own title, when it declares one; else empty. | [optional] 
**Scanned** | **bool** | A PDF with no text layer: its pages are empty and need OCR, which this does not do. | [optional] 
**Page** | **int** | Present on a page call. | [optional] 
**Text** | **string** | The page&#39;s text, on a page call. May be empty. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

