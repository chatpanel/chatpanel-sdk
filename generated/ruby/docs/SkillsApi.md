# ChatPanel::SkillsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**skills_get**](SkillsApi.md#skills_get) | **GET** /skills/{skillId} | One skill, with its prompt. |
| [**skills_list**](SkillsApi.md#skills_list) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt. |


## skills_get

> <SkillsGet200Response> skills_get(skill_id, opts)

One skill, with its prompt.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::SkillsApi.new
skill_id = 'skill_id_example' # String | One path segment; slashes and `..` are refused.
opts = {
  workdir: 'workdir_example' # String | 
}

begin
  # One skill, with its prompt.
  result = api_instance.skills_get(skill_id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling SkillsApi->skills_get: #{e}"
end
```

#### Using the skills_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SkillsGet200Response>, Integer, Hash)> skills_get_with_http_info(skill_id, opts)

```ruby
begin
  # One skill, with its prompt.
  data, status_code, headers = api_instance.skills_get_with_http_info(skill_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SkillsGet200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling SkillsApi->skills_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skill_id** | **String** | One path segment; slashes and &#x60;..&#x60; are refused. |  |
| **workdir** | **String** |  | [optional] |

### Return type

[**SkillsGet200Response**](SkillsGet200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## skills_list

> <SkillsList200Response> skills_list(opts)

The skills on this machine — with a prompt character count, not the prompt.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::SkillsApi.new
opts = {
  workdir: 'workdir_example' # String | Include the project-local skill roots of this directory (0.9.4+).
}

begin
  # The skills on this machine — with a prompt character count, not the prompt.
  result = api_instance.skills_list(opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling SkillsApi->skills_list: #{e}"
end
```

#### Using the skills_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SkillsList200Response>, Integer, Hash)> skills_list_with_http_info(opts)

```ruby
begin
  # The skills on this machine — with a prompt character count, not the prompt.
  data, status_code, headers = api_instance.skills_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SkillsList200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling SkillsApi->skills_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workdir** | **String** | Include the project-local skill roots of this directory (0.9.4+). | [optional] |

### Return type

[**SkillsList200Response**](SkillsList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

