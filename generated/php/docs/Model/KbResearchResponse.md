# KbResearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment** | [**\ChatPanelSdk\Model\KbResearchResponseAttachment**](KbResearchResponseAttachment.md) |  | [optional]
**read** | **array<string,mixed>[]** | What was read, grouped by document in page order (or the outline for a whole-document ask). |
**hits** | [**\ChatPanelSdk\Model\KbResearchResponseHitsInner[]**](KbResearchResponseHitsInner.md) |  |
**queries** | **string[]** |  |
**verdict** | **string** | The check&#39;s answer when a model was given. | [optional]
**rounds** | **int** |  |
**ask** | [**\ChatPanelSdk\Model\KbResearchResponseAsk**](KbResearchResponseAsk.md) |  | [optional]
**how** | **string** | How it was searched, in words. | [optional]
**frame** | [**\ChatPanelSdk\Model\KbResearchResponseFrame**](KbResearchResponseFrame.md) |  | [optional]
**ms** | **float** |  |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
