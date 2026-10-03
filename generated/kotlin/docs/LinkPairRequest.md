
# LinkPairRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **kind** | [**inline**](#Kind) | Absent is a phone. |  [optional] |
| **name** | **kotlin.String** | A phone pairing — what the phone calls this computer. |  [optional] |
| **partner** | [**LinkPairRequestPartner**](LinkPairRequestPartner.md) |  |  [optional] |
| **scopes** | [**LinkPairRequestScopes**](LinkPairRequestScopes.md) |  |  [optional] |
| **route** | [**inline**](#Route) | The partner&#39;s one path. Absent is the gateway&#39;s own route. |  [optional] |
| **relay** | [**java.net.URI**](java.net.URI.md) | The https relay for &#x60;route relay&#x60;. |  [optional] |
| **confirm** | **kotlin.Boolean** | The owner saw the preview and said yes. Without it nothing is issued. |  [optional] |


<a id="Kind"></a>
## Enum: kind
| Name | Value |
| ---- | ----- |
| kind | phone, partner |


<a id="Route"></a>
## Enum: route
| Name | Value |
| ---- | ----- |
| route | link, relay, tailscale, cloudflare |



