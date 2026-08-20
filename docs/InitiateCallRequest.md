# InitiateCallRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messagingProduct** | **String** | Must be &#x60;whatsapp&#x60; | 
**action** | **String** | Call control action | 
**callId** | **String** | WhatsApp call id from the inbound/outbound calls webhook (&#x60;calls[].id&#x60;). Required for &#x60;pre_accept&#x60;, &#x60;accept&#x60;, &#x60;reject&#x60;, &#x60;terminate&#x60;.  | [optional] 
**to** | **String** | Recipient WhatsApp user phone (digits, country code, no +). Required for outbound &#x60;connect&#x60;.  | [optional] 
**bizOpaqueCallbackData** | **String** | Optional opaque string echoed on later call webhooks for correlation | [optional] 
**session** | [**InitiateCallRequestSession**](InitiateCallRequestSession.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


