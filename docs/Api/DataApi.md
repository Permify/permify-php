# Permify\DataApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**bundleRun()**](DataApi.md#bundleRun) | **POST** /v1/tenants/{tenant_id}/data/run-bundle | run bundle |
| [**dataAttributesRead()**](DataApi.md#dataAttributesRead) | **POST** /v1/tenants/{tenant_id}/data/attributes/read | read attributes |
| [**dataDelete()**](DataApi.md#dataDelete) | **POST** /v1/tenants/{tenant_id}/data/delete | delete data |
| [**dataRelationshipsRead()**](DataApi.md#dataRelationshipsRead) | **POST** /v1/tenants/{tenant_id}/data/relationships/read | read relationships |
| [**dataWrite()**](DataApi.md#dataWrite) | **POST** /v1/tenants/{tenant_id}/data/write | write data |
| [**relationshipsDelete()**](DataApi.md#relationshipsDelete) | **POST** /v1/tenants/{tenant_id}/relationships/delete | delete relationships |
| [**relationshipsWrite()**](DataApi.md#relationshipsWrite) | **POST** /v1/tenants/{tenant_id}/relationships/write | write relationships |


## `bundleRun()`

```php
bundleRun($tenant_id, $body): \Permify\Model\BundleRunResponse
```

run bundle

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\DataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\RunBundleBody(); // \Permify\Model\RunBundleBody

try {
    $result = $apiInstance->bundleRun($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DataApi->bundleRun: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\RunBundleBody**](../Model/RunBundleBody.md)|  | |

### Return type

[**\Permify\Model\BundleRunResponse**](../Model/BundleRunResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dataAttributesRead()`

```php
dataAttributesRead($tenant_id, $body): \Permify\Model\AttributeReadResponse
```

read attributes

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\DataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\ReadAttributesBody(); // \Permify\Model\ReadAttributesBody

try {
    $result = $apiInstance->dataAttributesRead($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DataApi->dataAttributesRead: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\ReadAttributesBody**](../Model/ReadAttributesBody.md)|  | |

### Return type

[**\Permify\Model\AttributeReadResponse**](../Model/AttributeReadResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dataDelete()`

```php
dataDelete($tenant_id, $body): \Permify\Model\DataDeleteResponse
```

delete data

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\DataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\DataDeleteBody(); // \Permify\Model\DataDeleteBody

try {
    $result = $apiInstance->dataDelete($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DataApi->dataDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\DataDeleteBody**](../Model/DataDeleteBody.md)|  | |

### Return type

[**\Permify\Model\DataDeleteResponse**](../Model/DataDeleteResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dataRelationshipsRead()`

```php
dataRelationshipsRead($tenant_id, $body): \Permify\Model\RelationshipReadResponse
```

read relationships

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\DataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\ReadRelationshipsBody(); // \Permify\Model\ReadRelationshipsBody

try {
    $result = $apiInstance->dataRelationshipsRead($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DataApi->dataRelationshipsRead: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\ReadRelationshipsBody**](../Model/ReadRelationshipsBody.md)|  | |

### Return type

[**\Permify\Model\RelationshipReadResponse**](../Model/RelationshipReadResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dataWrite()`

```php
dataWrite($tenant_id, $body): \Permify\Model\DataWriteResponse
```

write data

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\DataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\DataWriteBody(); // \Permify\Model\DataWriteBody

try {
    $result = $apiInstance->dataWrite($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DataApi->dataWrite: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\DataWriteBody**](../Model/DataWriteBody.md)|  | |

### Return type

[**\Permify\Model\DataWriteResponse**](../Model/DataWriteResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `relationshipsDelete()`

```php
relationshipsDelete($tenant_id, $body): \Permify\Model\RelationshipDeleteResponse
```

delete relationships

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\DataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\DeleteRelationshipsBody(); // \Permify\Model\DeleteRelationshipsBody

try {
    $result = $apiInstance->relationshipsDelete($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DataApi->relationshipsDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\DeleteRelationshipsBody**](../Model/DeleteRelationshipsBody.md)|  | |

### Return type

[**\Permify\Model\RelationshipDeleteResponse**](../Model/RelationshipDeleteResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `relationshipsWrite()`

```php
relationshipsWrite($tenant_id, $body): \Permify\Model\RelationshipWriteResponse
```

write relationships

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\DataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\WriteRelationshipsBody(); // \Permify\Model\WriteRelationshipsBody

try {
    $result = $apiInstance->relationshipsWrite($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DataApi->relationshipsWrite: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\WriteRelationshipsBody**](../Model/WriteRelationshipsBody.md)|  | |

### Return type

[**\Permify\Model\RelationshipWriteResponse**](../Model/RelationshipWriteResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
