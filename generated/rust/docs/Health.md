# Health

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**version** | **String** | The gateway's semver; every version gate reads this. | 
**backend** | Option<**String**> |  | [optional]
**tier** | Option<**Tier**> | Redaction tier. (enum: basic, full) | [optional]
**pairing** | Option<**bool**> | Present from 0.9.0 — this gateway can pair a client. | [optional]
**managed** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional]
**managed_by** | Option<**String**> |  | [optional]
**bridge** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional]
**stt** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional]
**tts** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


