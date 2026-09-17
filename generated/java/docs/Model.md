

# Model


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  |
|**_object** | [**ObjectEnum**](#ObjectEnum) |  |  |
|**ownedBy** | **String** |  |  [optional] |
|**provider** | **String** |  |  [optional] |
|**providerType** | [**ProviderTypeEnum**](#ProviderTypeEnum) | 0.6.64+ |  [optional] |
|**api** | **String** |  |  [optional] |
|**endpoints** | **List&lt;String&gt;** |  |  [optional] |
|**available** | **Boolean** | 0.6.64+ for bridge agents — whether the CLI is installed. |  [optional] |
|**configured** | **Boolean** | 0.6.66+ — false when a turn is known to fail for something the user can fix. |  [optional] |
|**reason** | **String** |  |  [optional] |
|**tools** | **Boolean** | False when the agent cannot take per-turn tools. |  [optional] |



## Enum: ObjectEnum

| Name | Value |
|---- | -----|
| MODEL | &quot;model&quot; |



## Enum: ProviderTypeEnum

| Name | Value |
|---- | -----|
| AGENT | &quot;agent&quot; |
| OPENAI | &quot;openai&quot; |
| ANTHROPIC | &quot;anthropic&quot; |



