# ChatPanel::ChatMessageContent

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'chatpanel'

ChatPanel::ChatMessageContent.openapi_one_of
# =>
# [
#   :'Array<ChatContentPart>',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'chatpanel'

ChatPanel::ChatMessageContent.build(data)
# => #<Array<ChatContentPart>:0x00007fdd4aab02a0>

ChatPanel::ChatMessageContent.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<ChatContentPart>`
- `String`
- `nil` (if no type matches)

