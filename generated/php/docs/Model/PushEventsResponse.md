# PushEventsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  |
**appended** | **int** |  |
**duplicates** | **int** | Events already held — a retry&#39;s share. |
**rejected** | [**\ChatPanelSdk\Model\PushEventsResponseRejectedInner[]**](PushEventsResponseRejectedInner.md) |  |
**cursor** | **array<string,int>** | &#x60;{ host: seq }&#x60; — the highest seq held per host. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
