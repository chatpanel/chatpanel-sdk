# LinkStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | 
**route** | Option<**String**> |  | [optional]
**relay** | Option<**String**> |  | [optional]
**tunnel** | Option<**String**> |  | [optional]
**problem** | Option<**String**> |  | [optional]
**routes** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> |  | [optional]
**setup** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]
**devices** | [**Vec<models::LinkDevice>**](LinkDevice.md) |  | 
**pairing** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A phone code waiting to be scanned. | [optional]
**partner_pairing** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A partner code waiting to be used. | [optional]
**agent_sessions** | Option<**bool**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


