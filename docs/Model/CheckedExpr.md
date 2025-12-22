# # CheckedExpr

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference_map** | [**array<string,\Permify\Model\V1alpha1Reference>**](V1alpha1Reference.md) | A map from expression ids to resolved references.  The following entries are in this table:  - An Ident or Select expression is represented here if it resolves to a   declaration. For instance, if &#x60;a.b.c&#x60; is represented by   &#x60;select(select(id(a), b), c)&#x60;, and &#x60;a.b&#x60; resolves to a declaration,   while &#x60;c&#x60; is a field selection, then the reference is attached to the   nested select expression (but not to the id or or the outer select).   In turn, if &#x60;a&#x60; resolves to a declaration and &#x60;b.c&#x60; are field selections,   the reference is attached to the ident expression. - Every Call expression has an entry here, identifying the function being   called. - Every CreateStruct expression for a message has an entry, identifying   the message. | [optional]
**type_map** | [**array<string,\Permify\Model\V1alpha1Type>**](V1alpha1Type.md) | A map from expression ids to types.  Every expression node which has a type different than DYN has a mapping here. If an expression has type DYN, it is omitted from this map to save space. | [optional]
**source_info** | [**\Permify\Model\SourceInfo**](SourceInfo.md) |  | [optional]
**expr_version** | **string** | The expr version indicates the major / minor version number of the &#x60;expr&#x60; representation.  The most common reason for a version change will be to indicate to the CEL runtimes that transformations have been performed on the expr during static analysis. In some cases, this will save the runtime the work of applying the same or similar transformations prior to evaluation. | [optional]
**expr** | [**\Permify\Model\Expr**](Expr.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
