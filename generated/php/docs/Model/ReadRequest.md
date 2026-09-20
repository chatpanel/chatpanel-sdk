# ReadRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **string** | Absolute http(s) URL of a public page. |
**format** | **string** |  | [optional] [default to 'markdown']
**max_chars** | **int** | Cut at a section boundary near this length; &#x60;truncated&#x60; says so. | [optional]
**snippet** | **string** | A search snippet to stand in for the content when the page cannot be read. | [optional]
**provider** | **string** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;read&#x60;; 404 otherwise. | [optional]
**budget_ms** | **float** | Refused before fetching if the provider&#39;s record predicts it cannot be met. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
