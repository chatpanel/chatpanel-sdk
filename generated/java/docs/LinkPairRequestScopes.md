

# LinkPairRequestScopes

What the partner may reach: `models` (GET /v1/models), `chat` (POST /v1/chat/completions and /v1/messages to API models), `agents` (also the coding agents, as the owner's own turn runs them — the Coding Agents settings, the sandbox and the org policy decide what they may do, in the partner's own folder, and the owner answers their approval prompts; needs chat; 0.90.0+), `files` (its data, skills, subagents and instructions in that folder — /v1/link/files; needs agents; 0.92.0+). An array or a comma list; absent is models and chat.

## oneOf schemas
* [List<String>](List<String>.md)
* [String](String.md)

## Example
```java
// Import classes:
import net.chatpanel.sdk.model.LinkPairRequestScopes;
import net.chatpanel.sdk.model.List<String>;
import net.chatpanel.sdk.model.String;

public class Example {
    public static void main(String[] args) {
        LinkPairRequestScopes exampleLinkPairRequestScopes = new LinkPairRequestScopes();

        // create a new List<String>
        List<String> exampleList<String> = new List<String>();
        // set LinkPairRequestScopes to List<String>
        exampleLinkPairRequestScopes.setActualInstance(exampleList<String>);
        // to get back the List<String> set earlier
        List<String> testList<String> = (List<String>) exampleLinkPairRequestScopes.getActualInstance();

        // create a new String
        String exampleString = new String();
        // set LinkPairRequestScopes to String
        exampleLinkPairRequestScopes.setActualInstance(exampleString);
        // to get back the String set earlier
        String testString = (String) exampleLinkPairRequestScopes.getActualInstance();
    }
}
```


