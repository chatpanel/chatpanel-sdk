

# KbAccessRequestAgents

`all`, or the agent names to grant.

## oneOf schemas
* [List<String>](List<String>.md)
* [String](String.md)

## Example
```java
// Import classes:
import net.chatpanel.sdk.model.KbAccessRequestAgents;
import net.chatpanel.sdk.model.List<String>;
import net.chatpanel.sdk.model.String;

public class Example {
    public static void main(String[] args) {
        KbAccessRequestAgents exampleKbAccessRequestAgents = new KbAccessRequestAgents();

        // create a new List<String>
        List<String> exampleList<String> = new List<String>();
        // set KbAccessRequestAgents to List<String>
        exampleKbAccessRequestAgents.setActualInstance(exampleList<String>);
        // to get back the List<String> set earlier
        List<String> testList<String> = (List<String>) exampleKbAccessRequestAgents.getActualInstance();

        // create a new String
        String exampleString = new String();
        // set KbAccessRequestAgents to String
        exampleKbAccessRequestAgents.setActualInstance(exampleString);
        // to get back the String set earlier
        String testString = (String) exampleKbAccessRequestAgents.getActualInstance();
    }
}
```


