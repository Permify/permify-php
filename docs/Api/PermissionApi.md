# Permify\PermissionApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**permissionsBulkCheck()**](PermissionApi.md#permissionsBulkCheck) | **POST** /v1/tenants/{tenant_id}/permissions/bulk-check | bulk check api |
| [**permissionsCheck()**](PermissionApi.md#permissionsCheck) | **POST** /v1/tenants/{tenant_id}/permissions/check | check api |
| [**permissionsExpand()**](PermissionApi.md#permissionsExpand) | **POST** /v1/tenants/{tenant_id}/permissions/expand | expand api |
| [**permissionsLookupEntity()**](PermissionApi.md#permissionsLookupEntity) | **POST** /v1/tenants/{tenant_id}/permissions/lookup-entity | lookup entity |
| [**permissionsLookupEntityStream()**](PermissionApi.md#permissionsLookupEntityStream) | **POST** /v1/tenants/{tenant_id}/permissions/lookup-entity-stream | lookup entity stream |
| [**permissionsLookupSubject()**](PermissionApi.md#permissionsLookupSubject) | **POST** /v1/tenants/{tenant_id}/permissions/lookup-subject | lookup-subject |
| [**permissionsSubjectPermission()**](PermissionApi.md#permissionsSubjectPermission) | **POST** /v1/tenants/{tenant_id}/permissions/subject-permission | subject permission |


## `permissionsBulkCheck()`

```php
permissionsBulkCheck($tenant_id, $body): \Permify\Model\PermissionBulkCheckResponse
```

bulk check api

Check multiple permissions in a single request. Maximum 100 requests allowed.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\PermissionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\BulkCheckBody(); // \Permify\Model\BulkCheckBody

try {
    $result = $apiInstance->permissionsBulkCheck($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PermissionApi->permissionsBulkCheck: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\BulkCheckBody**](../Model/BulkCheckBody.md)|  | |

### Return type

[**\Permify\Model\PermissionBulkCheckResponse**](../Model/PermissionBulkCheckResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `permissionsCheck()`

```php
permissionsCheck($tenant_id, $body): \Permify\Model\PermissionCheckResponse
```

check api

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\PermissionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\CheckBody(); // \Permify\Model\CheckBody

try {
    $result = $apiInstance->permissionsCheck($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PermissionApi->permissionsCheck: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\CheckBody**](../Model/CheckBody.md)|  | |

### Return type

[**\Permify\Model\PermissionCheckResponse**](../Model/PermissionCheckResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `permissionsExpand()`

```php
permissionsExpand($tenant_id, $body): \Permify\Model\PermissionExpandResponse
```

expand api

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\PermissionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\PermissionExpandBody(); // \Permify\Model\PermissionExpandBody

try {
    $result = $apiInstance->permissionsExpand($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PermissionApi->permissionsExpand: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\PermissionExpandBody**](../Model/PermissionExpandBody.md)|  | |

### Return type

[**\Permify\Model\PermissionExpandResponse**](../Model/PermissionExpandResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `permissionsLookupEntity()`

```php
permissionsLookupEntity($tenant_id, $body): \Permify\Model\PermissionLookupEntityResponse
```

lookup entity

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\PermissionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\LookupEntityBody(); // \Permify\Model\LookupEntityBody

try {
    $result = $apiInstance->permissionsLookupEntity($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PermissionApi->permissionsLookupEntity: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\LookupEntityBody**](../Model/LookupEntityBody.md)|  | |

### Return type

[**\Permify\Model\PermissionLookupEntityResponse**](../Model/PermissionLookupEntityResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `permissionsLookupEntityStream()`

```php
permissionsLookupEntityStream($tenant_id, $body): \Permify\Model\StreamResultOfPermissionLookupEntityStreamResponse
```

lookup entity stream

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\PermissionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\LookupEntityStreamBody(); // \Permify\Model\LookupEntityStreamBody

try {
    $result = $apiInstance->permissionsLookupEntityStream($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PermissionApi->permissionsLookupEntityStream: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\LookupEntityStreamBody**](../Model/LookupEntityStreamBody.md)|  | |

### Return type

[**\Permify\Model\StreamResultOfPermissionLookupEntityStreamResponse**](../Model/StreamResultOfPermissionLookupEntityStreamResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `permissionsLookupSubject()`

```php
permissionsLookupSubject($tenant_id, $body): \Permify\Model\PermissionLookupSubjectResponse
```

lookup-subject

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\PermissionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\LookupSubjectBody(); // \Permify\Model\LookupSubjectBody

try {
    $result = $apiInstance->permissionsLookupSubject($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PermissionApi->permissionsLookupSubject: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\LookupSubjectBody**](../Model/LookupSubjectBody.md)|  | |

### Return type

[**\Permify\Model\PermissionLookupSubjectResponse**](../Model/PermissionLookupSubjectResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `permissionsSubjectPermission()`

```php
permissionsSubjectPermission($tenant_id, $body): \Permify\Model\PermissionSubjectPermissionResponse
```

subject permission

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\PermissionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\SubjectPermissionBody(); // \Permify\Model\SubjectPermissionBody

try {
    $result = $apiInstance->permissionsSubjectPermission($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PermissionApi->permissionsSubjectPermission: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\SubjectPermissionBody**](../Model/SubjectPermissionBody.md)|  | |

### Return type

[**\Permify\Model\PermissionSubjectPermissionResponse**](../Model/PermissionSubjectPermissionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
