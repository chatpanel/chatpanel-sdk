# ResearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**question** | **String** | The person's question, in their words. | 
**previous** | Option<[**models::ResearchFollowUp**](ResearchFollowUp.md)> |  | [optional]
**model** | Option<**String**> | A model id to read with (condense long records, check the evidence). Needs the gateway token; without one the parts are quoted as they are. | [optional]
**exclude_id** | Option<**String**> | A record that is not evidence — the conversation asking. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


