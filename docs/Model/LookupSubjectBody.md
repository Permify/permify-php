# # LookupSubjectBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metadata** | [**\Permify\Model\PermissionLookupSubjectRequestMetadata**](PermissionLookupSubjectRequestMetadata.md) |  | [optional]
**entity** | [**\Permify\Model\Entity**](Entity.md) |  | [optional]
**permission** | **string** | Permission to be checked, can be a permission or relation. Required, and must match the pattern \&quot;^([a-zA-Z][a-zA-Z0-9_]{1,62}[a-zA-Z0-9])$\&quot;, max 64 bytes. | [optional]
**subject_reference** | [**\Permify\Model\RelationReference**](RelationReference.md) |  | [optional]
**context** | [**\Permify\Model\Context**](Context.md) |  | [optional]
**arguments** | [**\Permify\Model\Argument[]**](Argument.md) | Additional arguments associated with this request. | [optional]
**page_size** | **int** | page_size is the number of subjects to be returned in the response. The value should be between 1 and 100. | [optional]
**continuous_token** | **string** | continuous_token is an optional parameter used for pagination. It should be the value received in the previous response. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
