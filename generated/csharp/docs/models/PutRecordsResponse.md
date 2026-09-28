# ChatPanel.Sdk.Model.PutRecordsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Written** | **int** |  | 
**Ids** | **List&lt;string&gt;** |  | [optional] 
**Sealed** | **int** |  | [optional] 
**Size** | **int** |  | [optional] 
**Revs** | **Dictionary&lt;string, long&gt;** | Each written record&#39;s new revision (gateway 0.63.0+). | [optional] 
**Conflicts** | **List&lt;Dictionary&lt;string, Object&gt;&gt;** | The current record for each one sent with a &#x60;baseRev&#x60; that is no longer current — merge and send again. | [optional] 
**Merged** | **List&lt;Dictionary&lt;string, Object&gt;&gt;** | Gateway 0.64.0+, with &#x60;merge: true&#x60;: each note merged from an outdated copy, as stored (with its new &#x60;rev&#x60;) — replace yours with it. | [optional] 
**Rev** | **long** | The newest revision after this write. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

