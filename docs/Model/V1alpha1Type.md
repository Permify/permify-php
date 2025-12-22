# # V1alpha1Type

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dyn** | **object** | Dynamic type. | [optional]
**null** | **string** | Null value. | [optional]
**primitive** | [**\Permify\Model\PrimitiveType**](PrimitiveType.md) |  | [optional]
**wrapper** | [**\Permify\Model\PrimitiveType**](PrimitiveType.md) |  | [optional]
**well_known** | [**\Permify\Model\WellKnownType**](WellKnownType.md) |  | [optional]
**list_type** | [**\Permify\Model\ListType**](ListType.md) |  | [optional]
**map_type** | [**\Permify\Model\MapType**](MapType.md) |  | [optional]
**function** | [**\Permify\Model\FunctionType**](FunctionType.md) |  | [optional]
**message_type** | **string** | Protocol buffer message type.  The &#x60;message_type&#x60; string specifies the qualified message type name. For example, &#x60;google.plus.Profile&#x60;. | [optional]
**type_param** | **string** | Type param type.  The &#x60;type_param&#x60; string specifies the type parameter name, e.g. &#x60;list&lt;E&gt;&#x60; would be a &#x60;list_type&#x60; whose element type was a &#x60;type_param&#x60; type named &#x60;E&#x60;. | [optional]
**type** | [**\Permify\Model\V1alpha1Type**](V1alpha1Type.md) |  | [optional]
**error** | **object** | Error type.  During type-checking if an expression is an error, its type is propagated as the &#x60;ERROR&#x60; type. This permits the type-checker to discover other errors present in the expression. | [optional]
**abstract_type** | [**\Permify\Model\AbstractType**](AbstractType.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
