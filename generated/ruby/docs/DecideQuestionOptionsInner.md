# ChatPanel::DecideQuestionOptionsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'chatpanel'

ChatPanel::DecideQuestionOptionsInner.openapi_one_of
# =>
# [
#   :'DecideOption',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'chatpanel'

ChatPanel::DecideQuestionOptionsInner.build(data)
# => #<DecideOption:0x00007fdd4aab02a0>

ChatPanel::DecideQuestionOptionsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DecideOption`
- `String`
- `nil` (if no type matches)

