# ChatPanel.Sdk.Model.Model

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Object** | **string** |  | 
**OwnedBy** | **string** |  | [optional] 
**Provider** | **string** |  | [optional] 
**ProviderType** | **string** | 0.6.64+ | [optional] 
**Api** | **string** |  | [optional] 
**Endpoints** | **List&lt;string&gt;** |  | [optional] 
**Available** | **bool** | 0.6.64+ for bridge agents — whether the CLI is installed. | [optional] 
**Configured** | **bool** | 0.6.66+ — false when a turn is known to fail for something the user can fix. | [optional] 
**Reason** | **string** |  | [optional] 
**Tools** | **bool** | False when the agent cannot take per-turn tools. | [optional] 
**Reach** | **string** | 0.40.0+ — where the model runs, which is what a privacy ceiling reads: &#x60;device&#x60; on this machine, &#x60;trusted&#x60; on the private network, &#x60;any&#x60; a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is &#x60;any&#x60;; OpenCode over Ollama is &#x60;device&#x60;), never where the CLI process runs. Every row is served on the gateway&#39;s loopback address, so the address says nothing — read this field. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

