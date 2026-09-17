# ChatPanel::ErrorResponseError

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'chatpanel'

ChatPanel::ErrorResponseError.openapi_one_of
# =>
# [
#   :'ErrorResponseErrorOneOf',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'chatpanel'

ChatPanel::ErrorResponseError.build(data)
# => #<ErrorResponseErrorOneOf:0x00007fdd4aab02a0>

ChatPanel::ErrorResponseError.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ErrorResponseErrorOneOf`
- `String`
- `nil` (if no type matches)

