

# AgentCard

An A2A Agent Card (protocol 1.0). Unknown fields are preserved, so a card from a later spec round-trips.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  |
|**description** | **String** |  |  |
|**version** | **String** |  |  |
|**supportedInterfaces** | [**List&lt;AgentCardSupportedInterfacesInner&gt;**](AgentCardSupportedInterfacesInner.md) |  |  [optional] |
|**provider** | [**AgentCardProvider**](AgentCardProvider.md) |  |  [optional] |
|**capabilities** | **AgentCardCapabilities** |  |  [optional] |
|**defaultInputModes** | **List&lt;String&gt;** |  |  [optional] |
|**defaultOutputModes** | **List&lt;String&gt;** |  |  [optional] |
|**skills** | **List&lt;Map&lt;String, Object&gt;&gt;** |  |  [optional] |
|**iconUrl** | **String** |  |  [optional] |
|**documentationUrl** | **String** |  |  [optional] |



