
# LinkDevice

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** |  |  |
| **name** | **kotlin.String** |  |  |
| **kind** | [**inline**](#Kind) |  |  [optional] |
| **pairedAt** | **kotlin.Long** |  |  [optional] |
| **lastSeen** | **kotlin.Long** |  |  [optional] |
| **online** | **kotlin.Boolean** |  |  [optional] |
| **via** | **kotlin.String** | tunnel or relay, while online. |  [optional] |
| **partner** | [**LinkPairResultPartner**](LinkPairResultPartner.md) |  |  [optional] |
| **scopes** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  [optional] |
| **route** | **kotlin.String** | A partner&#39;s route |  [optional] |
| **host** | **kotlin.String** |  |  [optional] |
| **routeClosed** | **kotlin.Boolean** | A tunnel partner whose door shut when the gateway&#39;s route moved — pair it again to move it. |  [optional] |
| **folder** | **kotlin.String** | Where a partner&#39;s agents work (0.90.0+, with agents). |  [optional] |
| **staleRelay** | **kotlin.String** |  |  [optional] |
| **tunnelNeedsRelink** | **kotlin.Boolean** |  |  [optional] |


<a id="Kind"></a>
## Enum: kind
| Name | Value |
| ---- | ----- |
| kind | phone, partner |



