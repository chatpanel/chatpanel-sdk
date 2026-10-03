# LinkPairRequestScopes

## Enum Variants

| Name | Description |
|---- | -----|
| String | What the partner may reach: &#x60;models&#x60; (GET /v1/models), &#x60;chat&#x60; (POST /v1/chat/completions and /v1/messages to API models), &#x60;agents&#x60; (also the coding agents, as the owner&#39;s own turn runs them — the Coding Agents settings, the sandbox and the org policy decide what they may do, in the partner&#39;s own folder, and the owner answers their approval prompts; needs chat; 0.90.0+), &#x60;files&#x60; (its data, skills, subagents and instructions in that folder — /v1/link/files; needs agents; 0.92.0+). An array or a comma list; absent is models and chat. |
| Vec<String> | What the partner may reach: &#x60;models&#x60; (GET /v1/models), &#x60;chat&#x60; (POST /v1/chat/completions and /v1/messages to API models), &#x60;agents&#x60; (also the coding agents, as the owner&#39;s own turn runs them — the Coding Agents settings, the sandbox and the org policy decide what they may do, in the partner&#39;s own folder, and the owner answers their approval prompts; needs chat; 0.90.0+), &#x60;files&#x60; (its data, skills, subagents and instructions in that folder — /v1/link/files; needs agents; 0.92.0+). An array or a comma list; absent is models and chat. |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


