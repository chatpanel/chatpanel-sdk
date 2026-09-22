# Model

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  |
**object** | **string** |  |
**owned_by** | **string** |  | [optional]
**provider** | **string** |  | [optional]
**provider_type** | **string** | 0.6.64+ | [optional]
**api** | **string** |  | [optional]
**endpoints** | **string[]** |  | [optional]
**available** | **bool** | 0.6.64+ for bridge agents — whether the CLI is installed. | [optional]
**configured** | **bool** | 0.6.66+ — false when a turn is known to fail for something the user can fix. | [optional]
**reason** | **string** |  | [optional]
**tools** | **bool** | False when the agent cannot take per-turn tools. | [optional]
**reach** | **string** | 0.40.0+ — where the model runs, which is what a privacy ceiling reads: &#x60;device&#x60; on this machine, &#x60;trusted&#x60; on the private network, &#x60;any&#x60; a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is &#x60;any&#x60;; OpenCode over Ollama is &#x60;device&#x60;), never where the CLI process runs. Every row is served on the gateway&#39;s loopback address, so the address says nothing — read this field. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
