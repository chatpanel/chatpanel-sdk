
# Model

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** |  |  |
| **&#x60;object&#x60;** | [**inline**](#&#x60;Object&#x60;) |  |  |
| **ownedBy** | **kotlin.String** |  |  [optional] |
| **provider** | **kotlin.String** |  |  [optional] |
| **providerType** | [**inline**](#ProviderType) | 0.6.64+ |  [optional] |
| **api** | **kotlin.String** |  |  [optional] |
| **endpoints** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  [optional] |
| **available** | **kotlin.Boolean** | 0.6.64+ for bridge agents — whether the CLI is installed. |  [optional] |
| **configured** | **kotlin.Boolean** | 0.6.66+ — false when a turn is known to fail for something the user can fix. |  [optional] |
| **reason** | **kotlin.String** |  |  [optional] |
| **tools** | **kotlin.Boolean** | False when the agent cannot take per-turn tools. |  [optional] |


<a id="`Object`"></a>
## Enum: object
| Name | Value |
| ---- | ----- |
| &#x60;object&#x60; | model |


<a id="ProviderType"></a>
## Enum: provider_type
| Name | Value |
| ---- | ----- |
| providerType | agent, openai, anthropic |



