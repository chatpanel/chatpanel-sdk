

# WhoAmI


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ok** | **Boolean** |  |  |
|**trust** | [**TrustEnum**](#TrustEnum) |  |  |
|**paired** | **Boolean** | True when this caller may reach token-gated routes. |  |
|**version** | **String** |  |  |



## Enum: TrustEnum

| Name | Value |
|---- | -----|
| TOKEN | &quot;token&quot; |
| PINNED | &quot;pinned&quot; |
| UNPAIRED | &quot;unpaired&quot; |
| LOCAL | &quot;local&quot; |
| WEB | &quot;web&quot; |



