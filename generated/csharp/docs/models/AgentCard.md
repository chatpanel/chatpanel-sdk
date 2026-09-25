# ChatPanel.Sdk.Model.AgentCard
An A2A Agent Card (protocol 1.0). Unknown fields are preserved, so a card from a later spec round-trips.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Description** | **string** |  | 
**VarVersion** | **string** |  | 
**SupportedInterfaces** | [**List&lt;AgentCardSupportedInterfacesInner&gt;**](AgentCardSupportedInterfacesInner.md) |  | [optional] 
**Provider** | [**AgentCardProvider**](AgentCardProvider.md) |  | [optional] 
**Capabilities** | [**AgentCardCapabilities**](AgentCardCapabilities.md) |  | [optional] 
**DefaultInputModes** | **List&lt;string&gt;** |  | [optional] 
**DefaultOutputModes** | **List&lt;string&gt;** |  | [optional] 
**Skills** | **List&lt;Dictionary&lt;string, Object&gt;&gt;** |  | [optional] 
**IconUrl** | **string** |  | [optional] 
**DocumentationUrl** | **string** |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

