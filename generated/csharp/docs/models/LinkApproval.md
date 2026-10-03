# ChatPanel.Sdk.Model.LinkApproval

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Partner** | **string** | The partner whose agent asks. | 
**Title** | **string** | Who asks and what kind of action — \&quot;Atlas’s agent asks — run a command?\&quot; | 
**Body** | **string** | The command | 
**CreatedAt** | **long** |  | 
**ExpiresAt** | **long** | When it becomes a no. | 
**Device** | **string** |  | [optional] 
**Conversation** | **string** | The partner&#39;s conversation (&#x60;partner.&lt;device&gt;.&lt;thread&gt;&#x60;), or the turn&#39;s own. | [optional] 
**Tool** | **string** |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

