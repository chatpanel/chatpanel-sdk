# WebSearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**\ChatPanelSdk\Model\WebSearchResult[]**](WebSearchResult.md) |  |
**answers** | **string[]** | SearXNG&#39;s direct answers, when it had any. | [optional]
**suggestions** | **string[]** |  | [optional]
**engines** | **string[]** | What was actually asked. | [optional]
**unresponsive** | **string[]** | SearXNG engines that did not answer. | [optional]
**redacted** | **bool** | Layer-1 redaction removed something from the query. | [optional]
**query** | **string** | The query as sent, when &#x60;redacted&#x60;. | [optional]
**provider** | **string** |  |
**ms** | **float** |  |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
