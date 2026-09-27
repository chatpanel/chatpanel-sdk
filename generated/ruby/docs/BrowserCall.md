# ChatPanel::BrowserCall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | A page action: open_tab, navigate, read_page, inspect_page, fill_form, click_by_text, screenshot, describe… |  |
| **args** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **task** | **String** | What the person asked for — shown to them when the browser asks to be used. | [optional] |
| **timeout_ms** | **Integer** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::BrowserCall.new(
  action: null,
  args: null,
  task: null,
  timeout_ms: null
)
```

