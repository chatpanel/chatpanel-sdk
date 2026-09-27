# ChatPanel::BrowserResultResult

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'chatpanel'

ChatPanel::BrowserResultResult.openapi_one_of
# =>
# [
#   :'BrowserResultResultOneOf',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'chatpanel'

ChatPanel::BrowserResultResult.build(data)
# => #<BrowserResultResultOneOf:0x00007fdd4aab02a0>

ChatPanel::BrowserResultResult.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BrowserResultResultOneOf`
- `String`
- `nil` (if no type matches)

