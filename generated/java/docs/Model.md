

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
|**reach** | [**ReachEnum**](#ReachEnum) | 0.40.0+ — where the model runs, which is what a privacy ceiling reads: &#x60;device&#x60; on this machine, &#x60;trusted&#x60; on the private network, &#x60;any&#x60; a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is &#x60;any&#x60;; OpenCode over Ollama is &#x60;device&#x60;), never where the CLI process runs. Every row is served on the gateway&#39;s loopback address, so the address says nothing — read this field. |  [optional] |



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



## Enum: ReachEnum

| Name | Value |
|---- | -----|
| DEVICE | &quot;device&quot; |
| TRUSTED | &quot;trusted&quot; |
| ANY | &quot;any&quot; |



