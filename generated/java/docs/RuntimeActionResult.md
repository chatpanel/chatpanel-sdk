

# RuntimeActionResult


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ok** | **Boolean** |  |  |
|**error** | **String** |  |  [optional] |
|**already** | **Boolean** |  |  [optional] |
|**url** | **String** |  |  [optional] |
|**answering** | **Boolean** |  |  [optional] |
|**install** | **Map&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
|**provides** | **List&lt;String&gt;** | The capabilities the service now stands behind (gateway 0.20+). |  [optional] |
|**model** | **String** | The model the container runs, on a start or a model pick (gateway 0.22+). |  [optional] |
|**restarted** | **Boolean** | A model pick re-created a running container. |  [optional] |
|**note** | **String** | A model pick that fits but is tight for the engine&#39;s memory. |  [optional] |



