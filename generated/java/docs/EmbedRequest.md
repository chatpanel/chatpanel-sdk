

# EmbedRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**input** | [**EmbedRequestInput**](EmbedRequestInput.md) |  |  |
|**model** | **String** | The model &#x60;GET /v1/capabilities&#x60; lists for &#x60;embed&#x60;; 404 otherwise. |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | What the texts are — a model with instruction prefixes (E5) prefixes each accordingly. |  [optional] |
|**budgetMs** | **BigDecimal** |  |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| QUERY | &quot;query&quot; |
| PASSAGE | &quot;passage&quot; |



