# ChatPanel::Model

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **owned_by** | **String** |  | [optional] |
| **provider** | **String** |  | [optional] |
| **provider_type** | **String** | 0.6.64+ | [optional] |
| **api** | **String** |  | [optional] |
| **endpoints** | **Array&lt;String&gt;** |  | [optional] |
| **available** | **Boolean** | 0.6.64+ for bridge agents — whether the CLI is installed. | [optional] |
| **configured** | **Boolean** | 0.6.66+ — false when a turn is known to fail for something the user can fix. | [optional] |
| **reason** | **String** |  | [optional] |
| **tools** | **Boolean** | False when the agent cannot take per-turn tools. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::Model.new(
  id: null,
  object: null,
  owned_by: null,
  provider: null,
  provider_type: null,
  api: null,
  endpoints: null,
  available: null,
  configured: null,
  reason: null,
  tools: null
)
```

