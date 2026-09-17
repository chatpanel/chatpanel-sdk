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

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

