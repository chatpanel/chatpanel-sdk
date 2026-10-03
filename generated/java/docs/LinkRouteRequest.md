

# LinkRouteRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**route** | [**RouteEnum**](#RouteEnum) |  |  |
|**url** | **String** | The relay (relay) or this computer&#39;s tunnel address (tailscale |  [optional] |
|**fallback** | **Boolean** | A tunnel route keeps ChatPanel Link as the phones&#39; fallback unless false. |  [optional] |



## Enum: RouteEnum

| Name | Value |
|---- | -----|
| LINK | &quot;link&quot; |
| RELAY | &quot;relay&quot; |
| TAILSCALE | &quot;tailscale&quot; |
| CLOUDFLARE | &quot;cloudflare&quot; |



