# ChatPanel.Sdk.Model.PutRecordsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Host** | **string** | Who is pushing — recorded on every record. | [optional] 
**At** | **long** |  | [optional] 
**Records** | **List&lt;Dictionary&lt;string, Object&gt;&gt;** | Whole records or tombstones. A record with &#x60;baseRev&#x60; (gateway 0.63.0+) is written only while the stored one is at that revision (0 &#x3D; none stored); otherwise it comes back in &#x60;conflicts&#x60;. Without it the newer stamp wins. | [optional] 
**Entries** | **List&lt;Dictionary&lt;string, Object&gt;&gt;** | Sealed backup entries, opened with the stored passphrase. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

