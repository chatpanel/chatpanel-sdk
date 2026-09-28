
# PutRecordsRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **host** | **kotlin.String** | Who is pushing — recorded on every record. |  [optional] |
| **at** | **kotlin.Long** |  |  [optional] |
| **records** | **kotlin.collections.List&lt;kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;&gt;** | Whole records or tombstones. A record with &#x60;baseRev&#x60; (gateway 0.63.0+) is written only while the stored one is at that revision (0 &#x3D; none stored); otherwise it comes back in &#x60;conflicts&#x60;. Without it the newer stamp wins. |  [optional] |
| **propertyEntries** | **kotlin.collections.List&lt;kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;&gt;** | Sealed backup entries, opened with the stored passphrase. |  [optional] |



