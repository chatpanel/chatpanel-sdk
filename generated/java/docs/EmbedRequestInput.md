

# EmbedRequestInput

A string, or 1–256 strings.

## oneOf schemas
* [List<String>](List<String>.md)
* [String](String.md)

## Example
```java
// Import classes:
import net.chatpanel.sdk.model.EmbedRequestInput;
import net.chatpanel.sdk.model.List<String>;
import net.chatpanel.sdk.model.String;

public class Example {
    public static void main(String[] args) {
        EmbedRequestInput exampleEmbedRequestInput = new EmbedRequestInput();

        // create a new List<String>
        List<String> exampleList<String> = new List<String>();
        // set EmbedRequestInput to List<String>
        exampleEmbedRequestInput.setActualInstance(exampleList<String>);
        // to get back the List<String> set earlier
        List<String> testList<String> = (List<String>) exampleEmbedRequestInput.getActualInstance();

        // create a new String
        String exampleString = new String();
        // set EmbedRequestInput to String
        exampleEmbedRequestInput.setActualInstance(exampleString);
        // to get back the String set earlier
        String testString = (String) exampleEmbedRequestInput.getActualInstance();
    }
}
```


