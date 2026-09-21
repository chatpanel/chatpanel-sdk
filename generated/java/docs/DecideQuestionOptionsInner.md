

# DecideQuestionOptionsInner

## oneOf schemas
* [DecideOption](DecideOption.md)
* [String](String.md)

## Example
```java
// Import classes:
import net.chatpanel.sdk.model.DecideQuestionOptionsInner;
import net.chatpanel.sdk.model.DecideOption;
import net.chatpanel.sdk.model.String;

public class Example {
    public static void main(String[] args) {
        DecideQuestionOptionsInner exampleDecideQuestionOptionsInner = new DecideQuestionOptionsInner();

        // create a new DecideOption
        DecideOption exampleDecideOption = new DecideOption();
        // set DecideQuestionOptionsInner to DecideOption
        exampleDecideQuestionOptionsInner.setActualInstance(exampleDecideOption);
        // to get back the DecideOption set earlier
        DecideOption testDecideOption = (DecideOption) exampleDecideQuestionOptionsInner.getActualInstance();

        // create a new String
        String exampleString = new String();
        // set DecideQuestionOptionsInner to String
        exampleDecideQuestionOptionsInner.setActualInstance(exampleString);
        // to get back the String set earlier
        String testString = (String) exampleDecideQuestionOptionsInner.getActualInstance();
    }
}
```


