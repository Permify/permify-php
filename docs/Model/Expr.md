# # Expr

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Required. An id assigned to this node by the parser which is unique in a given expression tree. This is used to associate type information and other attributes to a node in the parse tree. | [optional]
**const_expr** | [**\Permify\Model\Constant**](Constant.md) |  | [optional]
**ident_expr** | [**\Permify\Model\Ident**](Ident.md) |  | [optional]
**select_expr** | [**\Permify\Model\Select**](Select.md) |  | [optional]
**call_expr** | [**\Permify\Model\ExprCall**](ExprCall.md) |  | [optional]
**list_expr** | [**\Permify\Model\CreateList**](CreateList.md) |  | [optional]
**struct_expr** | [**\Permify\Model\CreateStruct**](CreateStruct.md) |  | [optional]
**comprehension_expr** | [**\Permify\Model\Comprehension**](Comprehension.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
