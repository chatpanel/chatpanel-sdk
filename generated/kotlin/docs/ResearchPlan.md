
# ResearchPlan

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **intent** | [**inline**](#Intent) |  |  [optional] |
| **kind** | **kotlin.String** | meeting, note, chat — or empty for every kind. |  [optional] |
| **names** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  [optional] |
| **terms** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  [optional] |
| **sort** | [**inline**](#Sort) |  |  [optional] |
| **limit** | **kotlin.Int** |  |  [optional] |
| **since** | **kotlin.Long** |  |  [optional] |
| **after** | **kotlin.Long** |  |  [optional] |
| **before** | **kotlin.Long** |  |  [optional] |
| **group** | **kotlin.String** | person, month, week, day — or empty. |  [optional] |
| **readFull** | **kotlin.Boolean** |  |  [optional] |
| **followUp** | **kotlin.Boolean** |  |  [optional] |
| **target** | **kotlin.String** |  |  [optional] |


<a id="Intent"></a>
## Enum: intent
| Name | Value |
| ---- | ----- |
| intent | find, latest, earliest, count, group, people, list, detail |


<a id="Sort"></a>
## Enum: sort
| Name | Value |
| ---- | ----- |
| sort | relevance, newest, oldest |



