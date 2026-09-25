# SkillsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**skillsGet**](SkillsApi.md#skillsGet) | **GET** /skills/{skillId} | One skill, with its prompt. |
| [**skillsGetWithHttpInfo**](SkillsApi.md#skillsGetWithHttpInfo) | **GET** /skills/{skillId} | One skill, with its prompt. |
| [**skillsList**](SkillsApi.md#skillsList) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt. |
| [**skillsListWithHttpInfo**](SkillsApi.md#skillsListWithHttpInfo) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt. |
| [**skillsQuarantined**](SkillsApi.md#skillsQuarantined) | **GET** /skills-quarantined | Packages the admission scanner refused — what is on disk and deliberately not listed. |
| [**skillsQuarantinedWithHttpInfo**](SkillsApi.md#skillsQuarantinedWithHttpInfo) | **GET** /skills-quarantined | Packages the admission scanner refused — what is on disk and deliberately not listed. |



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


## skillsQuarantined

> SkillsQuarantined200Response skillsQuarantined(workdir)

Packages the admission scanner refused — what is on disk and deliberately not listed.

A skill package is a prompt that will run with tools attached, so it is scanned before it is admitted. One that fails is kept out of &#x60;GET /skills&#x60; entirely; this is the only way to learn it exists, and why. The bridge has implemented it since packages could arrive; nothing could reach it until 0.48.0.

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
        String workdir = "workdir_example"; // String | 
        try {
            SkillsQuarantined200Response result = apiInstance.skillsQuarantined(workdir);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling SkillsApi#skillsQuarantined");
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
| **workdir** | **String**|  | [optional] |

### Return type

[**SkillsQuarantined200Response**](SkillsQuarantined200Response.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The refused packages. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |

## skillsQuarantinedWithHttpInfo

> ApiResponse<SkillsQuarantined200Response> skillsQuarantinedWithHttpInfo(workdir)

Packages the admission scanner refused — what is on disk and deliberately not listed.

A skill package is a prompt that will run with tools attached, so it is scanned before it is admitted. One that fails is kept out of &#x60;GET /skills&#x60; entirely; this is the only way to learn it exists, and why. The bridge has implemented it since packages could arrive; nothing could reach it until 0.48.0.

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
        String workdir = "workdir_example"; // String | 
        try {
            ApiResponse<SkillsQuarantined200Response> response = apiInstance.skillsQuarantinedWithHttpInfo(workdir);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling SkillsApi#skillsQuarantined");
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
| **workdir** | **String**|  | [optional] |

### Return type

ApiResponse<[**SkillsQuarantined200Response**](SkillsQuarantined200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The refused packages. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |

