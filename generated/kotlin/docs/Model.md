
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
| **reach** | [**inline**](#Reach) | 0.40.0+ — where the model runs, which is what a privacy ceiling reads: &#x60;device&#x60; on this machine, &#x60;trusted&#x60; on the private network, &#x60;any&#x60; a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is &#x60;any&#x60;; OpenCode over Ollama is &#x60;device&#x60;), never where the CLI process runs. Every row is served on the gateway&#39;s loopback address, so the address says nothing — read this field. |  [optional] |


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


<a id="Reach"></a>
## Enum: reach
| Name | Value |
| ---- | ----- |
| reach | device, trusted, any |



