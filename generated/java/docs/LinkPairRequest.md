

# LinkPairRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | Absent is a phone. |  [optional] |
|**name** | **String** | A phone pairing — what the phone calls this computer. |  [optional] |
|**partner** | [**LinkPairRequestPartner**](LinkPairRequestPartner.md) |  |  [optional] |
|**scopes** | [**LinkPairRequestScopes**](LinkPairRequestScopes.md) |  |  [optional] |
|**route** | [**RouteEnum**](#RouteEnum) | The partner&#39;s one path. Absent is the gateway&#39;s own route. |  [optional] |
|**relay** | **URI** | The https relay for &#x60;route relay&#x60;. |  [optional] |
|**confirm** | **Boolean** | The owner saw the preview and said yes. Without it nothing is issued. |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| PHONE | &quot;phone&quot; |
| PARTNER | &quot;partner&quot; |



## Enum: RouteEnum

| Name | Value |
|---- | -----|
| LINK | &quot;link&quot; |
| RELAY | &quot;relay&quot; |
| TAILSCALE | &quot;tailscale&quot; |
| CLOUDFLARE | &quot;cloudflare&quot; |



