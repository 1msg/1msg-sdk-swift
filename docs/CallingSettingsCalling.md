# CallingSettingsCalling

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | Enable or disable Calling API on this number | [optional] 
**callIconVisibility** | **String** | Controls call icon visibility in the WhatsApp client | [optional] 
**callbackPermissionStatus** | **String** | When ENABLED, a user who calls your business automatically grants call permission for business-initiated callbacks (subject to Meta rules).  | [optional] 
**srtpKeyExchangeProtocol** | **String** | SRTP key exchange. DTLS is default/recommended. SDES is only valid when SIP signaling is enabled.  | [optional] 
**callHours** | [**CallingSettingsCallingCallHours**](CallingSettingsCallingCallHours.md) |  | [optional] 
**sip** | [**CallingSettingsCallingSip**](CallingSettingsCallingSip.md) |  | [optional] 
**video** | [**CallingSettingsCallingVideo**](CallingSettingsCallingVideo.md) |  | [optional] 
**audio** | [**CallingSettingsCallingAudio**](CallingSettingsCallingAudio.md) |  | [optional] 
**restrictions** | **[String: AnyCodable]** | Calling restrictions (response-only) | [optional] 
**ipAddresses** | **[String: AnyCodable]** | Meta media IP ranges (response-only) | [optional] 
**callIcons** | **[String: AnyCodable]** | Call icon country restrictions (response-only) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


