

# KbAccessAgents

`all`, or the agent names (lower-case) that may use the base — the owner always may.

## oneOf schemas
* [List<String>](List<String>.md)
* [String](String.md)

## Example
```java
// Import classes:
import net.chatpanel.sdk.model.KbAccessAgents;
import net.chatpanel.sdk.model.List<String>;
import net.chatpanel.sdk.model.String;

public class Example {
    public static void main(String[] args) {
        KbAccessAgents exampleKbAccessAgents = new KbAccessAgents();

        // create a new List<String>
        List<String> exampleList<String> = new List<String>();
        // set KbAccessAgents to List<String>
        exampleKbAccessAgents.setActualInstance(exampleList<String>);
        // to get back the List<String> set earlier
        List<String> testList<String> = (List<String>) exampleKbAccessAgents.getActualInstance();

        // create a new String
        String exampleString = new String();
        // set KbAccessAgents to String
        exampleKbAccessAgents.setActualInstance(exampleString);
        // to get back the String set earlier
        String testString = (String) exampleKbAccessAgents.getActualInstance();
    }
}
```


