

# ErrorResponseError

## oneOf schemas
* [ErrorResponseErrorOneOf](ErrorResponseErrorOneOf.md)
* [String](String.md)

## Example
```java
// Import classes:
import net.chatpanel.sdk.model.ErrorResponseError;
import net.chatpanel.sdk.model.ErrorResponseErrorOneOf;
import net.chatpanel.sdk.model.String;

public class Example {
    public static void main(String[] args) {
        ErrorResponseError exampleErrorResponseError = new ErrorResponseError();

        // create a new ErrorResponseErrorOneOf
        ErrorResponseErrorOneOf exampleErrorResponseErrorOneOf = new ErrorResponseErrorOneOf();
        // set ErrorResponseError to ErrorResponseErrorOneOf
        exampleErrorResponseError.setActualInstance(exampleErrorResponseErrorOneOf);
        // to get back the ErrorResponseErrorOneOf set earlier
        ErrorResponseErrorOneOf testErrorResponseErrorOneOf = (ErrorResponseErrorOneOf) exampleErrorResponseError.getActualInstance();

        // create a new String
        String exampleString = new String();
        // set ErrorResponseError to String
        exampleErrorResponseError.setActualInstance(exampleString);
        // to get back the String set earlier
        String testString = (String) exampleErrorResponseError.getActualInstance();
    }
}
```


