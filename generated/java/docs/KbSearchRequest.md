

# KbSearchRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**query** | **String** |  |  |
|**limit** | **Integer** |  |  [optional] |
|**hops** | **Integer** | Graph expansion of the best hits; 0 &#x3D; off. |  [optional] |
|**docs** | **List&lt;String&gt;** | Only these documents. |  [optional] |
|**queries** | **List&lt;String&gt;** | The caller&#39;s own phrasings, searched too. |  [optional] |
|**rerank** | **Boolean** | &#x60;false&#x60;: skip the reranker. |  [optional] |
|**budgetMs** | **BigDecimal** |  |  [optional] |



