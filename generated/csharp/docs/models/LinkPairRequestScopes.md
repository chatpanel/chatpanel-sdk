# ChatPanel.Sdk.Model.LinkPairRequestScopes
What the partner may reach: `models` (GET /v1/models), `chat` (POST /v1/chat/completions and /v1/messages to API models), `agents` (also the coding agents, as the owner's own turn runs them — the Coding Agents settings, the sandbox and the org policy decide what they may do, in the partner's own folder, and the owner answers their approval prompts; needs chat; 0.90.0+), `files` (its data, skills, subagents and instructions in that folder — /v1/link/files; needs agents; 0.92.0+). An array or a comma list; absent is models and chat.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

