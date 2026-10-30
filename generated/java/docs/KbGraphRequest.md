

# KbGraphRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**node** | **String** | An entity, section or topic by name (or a node id). |  |
|**to** | **String** | A second node: the path from &#x60;node&#x60; to it. |  [optional] |
|**hops** | **Integer** |  |  [optional] |
|**kinds** | [**List&lt;KindsEnum&gt;**](#List&lt;KindsEnum&gt;) |  |  [optional] |
|**limit** | **Integer** |  |  [optional] |



## Enum: List&lt;KindsEnum&gt;

| Name | Value |
|---- | -----|
| DOC | &quot;doc&quot; |
| SECTION | &quot;section&quot; |
| ENTITY | &quot;entity&quot; |
| TOPIC | &quot;topic&quot; |
| NOTE | &quot;note&quot; |
| CHUNK | &quot;chunk&quot; |



