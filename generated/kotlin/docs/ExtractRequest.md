
# ExtractRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **name** | **kotlin.String** | The file name — its extension helps tell office formats apart. |  [optional] |
| **type** | **kotlin.String** | The client&#39;s guess at the type (e.g. &#x60;pdf&#x60;, &#x60;docx&#x60;); the bytes decide. |  [optional] |
| **&#x60;data&#x60;** | **kotlin.ByteArray** | The whole file, base64. At most 64 MB decoded. |  [optional] |
| **hash** | **kotlin.String** | The &#x60;hash&#x60; an open call returned. |  [optional] |
| **page** | **kotlin.Int** | The page to read, 1-based. |  [optional] |
| **budgetMs** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Refused before parsing if the worker&#39;s record predicts it cannot be met. |  [optional] |



