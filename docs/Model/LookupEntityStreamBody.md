# # LookupEntityStreamBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metadata** | [**\Permify\Model\PermissionLookupEntityRequestMetadata**](PermissionLookupEntityRequestMetadata.md) |  | [optional]
**entity_type** | **string** | Type of the entity to lookup, required, must start with a letter and can include alphanumeric and underscore, max 64 bytes. | [optional]
**permission** | **string** | Name of the permission to check, required, must start with a letter and can include alphanumeric and underscore, max 64 bytes. | [optional]
**subject** | [**\Permify\Model\Subject**](Subject.md) |  | [optional]
**context** | [**\Permify\Model\Context**](Context.md) |  | [optional]
**scope** | [**array<string,\Permify\Model\StringArrayValue>**](StringArrayValue.md) | Scope: A map that associates entity types with lists of identifiers. Each entry helps filter requests by specifying which entities are relevant to the operation. | [optional]
**page_size** | **int** | page_size is the number of entities to be returned in the response. The value should be between 1 and 100. | [optional]
**continuous_token** | **string** | continuous_token is an optional parameter used for pagination. It should be the value received in the previous response. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
