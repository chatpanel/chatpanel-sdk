# PutRecordsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host** | **string** | Who is pushing — recorded on every record. | [optional]
**at** | **int** |  | [optional]
**records** | **array[]** | Whole records or tombstones. A record with &#x60;baseRev&#x60; (gateway 0.63.0+) is written only while the stored one is at that revision (0 &#x3D; none stored); otherwise it comes back in &#x60;conflicts&#x60;. Without it the newer stamp wins. | [optional]
**entries** | **array[]** | Sealed backup entries, opened with the stored passphrase. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
