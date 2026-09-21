

# DecideRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**state** | **String** | The text judged. |  |
|**questions** | [**Map&lt;String, DecideQuestion&gt;**](DecideQuestion.md) | Keyed by identifier ([A-Za-z_][A-Za-z0-9_]*). |  |
|**model** | **String** | The model this provider serves; 404 otherwise. |  [optional] |
|**budgetMs** | **BigDecimal** |  |  [optional] |



