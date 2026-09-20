# ChatPanel.Sdk.Model.ReadRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **string** | Absolute http(s) URL of a public page. | 
**Format** | **string** |  | [optional] [default to FormatEnum.Markdown]
**MaxChars** | **int** | Cut at a section boundary near this length; &#x60;truncated&#x60; says so. | [optional] 
**Snippet** | **string** | A search snippet to stand in for the content when the page cannot be read. | [optional] 
**Provider** | **string** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;read&#x60;; 404 otherwise. | [optional] 
**BudgetMs** | **decimal** | Refused before fetching if the provider&#39;s record predicts it cannot be met. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

