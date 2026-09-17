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

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


