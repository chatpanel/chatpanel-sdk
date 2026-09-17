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

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


