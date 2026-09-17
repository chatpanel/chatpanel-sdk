# ChatPanel::Health

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **version** | **String** | The gateway&#39;s semver; every version gate reads this. |  |
| **backend** | **String** |  | [optional] |
| **tier** | **String** | Redaction tier. | [optional] |
| **pairing** | **Boolean** | Present from 0.9.0 — this gateway can pair a client. | [optional] |
| **managed** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |
| **managed_by** | **String** |  | [optional] |
| **bridge** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |
| **stt** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |
| **tts** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::Health.new(
  ok: null,
  version: null,
  backend: null,
  tier: null,
  pairing: null,
  managed: null,
  managed_by: null,
  bridge: null,
  stt: null,
  tts: null
)
```

