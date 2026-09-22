# Model

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**object** | **String** |  | 
**ownedBy** | **String** |  | [optional] 
**provider** | **String** |  | [optional] 
**providerType** | **String** | 0.6.64+ | [optional] 
**api** | **String** |  | [optional] 
**endpoints** | **[String]** |  | [optional] 
**available** | **Bool** | 0.6.64+ for bridge agents — whether the CLI is installed. | [optional] 
**configured** | **Bool** | 0.6.66+ — false when a turn is known to fail for something the user can fix. | [optional] 
**reason** | **String** |  | [optional] 
**tools** | **Bool** | False when the agent cannot take per-turn tools. | [optional] 
**reach** | **String** | 0.40.0+ — where the model runs, which is what a privacy ceiling reads: &#x60;device&#x60; on this machine, &#x60;trusted&#x60; on the private network, &#x60;any&#x60; a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is &#x60;any&#x60;; OpenCode over Ollama is &#x60;device&#x60;), never where the CLI process runs. Every row is served on the gateway&#39;s loopback address, so the address says nothing — read this field. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


