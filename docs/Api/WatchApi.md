# Permify\WatchApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**watchWatch()**](WatchApi.md#watchWatch) | **POST** /v1/tenants/{tenant_id}/watch | watch changes |


## `watchWatch()`

```php
watchWatch($tenant_id, $body): \Permify\Model\StreamResultOfWatchResponse
```

watch changes

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Permify\Api\WatchApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\WatchBody(); // \Permify\Model\WatchBody

try {
    $result = $apiInstance->watchWatch($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WatchApi->watchWatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **tenant_id** | **string**| Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant &lt;code&gt;t1&lt;/code&gt; for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes. | |
| **body** | [**\Permify\Model\WatchBody**](../Model/WatchBody.md)|  | |

### Return type

[**\Permify\Model\StreamResultOfWatchResponse**](../Model/StreamResultOfWatchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
