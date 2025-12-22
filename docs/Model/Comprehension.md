# # Comprehension

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iter_var** | **string** | The name of the first iteration variable. When the iter_range is a list, this variable is the list element. When the iter_range is a map, this variable is the map entry key. | [optional]
**iter_var2** | **string** | The name of the second iteration variable, empty if not set. When the iter_range is a list, this variable is the integer index. When the iter_range is a map, this variable is the map entry value. This field is only set for comprehension v2 macros. | [optional]
**iter_range** | [**\Permify\Model\Expr**](Expr.md) |  | [optional]
**accu_var** | **string** | The name of the variable used for accumulation of the result. | [optional]
**accu_init** | [**\Permify\Model\Expr**](Expr.md) |  | [optional]
**loop_condition** | [**\Permify\Model\Expr**](Expr.md) |  | [optional]
**loop_step** | [**\Permify\Model\Expr**](Expr.md) |  | [optional]
**result** | [**\Permify\Model\Expr**](Expr.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
