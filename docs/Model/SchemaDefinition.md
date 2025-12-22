# # SchemaDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_definitions** | [**array<string,\Permify\Model\EntityDefinition>**](EntityDefinition.md) | Map of entity definitions. The key is the entity name, and the value is the corresponding EntityDefinition. | [optional]
**rule_definitions** | [**array<string,\Permify\Model\RuleDefinition>**](RuleDefinition.md) | Map of rule definitions. The key is the rule name, and the value is the corresponding RuleDefinition. | [optional]
**references** | [**array<string,\Permify\Model\SchemaDefinitionReference>**](SchemaDefinitionReference.md) | Map of references to signify whether a string refers to an entity or a rule. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
