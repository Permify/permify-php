# Permify\SchemaApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**schemasList()**](SchemaApi.md#schemasList) | **POST** /v1/tenants/{tenant_id}/schemas/list | list schema |
| [**schemasPartialWrite()**](SchemaApi.md#schemasPartialWrite) | **PATCH** /v1/tenants/{tenant_id}/schemas/partial-write | partially update your authorization model |
| [**schemasRead()**](SchemaApi.md#schemasRead) | **POST** /v1/tenants/{tenant_id}/schemas/read | read schema |
| [**schemasWrite()**](SchemaApi.md#schemasWrite) | **POST** /v1/tenants/{tenant_id}/schemas/write | write schema |


## `schemasList()`

```php
schemasList($tenant_id, $body): \Permify\Model\SchemaListResponse
```

list schema

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\SchemaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\SchemaListBody(); // \Permify\Model\SchemaListBody

try {
    $result = $apiInstance->schemasList($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SchemaApi->schemasList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\SchemaListBody**](../Model/SchemaListBody.md)|  | |

### Return type

[**\Permify\Model\SchemaListResponse**](../Model/SchemaListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `schemasPartialWrite()`

```php
schemasPartialWrite($tenant_id, $body): \Permify\Model\SchemaPartialWriteResponse
```

partially update your authorization model

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\SchemaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | tenant_id is a string that identifies the tenant. It must match the pattern \"[a-zA-Z0-9-,]+\", be a maximum of 64 bytes, and must not be empty.
$body = new \Permify\Model\PartialWriteBody(); // \Permify\Model\PartialWriteBody

try {
    $result = $apiInstance->schemasPartialWrite($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SchemaApi->schemasPartialWrite: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| tenant_id is a string that identifies the tenant. It must match the pattern \&quot;[a-zA-Z0-9-,]+\&quot;, be a maximum of 64 bytes, and must not be empty. | |
| **body** | [**\Permify\Model\PartialWriteBody**](../Model/PartialWriteBody.md)|  | |

### Return type

[**\Permify\Model\SchemaPartialWriteResponse**](../Model/SchemaPartialWriteResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `schemasRead()`

```php
schemasRead($tenant_id, $body): \Permify\Model\SchemaReadResponse
```

read schema

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\SchemaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\SchemaReadBody(); // \Permify\Model\SchemaReadBody

try {
    $result = $apiInstance->schemasRead($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SchemaApi->schemasRead: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\SchemaReadBody**](../Model/SchemaReadBody.md)|  | |

### Return type

[**\Permify\Model\SchemaReadResponse**](../Model/SchemaReadResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `schemasWrite()`

```php
schemasWrite($tenant_id, $body): \Permify\Model\SchemaWriteResponse
```

write schema

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\SchemaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\SchemaWriteBody(); // \Permify\Model\SchemaWriteBody

try {
    $result = $apiInstance->schemasWrite($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SchemaApi->schemasWrite: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\SchemaWriteBody**](../Model/SchemaWriteBody.md)|  | |

### Return type

[**\Permify\Model\SchemaWriteResponse**](../Model/SchemaWriteResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
