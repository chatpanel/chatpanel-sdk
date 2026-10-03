

# LinkDevice


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  |
|**kind** | [**KindEnum**](#KindEnum) |  |  [optional] |
|**name** | **String** |  |  |
|**pairedAt** | **Long** |  |  [optional] |
|**lastSeen** | **Long** |  |  [optional] |
|**online** | **Boolean** |  |  [optional] |
|**via** | **String** | tunnel or relay, while online. |  [optional] |
|**partner** | [**LinkPairResultPartner**](LinkPairResultPartner.md) |  |  [optional] |
|**scopes** | **List&lt;String&gt;** |  |  [optional] |
|**route** | **String** | A partner&#39;s route |  [optional] |
|**host** | **String** |  |  [optional] |
|**routeClosed** | **Boolean** | A tunnel partner whose door shut when the gateway&#39;s route moved — pair it again to move it. |  [optional] |
|**folder** | **String** | Where a partner&#39;s agents work (0.90.0+, with agents). |  [optional] |
|**staleRelay** | **String** |  |  [optional] |
|**tunnelNeedsRelink** | **Boolean** |  |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| PHONE | &quot;phone&quot; |
| PARTNER | &quot;partner&quot; |



