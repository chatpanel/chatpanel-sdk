

# ResearchPlan

How the question was framed — the typed plan the store was queried with.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**intent** | [**IntentEnum**](#IntentEnum) |  |  [optional] |
|**kind** | **String** | meeting, note, chat — or empty for every kind. |  [optional] |
|**names** | **List&lt;String&gt;** |  |  [optional] |
|**terms** | **List&lt;String&gt;** |  |  [optional] |
|**sort** | [**SortEnum**](#SortEnum) |  |  [optional] |
|**limit** | **Integer** |  |  [optional] |
|**since** | **Long** |  |  [optional] |
|**after** | **Long** |  |  [optional] |
|**before** | **Long** |  |  [optional] |
|**group** | **String** | person, month, week, day — or empty. |  [optional] |
|**readFull** | **Boolean** |  |  [optional] |
|**followUp** | **Boolean** |  |  [optional] |
|**target** | **String** |  |  [optional] |



## Enum: IntentEnum

| Name | Value |
|---- | -----|
| FIND | &quot;find&quot; |
| LATEST | &quot;latest&quot; |
| EARLIEST | &quot;earliest&quot; |
| COUNT | &quot;count&quot; |
| GROUP | &quot;group&quot; |
| PEOPLE | &quot;people&quot; |
| LIST | &quot;list&quot; |
| DETAIL | &quot;detail&quot; |



## Enum: SortEnum

| Name | Value |
|---- | -----|
| RELEVANCE | &quot;relevance&quot; |
| NEWEST | &quot;newest&quot; |
| OLDEST | &quot;oldest&quot; |



