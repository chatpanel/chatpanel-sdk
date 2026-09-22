

# FusionListFusionsInnerMembersInner

## oneOf schemas
* [FusionListFusionsInnerMembersInnerOneOf](FusionListFusionsInnerMembersInnerOneOf.md)
* [String](String.md)

## Example
```java
// Import classes:
import net.chatpanel.sdk.model.FusionListFusionsInnerMembersInner;
import net.chatpanel.sdk.model.FusionListFusionsInnerMembersInnerOneOf;
import net.chatpanel.sdk.model.String;

public class Example {
    public static void main(String[] args) {
        FusionListFusionsInnerMembersInner exampleFusionListFusionsInnerMembersInner = new FusionListFusionsInnerMembersInner();

        // create a new FusionListFusionsInnerMembersInnerOneOf
        FusionListFusionsInnerMembersInnerOneOf exampleFusionListFusionsInnerMembersInnerOneOf = new FusionListFusionsInnerMembersInnerOneOf();
        // set FusionListFusionsInnerMembersInner to FusionListFusionsInnerMembersInnerOneOf
        exampleFusionListFusionsInnerMembersInner.setActualInstance(exampleFusionListFusionsInnerMembersInnerOneOf);
        // to get back the FusionListFusionsInnerMembersInnerOneOf set earlier
        FusionListFusionsInnerMembersInnerOneOf testFusionListFusionsInnerMembersInnerOneOf = (FusionListFusionsInnerMembersInnerOneOf) exampleFusionListFusionsInnerMembersInner.getActualInstance();

        // create a new String
        String exampleString = new String();
        // set FusionListFusionsInnerMembersInner to String
        exampleFusionListFusionsInnerMembersInner.setActualInstance(exampleString);
        // to get back the String set earlier
        String testString = (String) exampleFusionListFusionsInnerMembersInner.getActualInstance();
    }
}
```


