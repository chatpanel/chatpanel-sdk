# ChatPanel::BrowserCallResultResult

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'chatpanel'

ChatPanel::BrowserCallResultResult.openapi_one_of
# =>
# [
#   :'BrowserCallResultResultOneOf',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'chatpanel'

ChatPanel::BrowserCallResultResult.build(data)
# => #<BrowserCallResultResultOneOf:0x00007fdd4aab02a0>

ChatPanel::BrowserCallResultResult.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BrowserCallResultResultOneOf`
- `String`
- `nil` (if no type matches)

