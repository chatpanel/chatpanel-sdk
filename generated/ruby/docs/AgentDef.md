# ChatPanel::AgentDef

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **purpose** | **String** |  | [optional] |
| **dialect** | **String** |  | [optional] |
| **source** | **String** | The folder it was read from: chatpanel, claude, codex, agents-dir, external. | [optional] |
| **label** | **String** |  | [optional] |
| **path** | **String** | Relative to the root it was found in. | [optional] |
| **writable** | **Boolean** |  | [optional] |
| **engine** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **grants** | **Array&lt;String&gt;** |  | [optional] |
| **skills** | **Array&lt;String&gt;** |  | [optional] |
| **prompt_chars** | **Integer** |  | [optional] |
| **prompt** | **String** | Only on &#x60;GET /agent-defs/{agentId}&#x60;. | [optional] |
| **warnings** | **Array&lt;String&gt;** | What the dialect could not map — an unmapped tool is reported, never widened into a grant. | [optional] |
| **scanned** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::AgentDef.new(
  id: null,
  name: null,
  purpose: null,
  dialect: null,
  source: null,
  label: null,
  path: null,
  writable: null,
  engine: null,
  grants: null,
  skills: null,
  prompt_chars: null,
  prompt: null,
  warnings: null,
  scanned: null
)
```

