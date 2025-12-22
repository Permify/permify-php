# # V1alpha1Reference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The fully qualified name of the declaration. | [optional]
**overload_id** | **string[]** | For references to functions, this is a list of &#x60;Overload.overload_id&#x60; values which match according to typing rules.  If the list has more than one element, overload resolution among the presented candidates must happen at runtime because of dynamic types. The type checker attempts to narrow down this list as much as possible.  Empty if this is not a reference to a [Decl.FunctionDecl][google.api.expr.v1alpha1.Decl.FunctionDecl]. | [optional]
**value** | [**\Permify\Model\Constant**](Constant.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
