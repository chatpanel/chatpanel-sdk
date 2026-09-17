
# Health

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **ok** | **kotlin.Boolean** |  |  |
| **version** | **kotlin.String** | The gateway&#39;s semver; every version gate reads this. |  |
| **backend** | **kotlin.String** |  |  [optional] |
| **tier** | [**inline**](#Tier) | Redaction tier. |  [optional] |
| **pairing** | **kotlin.Boolean** | Present from 0.9.0 — this gateway can pair a client. |  [optional] |
| **managed** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
| **managedBy** | **kotlin.String** |  |  [optional] |
| **bridge** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
| **stt** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
| **tts** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |


<a id="Tier"></a>
## Enum: tier
| Name | Value |
| ---- | ----- |
| tier | basic, full |



