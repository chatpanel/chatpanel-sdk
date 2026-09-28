

# PutRecordsResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ok** | **Boolean** |  |  |
|**written** | **Integer** |  |  |
|**ids** | **List&lt;String&gt;** |  |  [optional] |
|**sealed** | **Integer** |  |  [optional] |
|**size** | **Integer** |  |  [optional] |
|**revs** | **Map&lt;String, Long&gt;** | Each written record&#39;s new revision (gateway 0.63.0+). |  [optional] |
|**conflicts** | **List&lt;Map&lt;String, Object&gt;&gt;** | The current record for each one sent with a &#x60;baseRev&#x60; that is no longer current — merge and send again. |  [optional] |
|**merged** | **List&lt;Map&lt;String, Object&gt;&gt;** | Gateway 0.64.0+, with &#x60;merge: true&#x60;: each note merged from an outdated copy, as stored (with its new &#x60;rev&#x60;) — replace yours with it. |  [optional] |
|**rev** | **Long** | The newest revision after this write. |  [optional] |



