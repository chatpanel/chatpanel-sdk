

# ChatMessageContent

## oneOf schemas
* [List<ChatContentPart>](List<ChatContentPart>.md)
* [String](String.md)

NOTE: this class is nullable.

## Example
```java
// Import classes:
import net.chatpanel.sdk.model.ChatMessageContent;
import net.chatpanel.sdk.model.List<ChatContentPart>;
import net.chatpanel.sdk.model.String;

public class Example {
    public static void main(String[] args) {
        ChatMessageContent exampleChatMessageContent = new ChatMessageContent();

        // create a new List<ChatContentPart>
        List<ChatContentPart> exampleList<ChatContentPart> = new List<ChatContentPart>();
        // set ChatMessageContent to List<ChatContentPart>
        exampleChatMessageContent.setActualInstance(exampleList<ChatContentPart>);
        // to get back the List<ChatContentPart> set earlier
        List<ChatContentPart> testList<ChatContentPart> = (List<ChatContentPart>) exampleChatMessageContent.getActualInstance();

        // create a new String
        String exampleString = new String();
        // set ChatMessageContent to String
        exampleChatMessageContent.setActualInstance(exampleString);
        // to get back the String set earlier
        String testString = (String) exampleChatMessageContent.getActualInstance();
    }
}
```


