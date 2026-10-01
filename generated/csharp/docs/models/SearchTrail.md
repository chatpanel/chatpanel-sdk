# ChatPanel.Sdk.Model.SearchTrail
What the search did — each provider and engine asked, what it did, which are resting — and how it ended. Optional on every response that carries it; an older gateway sends none. Since gateway 0.79.0.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **string** | How it ended: &#x60;answered&#x60; (results came back) · &#x60;nothing&#x60; (engines answered, none had anything) · &#x60;blocked&#x60; (every engine asked refused or timed out) · &#x60;resting&#x60; (nothing was asked: every engine is resting after earlier refusals) · &#x60;offline&#x60; (every engine failed at the network) · &#x60;no-engines&#x60;. A client meeting a value it does not know treats it as no results. | 
**Asked** | [**List&lt;SearchTrailAsk&gt;**](SearchTrailAsk.md) | In the order asked: the provider tried first (&#x60;searxng&#x60;, or each engine and API &#x60;serp&#x60; asked), then the other provider when the first came back empty. | 
**Resting** | [**List&lt;SearchTrailResting&gt;**](SearchTrailResting.md) | Engines resting after refusing earlier, and until when. | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

