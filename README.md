# permify-demo

Permify is an open source authorization service for creating fine-grained and scalable authorization systems.

For more information, please visit [https://github.com/Permify/permify/issues](https://github.com/Permify/permify/issues).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/permify-demo/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');




$apiInstance = new Permify\Api\BundleApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$tenant_id = 'tenant_id_example'; // string | Identifier of the tenant, if you are not using multi-tenancy (have only one tenant) use pre-inserted tenant <code>t1</code> for this field. Required, and must match the pattern \\“[a-zA-Z0-9-,]+\\“, max 64 bytes.
$body = new \Permify\Model\BundleDeleteBody(); // \Permify\Model\BundleDeleteBody

try {
    $result = $apiInstance->bundleDelete($tenant_id, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BundleApi->bundleDelete: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BundleApi* | [**bundleDelete**](docs/Api/BundleApi.md#bundledelete) | **POST** /v1/tenants/{tenant_id}/bundle/delete | delete bundle
*BundleApi* | [**bundleRead**](docs/Api/BundleApi.md#bundleread) | **POST** /v1/tenants/{tenant_id}/bundle/read | read bundle
*BundleApi* | [**bundleWrite**](docs/Api/BundleApi.md#bundlewrite) | **POST** /v1/tenants/{tenant_id}/bundle/write | write bundle
*DataApi* | [**bundleRun**](docs/Api/DataApi.md#bundlerun) | **POST** /v1/tenants/{tenant_id}/data/run-bundle | run bundle
*DataApi* | [**dataAttributesRead**](docs/Api/DataApi.md#dataattributesread) | **POST** /v1/tenants/{tenant_id}/data/attributes/read | read attributes
*DataApi* | [**dataDelete**](docs/Api/DataApi.md#datadelete) | **POST** /v1/tenants/{tenant_id}/data/delete | delete data
*DataApi* | [**dataRelationshipsRead**](docs/Api/DataApi.md#datarelationshipsread) | **POST** /v1/tenants/{tenant_id}/data/relationships/read | read relationships
*DataApi* | [**dataWrite**](docs/Api/DataApi.md#datawrite) | **POST** /v1/tenants/{tenant_id}/data/write | write data
*DataApi* | [**relationshipsDelete**](docs/Api/DataApi.md#relationshipsdelete) | **POST** /v1/tenants/{tenant_id}/relationships/delete | delete relationships
*DataApi* | [**relationshipsWrite**](docs/Api/DataApi.md#relationshipswrite) | **POST** /v1/tenants/{tenant_id}/relationships/write | write relationships
*PermissionApi* | [**permissionsBulkCheck**](docs/Api/PermissionApi.md#permissionsbulkcheck) | **POST** /v1/tenants/{tenant_id}/permissions/bulk-check | bulk check api
*PermissionApi* | [**permissionsCheck**](docs/Api/PermissionApi.md#permissionscheck) | **POST** /v1/tenants/{tenant_id}/permissions/check | check api
*PermissionApi* | [**permissionsExpand**](docs/Api/PermissionApi.md#permissionsexpand) | **POST** /v1/tenants/{tenant_id}/permissions/expand | expand api
*PermissionApi* | [**permissionsLookupEntity**](docs/Api/PermissionApi.md#permissionslookupentity) | **POST** /v1/tenants/{tenant_id}/permissions/lookup-entity | lookup entity
*PermissionApi* | [**permissionsLookupEntityStream**](docs/Api/PermissionApi.md#permissionslookupentitystream) | **POST** /v1/tenants/{tenant_id}/permissions/lookup-entity-stream | lookup entity stream
*PermissionApi* | [**permissionsLookupSubject**](docs/Api/PermissionApi.md#permissionslookupsubject) | **POST** /v1/tenants/{tenant_id}/permissions/lookup-subject | lookup-subject
*PermissionApi* | [**permissionsSubjectPermission**](docs/Api/PermissionApi.md#permissionssubjectpermission) | **POST** /v1/tenants/{tenant_id}/permissions/subject-permission | subject permission
*SchemaApi* | [**schemasList**](docs/Api/SchemaApi.md#schemaslist) | **POST** /v1/tenants/{tenant_id}/schemas/list | list schema
*SchemaApi* | [**schemasPartialWrite**](docs/Api/SchemaApi.md#schemaspartialwrite) | **PATCH** /v1/tenants/{tenant_id}/schemas/partial-write | partially update your authorization model
*SchemaApi* | [**schemasRead**](docs/Api/SchemaApi.md#schemasread) | **POST** /v1/tenants/{tenant_id}/schemas/read | read schema
*SchemaApi* | [**schemasWrite**](docs/Api/SchemaApi.md#schemaswrite) | **POST** /v1/tenants/{tenant_id}/schemas/write | write schema
*TenancyApi* | [**tenantsCreate**](docs/Api/TenancyApi.md#tenantscreate) | **POST** /v1/tenants/create | create tenant
*TenancyApi* | [**tenantsDelete**](docs/Api/TenancyApi.md#tenantsdelete) | **DELETE** /v1/tenants/{id} | delete tenant
*TenancyApi* | [**tenantsList**](docs/Api/TenancyApi.md#tenantslist) | **POST** /v1/tenants/list | list tenants
*WatchApi* | [**watchWatch**](docs/Api/WatchApi.md#watchwatch) | **POST** /v1/tenants/{tenant_id}/watch | watch changes

## Models

- [AbstractType](docs/Model/AbstractType.md)
- [Any](docs/Model/Any.md)
- [Argument](docs/Model/Argument.md)
- [Attribute](docs/Model/Attribute.md)
- [AttributeDefinition](docs/Model/AttributeDefinition.md)
- [AttributeFilter](docs/Model/AttributeFilter.md)
- [AttributeReadRequestMetadata](docs/Model/AttributeReadRequestMetadata.md)
- [AttributeReadResponse](docs/Model/AttributeReadResponse.md)
- [AttributeType](docs/Model/AttributeType.md)
- [BulkCheckBody](docs/Model/BulkCheckBody.md)
- [BundleDeleteBody](docs/Model/BundleDeleteBody.md)
- [BundleDeleteResponse](docs/Model/BundleDeleteResponse.md)
- [BundleReadBody](docs/Model/BundleReadBody.md)
- [BundleReadResponse](docs/Model/BundleReadResponse.md)
- [BundleRunResponse](docs/Model/BundleRunResponse.md)
- [BundleWriteBody](docs/Model/BundleWriteBody.md)
- [BundleWriteResponse](docs/Model/BundleWriteResponse.md)
- [CheckBody](docs/Model/CheckBody.md)
- [CheckResult](docs/Model/CheckResult.md)
- [CheckedExpr](docs/Model/CheckedExpr.md)
- [Child](docs/Model/Child.md)
- [Component](docs/Model/Component.md)
- [Comprehension](docs/Model/Comprehension.md)
- [ComputedAttribute](docs/Model/ComputedAttribute.md)
- [ComputedUserSet](docs/Model/ComputedUserSet.md)
- [Constant](docs/Model/Constant.md)
- [Context](docs/Model/Context.md)
- [CreateList](docs/Model/CreateList.md)
- [CreateStruct](docs/Model/CreateStruct.md)
- [DataBundle](docs/Model/DataBundle.md)
- [DataChange](docs/Model/DataChange.md)
- [DataChangeOperation](docs/Model/DataChangeOperation.md)
- [DataChanges](docs/Model/DataChanges.md)
- [DataDeleteBody](docs/Model/DataDeleteBody.md)
- [DataDeleteResponse](docs/Model/DataDeleteResponse.md)
- [DataWriteBody](docs/Model/DataWriteBody.md)
- [DataWriteRequestMetadata](docs/Model/DataWriteRequestMetadata.md)
- [DataWriteResponse](docs/Model/DataWriteResponse.md)
- [DeleteRelationshipsBody](docs/Model/DeleteRelationshipsBody.md)
- [Entity](docs/Model/Entity.md)
- [EntityDefinition](docs/Model/EntityDefinition.md)
- [EntityDefinitionReference](docs/Model/EntityDefinitionReference.md)
- [EntityFilter](docs/Model/EntityFilter.md)
- [Entry](docs/Model/Entry.md)
- [ExpandLeaf](docs/Model/ExpandLeaf.md)
- [ExpandTreeNode](docs/Model/ExpandTreeNode.md)
- [ExpandTreeNodeOperation](docs/Model/ExpandTreeNodeOperation.md)
- [Expr](docs/Model/Expr.md)
- [ExprCall](docs/Model/ExprCall.md)
- [Extension](docs/Model/Extension.md)
- [FunctionType](docs/Model/FunctionType.md)
- [Ident](docs/Model/Ident.md)
- [Leaf](docs/Model/Leaf.md)
- [ListType](docs/Model/ListType.md)
- [LookupEntityBody](docs/Model/LookupEntityBody.md)
- [LookupEntityStreamBody](docs/Model/LookupEntityStreamBody.md)
- [LookupSubjectBody](docs/Model/LookupSubjectBody.md)
- [MapType](docs/Model/MapType.md)
- [PartialWriteBody](docs/Model/PartialWriteBody.md)
- [Partials](docs/Model/Partials.md)
- [PermissionBulkCheckRequestItem](docs/Model/PermissionBulkCheckRequestItem.md)
- [PermissionBulkCheckResponse](docs/Model/PermissionBulkCheckResponse.md)
- [PermissionCheckRequestMetadata](docs/Model/PermissionCheckRequestMetadata.md)
- [PermissionCheckResponse](docs/Model/PermissionCheckResponse.md)
- [PermissionCheckResponseMetadata](docs/Model/PermissionCheckResponseMetadata.md)
- [PermissionDefinition](docs/Model/PermissionDefinition.md)
- [PermissionExpandBody](docs/Model/PermissionExpandBody.md)
- [PermissionExpandRequestMetadata](docs/Model/PermissionExpandRequestMetadata.md)
- [PermissionExpandResponse](docs/Model/PermissionExpandResponse.md)
- [PermissionLookupEntityRequestMetadata](docs/Model/PermissionLookupEntityRequestMetadata.md)
- [PermissionLookupEntityResponse](docs/Model/PermissionLookupEntityResponse.md)
- [PermissionLookupEntityStreamResponse](docs/Model/PermissionLookupEntityStreamResponse.md)
- [PermissionLookupSubjectRequestMetadata](docs/Model/PermissionLookupSubjectRequestMetadata.md)
- [PermissionLookupSubjectResponse](docs/Model/PermissionLookupSubjectResponse.md)
- [PermissionSubjectPermissionRequestMetadata](docs/Model/PermissionSubjectPermissionRequestMetadata.md)
- [PermissionSubjectPermissionResponse](docs/Model/PermissionSubjectPermissionResponse.md)
- [PrimitiveType](docs/Model/PrimitiveType.md)
- [ReadAttributesBody](docs/Model/ReadAttributesBody.md)
- [ReadRelationshipsBody](docs/Model/ReadRelationshipsBody.md)
- [RelationDefinition](docs/Model/RelationDefinition.md)
- [RelationReference](docs/Model/RelationReference.md)
- [RelationshipDeleteResponse](docs/Model/RelationshipDeleteResponse.md)
- [RelationshipReadRequestMetadata](docs/Model/RelationshipReadRequestMetadata.md)
- [RelationshipReadResponse](docs/Model/RelationshipReadResponse.md)
- [RelationshipWriteRequestMetadata](docs/Model/RelationshipWriteRequestMetadata.md)
- [RelationshipWriteResponse](docs/Model/RelationshipWriteResponse.md)
- [Rewrite](docs/Model/Rewrite.md)
- [RewriteOperation](docs/Model/RewriteOperation.md)
- [RuleDefinition](docs/Model/RuleDefinition.md)
- [RunBundleBody](docs/Model/RunBundleBody.md)
- [SchemaDefinition](docs/Model/SchemaDefinition.md)
- [SchemaDefinitionReference](docs/Model/SchemaDefinitionReference.md)
- [SchemaList](docs/Model/SchemaList.md)
- [SchemaListBody](docs/Model/SchemaListBody.md)
- [SchemaListResponse](docs/Model/SchemaListResponse.md)
- [SchemaPartialWriteRequestMetadata](docs/Model/SchemaPartialWriteRequestMetadata.md)
- [SchemaPartialWriteResponse](docs/Model/SchemaPartialWriteResponse.md)
- [SchemaReadBody](docs/Model/SchemaReadBody.md)
- [SchemaReadRequestMetadata](docs/Model/SchemaReadRequestMetadata.md)
- [SchemaReadResponse](docs/Model/SchemaReadResponse.md)
- [SchemaWriteBody](docs/Model/SchemaWriteBody.md)
- [SchemaWriteResponse](docs/Model/SchemaWriteResponse.md)
- [Select](docs/Model/Select.md)
- [SourceInfo](docs/Model/SourceInfo.md)
- [Status](docs/Model/Status.md)
- [StreamResultOfPermissionLookupEntityStreamResponse](docs/Model/StreamResultOfPermissionLookupEntityStreamResponse.md)
- [StreamResultOfWatchResponse](docs/Model/StreamResultOfWatchResponse.md)
- [StringArrayValue](docs/Model/StringArrayValue.md)
- [Subject](docs/Model/Subject.md)
- [SubjectFilter](docs/Model/SubjectFilter.md)
- [SubjectPermissionBody](docs/Model/SubjectPermissionBody.md)
- [Subjects](docs/Model/Subjects.md)
- [Tenant](docs/Model/Tenant.md)
- [TenantCreateRequest](docs/Model/TenantCreateRequest.md)
- [TenantCreateResponse](docs/Model/TenantCreateResponse.md)
- [TenantDeleteResponse](docs/Model/TenantDeleteResponse.md)
- [TenantListRequest](docs/Model/TenantListRequest.md)
- [TenantListResponse](docs/Model/TenantListResponse.md)
- [Tuple](docs/Model/Tuple.md)
- [TupleFilter](docs/Model/TupleFilter.md)
- [TupleSet](docs/Model/TupleSet.md)
- [TupleToUserSet](docs/Model/TupleToUserSet.md)
- [V1Call](docs/Model/V1Call.md)
- [V1Expand](docs/Model/V1Expand.md)
- [V1Operation](docs/Model/V1Operation.md)
- [V1alpha1Reference](docs/Model/V1alpha1Reference.md)
- [V1alpha1Type](docs/Model/V1alpha1Type.md)
- [Values](docs/Model/Values.md)
- [Version](docs/Model/Version.md)
- [WatchBody](docs/Model/WatchBody.md)
- [WatchResponse](docs/Model/WatchResponse.md)
- [WellKnownType](docs/Model/WellKnownType.md)
- [WriteRelationshipsBody](docs/Model/WriteRelationshipsBody.md)

## Authorization

Authentication schemes defined for the API:
### ApiKeyAuth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

hello@permify.co

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `v1.5.4`
    - Package version: `v1.5.4`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
