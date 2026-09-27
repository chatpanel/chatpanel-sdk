

# BrowserResultResult

## oneOf schemas
* [BrowserResultResultOneOf](BrowserResultResultOneOf.md)
* [String](String.md)

## Example
```java
// Import classes:
import net.chatpanel.sdk.model.BrowserResultResult;
import net.chatpanel.sdk.model.BrowserResultResultOneOf;
import net.chatpanel.sdk.model.String;

public class Example {
    public static void main(String[] args) {
        BrowserResultResult exampleBrowserResultResult = new BrowserResultResult();

        // create a new BrowserResultResultOneOf
        BrowserResultResultOneOf exampleBrowserResultResultOneOf = new BrowserResultResultOneOf();
        // set BrowserResultResult to BrowserResultResultOneOf
        exampleBrowserResultResult.setActualInstance(exampleBrowserResultResultOneOf);
        // to get back the BrowserResultResultOneOf set earlier
        BrowserResultResultOneOf testBrowserResultResultOneOf = (BrowserResultResultOneOf) exampleBrowserResultResult.getActualInstance();

        // create a new String
        String exampleString = new String();
        // set BrowserResultResult to String
        exampleBrowserResultResult.setActualInstance(exampleString);
        // to get back the String set earlier
        String testString = (String) exampleBrowserResultResult.getActualInstance();
    }
}
```


