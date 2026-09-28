

# PutRecordsRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**host** | **String** | Who is pushing — recorded on every record. |  [optional] |
|**at** | **Long** |  |  [optional] |
|**records** | **List&lt;Map&lt;String, Object&gt;&gt;** | Whole records or tombstones. A record with &#x60;baseRev&#x60; (gateway 0.63.0+) is written only while the stored one is at that revision (0 &#x3D; none stored); otherwise it comes back in &#x60;conflicts&#x60;. Without it the newer stamp wins. |  [optional] |
|**entries** | **List&lt;Map&lt;String, Object&gt;&gt;** | Sealed backup entries, opened with the stored passphrase. |  [optional] |



