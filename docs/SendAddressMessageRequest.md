# SendAddressMessageRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone** | **Int** | Recipient phone (E.164 digits, no +). Must match country. | [optional] 
**chatId** | **String** |  | [optional] 
**body** | **String** | Body text shown with the address request | 
**country** | **String** | Address form country. Defaults to IN if omitted. | [optional] 
**values** | **[String: AnyCodable]** | Optional prefilled address fields | [optional] 
**savedAddresses** | [[String: AnyCodable]] | Optional previously saved addresses for the user | [optional] 
**validationErrors** | **[String: AnyCodable]** | Optional field validation errors when re-prompting | [optional] 
**quotedMsgId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


