
# RuntimeActionResult

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **ok** | **kotlin.Boolean** |  |  |
| **error** | **kotlin.String** |  |  [optional] |
| **already** | **kotlin.Boolean** |  |  [optional] |
| **url** | **kotlin.String** |  |  [optional] |
| **answering** | **kotlin.Boolean** |  |  [optional] |
| **install** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
| **provides** | **kotlin.collections.List&lt;kotlin.String&gt;** | The capabilities the service now stands behind (gateway 0.20+). |  [optional] |
| **model** | **kotlin.String** | The model the container runs, on a start or a model pick (gateway 0.22+). |  [optional] |
| **restarted** | **kotlin.Boolean** | A model pick re-created a running container. |  [optional] |
| **note** | **kotlin.String** | A model pick that fits but is tight for the engine&#39;s memory. |  [optional] |



