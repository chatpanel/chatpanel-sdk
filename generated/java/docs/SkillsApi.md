# SkillsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**skillsGet**](SkillsApi.md#skillsGet) | **GET** /skills/{skillId} | One skill, with its prompt. |
| [**skillsGetWithHttpInfo**](SkillsApi.md#skillsGetWithHttpInfo) | **GET** /skills/{skillId} | One skill, with its prompt. |
| [**skillsList**](SkillsApi.md#skillsList) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt. |
| [**skillsListWithHttpInfo**](SkillsApi.md#skillsListWithHttpInfo) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt. |



## skillsGet

> SkillsGet200Response skillsGet(skillId, workdir)

One skill, with its prompt.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.SkillsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        SkillsApi apiInstance = new SkillsApi(defaultClient);
        String skillId = "skillId_example"; // String | One path segment; slashes and `..` are refused.
        String workdir = "workdir_example"; // String | 
        try {
            SkillsGet200Response result = apiInstance.skillsGet(skillId, workdir);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling SkillsApi#skillsGet");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **skillId** | **String**| One path segment; slashes and &#x60;..&#x60; are refused. | |
| **workdir** | **String**|  | [optional] |

### Return type

[**SkillsGet200Response**](SkillsGet200Response.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The skill. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

## skillsGetWithHttpInfo

> ApiResponse<SkillsGet200Response> skillsGetWithHttpInfo(skillId, workdir)

One skill, with its prompt.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.SkillsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        SkillsApi apiInstance = new SkillsApi(defaultClient);
        String skillId = "skillId_example"; // String | One path segment; slashes and `..` are refused.
        String workdir = "workdir_example"; // String | 
        try {
            ApiResponse<SkillsGet200Response> response = apiInstance.skillsGetWithHttpInfo(skillId, workdir);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling SkillsApi#skillsGet");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **skillId** | **String**| One path segment; slashes and &#x60;..&#x60; are refused. | |
| **workdir** | **String**|  | [optional] |

### Return type

ApiResponse<[**SkillsGet200Response**](SkillsGet200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The skill. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |


## skillsList

> SkillsList200Response skillsList(workdir)

The skills on this machine — with a prompt character count, not the prompt.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.SkillsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        SkillsApi apiInstance = new SkillsApi(defaultClient);
        String workdir = "workdir_example"; // String | Include the project-local skill roots of this directory (0.9.4+).
        try {
            SkillsList200Response result = apiInstance.skillsList(workdir);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling SkillsApi#skillsList");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **workdir** | **String**| Include the project-local skill roots of this directory (0.9.4+). | [optional] |

### Return type

[**SkillsList200Response**](SkillsList200Response.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Skills. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |

## skillsListWithHttpInfo

> ApiResponse<SkillsList200Response> skillsListWithHttpInfo(workdir)

The skills on this machine — with a prompt character count, not the prompt.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.SkillsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        SkillsApi apiInstance = new SkillsApi(defaultClient);
        String workdir = "workdir_example"; // String | Include the project-local skill roots of this directory (0.9.4+).
        try {
            ApiResponse<SkillsList200Response> response = apiInstance.skillsListWithHttpInfo(workdir);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling SkillsApi#skillsList");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **workdir** | **String**| Include the project-local skill roots of this directory (0.9.4+). | [optional] |

### Return type

ApiResponse<[**SkillsList200Response**](SkillsList200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Skills. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |

