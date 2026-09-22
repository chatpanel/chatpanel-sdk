# Model

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**object** | **Object** |  (enum: model) | 
**owned_by** | Option<**String**> |  | [optional]
**provider** | Option<**String**> |  | [optional]
**provider_type** | Option<**ProviderType**> | 0.6.64+ (enum: agent, openai, anthropic) | [optional]
**api** | Option<**String**> |  | [optional]
**endpoints** | Option<**Vec<String>**> |  | [optional]
**available** | Option<**bool**> | 0.6.64+ for bridge agents — whether the CLI is installed. | [optional]
**configured** | Option<**bool**> | 0.6.66+ — false when a turn is known to fail for something the user can fix. | [optional]
**reason** | Option<**String**> |  | [optional]
**tools** | Option<**bool**> | False when the agent cannot take per-turn tools. | [optional]
**reach** | Option<**Reach**> | 0.40.0+ — where the model runs, which is what a privacy ceiling reads: `device` on this machine, `trusted` on the private network, `any` a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is `any`; OpenCode over Ollama is `device`), never where the CLI process runs. Every row is served on the gateway's loopback address, so the address says nothing — read this field. (enum: device, trusted, any) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


