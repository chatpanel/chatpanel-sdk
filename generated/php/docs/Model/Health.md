# Health

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  |
**version** | **string** | The gateway&#39;s semver; every version gate reads this. |
**backend** | **string** |  | [optional]
**tier** | **string** | Redaction tier. | [optional]
**pairing** | **bool** | Present from 0.9.0 — this gateway can pair a client. | [optional]
**managed** | **array<string,mixed>** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional]
**managed_by** | **string** |  | [optional]
**bridge** | **array<string,mixed>** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional]
**stt** | **array<string,mixed>** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional]
**tts** | **array<string,mixed>** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
