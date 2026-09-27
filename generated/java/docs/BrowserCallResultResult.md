

# BrowserCallResultResult

The page action's result — its text, or text with a screenshot.

## oneOf schemas
* [BrowserCallResultResultOneOf](BrowserCallResultResultOneOf.md)
* [String](String.md)

## Example
```java
// Import classes:
import net.chatpanel.sdk.model.BrowserCallResultResult;
import net.chatpanel.sdk.model.BrowserCallResultResultOneOf;
import net.chatpanel.sdk.model.String;

public class Example {
    public static void main(String[] args) {
        BrowserCallResultResult exampleBrowserCallResultResult = new BrowserCallResultResult();

        // create a new BrowserCallResultResultOneOf
        BrowserCallResultResultOneOf exampleBrowserCallResultResultOneOf = new BrowserCallResultResultOneOf();
        // set BrowserCallResultResult to BrowserCallResultResultOneOf
        exampleBrowserCallResultResult.setActualInstance(exampleBrowserCallResultResultOneOf);
        // to get back the BrowserCallResultResultOneOf set earlier
        BrowserCallResultResultOneOf testBrowserCallResultResultOneOf = (BrowserCallResultResultOneOf) exampleBrowserCallResultResult.getActualInstance();

        // create a new String
        String exampleString = new String();
        // set BrowserCallResultResult to String
        exampleBrowserCallResultResult.setActualInstance(exampleString);
        // to get back the String set earlier
        String testString = (String) exampleBrowserCallResultResult.getActualInstance();
    }
}
```


