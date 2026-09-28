# PutRecordsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  |
**written** | **int** |  |
**ids** | **string[]** |  | [optional]
**sealed** | **int** |  | [optional]
**size** | **int** |  | [optional]
**revs** | **array<string,int>** | Each written record&#39;s new revision (gateway 0.63.0+). | [optional]
**conflicts** | **array[]** | The current record for each one sent with a &#x60;baseRev&#x60; that is no longer current — merge and send again. | [optional]
**merged** | **array[]** | Gateway 0.64.0+, with &#x60;merge: true&#x60;: each note merged from an outdated copy, as stored (with its new &#x60;rev&#x60;) — replace yours with it. | [optional]
**rev** | **int** | The newest revision after this write. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
