# # ReadRelationshipsBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metadata** | [**\Permify\Model\RelationshipReadRequestMetadata**](RelationshipReadRequestMetadata.md) |  | [optional]
**filter** | [**\Permify\Model\TupleFilter**](TupleFilter.md) |  | [optional]
**page_size** | **int** | page_size specifies the number of results to return in a single page. If more results are available, a continuous_token is included in the response. | [optional]
**continuous_token** | **string** | continuous_token is used in case of paginated reads to get the next page of results. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
