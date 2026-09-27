# ResearchPlan

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**intent** | Option<**Intent**> |  (enum: find, latest, earliest, count, group, people, list, detail) | [optional]
**kind** | Option<**String**> | meeting, note, chat — or empty for every kind. | [optional]
**names** | Option<**Vec<String>**> |  | [optional]
**terms** | Option<**Vec<String>**> |  | [optional]
**sort** | Option<**Sort**> |  (enum: relevance, newest, oldest) | [optional]
**limit** | Option<**i32**> |  | [optional]
**since** | Option<**i64**> |  | [optional]
**after** | Option<**i64**> |  | [optional]
**before** | Option<**i64**> |  | [optional]
**group** | Option<**String**> | person, month, week, day — or empty. | [optional]
**read_full** | Option<**bool**> |  | [optional]
**follow_up** | Option<**bool**> |  | [optional]
**target** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


