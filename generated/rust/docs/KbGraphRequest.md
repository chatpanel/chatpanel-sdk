# KbGraphRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**node** | **String** | An entity, section or topic by name (or a node id). | 
**to** | Option<**String**> | A second node: the path from `node` to it. | [optional]
**hops** | Option<**i32**> |  | [optional][default to 1]
**kinds** | Option<**Vec<Kinds>**> |  (enum: doc, section, entity, topic, note, chunk) | [optional]
**limit** | Option<**i32**> |  | [optional][default to 20]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


