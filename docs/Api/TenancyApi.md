# Permify\TenancyApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**tenantsCreate()**](TenancyApi.md#tenantsCreate) | **POST** /v1/tenants/create | create tenant |
| [**tenantsDelete()**](TenancyApi.md#tenantsDelete) | **DELETE** /v1/tenants/{id} | delete tenant |
| [**tenantsList()**](TenancyApi.md#tenantsList) | **POST** /v1/tenants/list | list tenants |


## `tenantsCreate()`

```php
tenantsCreate($body): \Permify\Model\TenantCreateResponse
```

create tenant

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\TenancyApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Permify\Model\TenantCreateRequest(); // \Permify\Model\TenantCreateRequest | TenantCreateRequest is the message used for the request to create a tenant.

try {
    $result = $apiInstance->tenantsCreate($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TenancyApi->tenantsCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **body** | [**\Permify\Model\TenantCreateRequest**](../Model/TenantCreateRequest.md)| TenantCreateRequest is the message used for the request to create a tenant. | |

### Return type

[**\Permify\Model\TenantCreateResponse**](../Model/TenantCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `tenantsDelete()`

```php
tenantsDelete($id): \Permify\Model\TenantDeleteResponse
```

delete tenant

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\TenancyApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 'id_example'; // string | id is the unique identifier of the tenant to be deleted.

try {
    $result = $apiInstance->tenantsDelete($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TenancyApi->tenantsDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| id is the unique identifier of the tenant to be deleted. | |

### Return type

[**\Permify\Model\TenantDeleteResponse**](../Model/TenantDeleteResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `tenantsList()`

```php
tenantsList($body): \Permify\Model\TenantListResponse
```

list tenants

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\TenancyApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Permify\Model\TenantListRequest(); // \Permify\Model\TenantListRequest | TenantListRequest is the message used for the request to list all tenants.

try {
    $result = $apiInstance->tenantsList($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TenancyApi->tenantsList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **body** | [**\Permify\Model\TenantListRequest**](../Model/TenantListRequest.md)| TenantListRequest is the message used for the request to list all tenants. | |

### Return type

[**\Permify\Model\TenantListResponse**](../Model/TenantListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
