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

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
