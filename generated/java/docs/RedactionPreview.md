

# RedactionPreview


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**text** | **String** | What the model would receive. |  |
|**count** | **Integer** |  |  |
|**sanitized** | **Integer** |  |  [optional] |
|**tier** | [**TierEnum**](#TierEnum) |  |  [optional] |
|**entities** | **List&lt;Map&lt;String, Object&gt;&gt;** | Placeholder tokens and their types — never the real values. |  [optional] |
|**detector** | **Map&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |



## Enum: TierEnum

| Name | Value |
|---- | -----|
| BASIC | &quot;basic&quot; |
| FULL | &quot;full&quot; |



