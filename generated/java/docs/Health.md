

# Health


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ok** | **Boolean** |  |  |
|**version** | **String** | The gateway&#39;s semver; every version gate reads this. |  |
|**backend** | **String** |  |  [optional] |
|**tier** | [**TierEnum**](#TierEnum) | Redaction tier. |  [optional] |
|**pairing** | **Boolean** | Present from 0.9.0 — this gateway can pair a client. |  [optional] |
|**managed** | **Map&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
|**managedBy** | **String** |  |  [optional] |
|**bridge** | **Map&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
|**stt** | **Map&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
|**tts** | **Map&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |



## Enum: TierEnum

| Name | Value |
|---- | -----|
| BASIC | &quot;basic&quot; |
| FULL | &quot;full&quot; |



