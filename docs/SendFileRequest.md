# SendFileRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **String** | File source (required unless mediaId is set): - HTTP/HTTPS URL - Base64 data URI  | [optional] 
**filename** | **String** | File name with extension (required with body, not with mediaId) | [optional] 
**mediaId** | **String** | WABA media id from uploadMedia (alternative to body) | [optional] 
**mediaType** | **String** | Required when using mediaId | [optional] 
**voice** | **Bool** | Native WhatsApp voice note (audio/ogg only) | [optional] 
**caption** | **String** |  | [optional] 
**quotedMsgId** | **String** |  | [optional] 
**chatId** | **String** |  | [optional] 
**phone** | **Int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


