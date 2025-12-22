# # EntityDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The name of the entity, which follows a specific string pattern and has a maximum byte size. | [optional]
**relations** | [**array<string,\Permify\Model\RelationDefinition>**](RelationDefinition.md) | Map of relation definitions within this entity. The key is the relation name, and the value is the RelationDefinition. | [optional]
**permissions** | [**array<string,\Permify\Model\PermissionDefinition>**](PermissionDefinition.md) | Map of permission definitions within this entity. The key is the permission name, and the value is the PermissionDefinition. | [optional]
**attributes** | [**array<string,\Permify\Model\AttributeDefinition>**](AttributeDefinition.md) | Map of attribute definitions within this entity. The key is the attribute name, and the value is the AttributeDefinition. | [optional]
**references** | [**array<string,\Permify\Model\EntityDefinitionReference>**](EntityDefinitionReference.md) | Map of references indicating whether a string pertains to a relation, permission, or attribute. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
