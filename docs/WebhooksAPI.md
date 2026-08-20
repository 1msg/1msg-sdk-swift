# WebhooksAPI

All URIs are relative to *https://api.1msg.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWebhook**](WebhooksAPI.md#getwebhook) | **GET** /webhook | Get webhook URL
[**setWebhook**](WebhooksAPI.md#setwebhook) | **POST** /webhook | Set webhook URL


# **getWebhook**
```swift
    open class func getWebhook(token: String, completion: @escaping (_ data: GetWebhook200Response?, _ error: Error?) -> Void)
```

Get webhook URL

Returns the configured client webhook URL for this channel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization

// Get webhook URL
WebhooksAPI.getWebhook(token: token) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String** | JWT token or API key for authorization | 

### Return type

[**GetWebhook200Response**](GetWebhook200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setWebhook**
```swift
    open class func setWebhook(token: String, getWebhook200Response: GetWebhook200Response? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Set webhook URL

Configure the client webhook URL for inbound events.  WhatsApp **Calling** events (`field=calls`) are forwarded as passthrough payloads with `type: \"calls\"` and `instanceId` (connect / status / terminate). Call permission replies arrive on the normal messages path (`call_permission_reply`). Details: **Calling** tag. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let getWebhook200Response = getWebhook_200_response(webhookUrl: "webhookUrl_example") // GetWebhook200Response |  (optional)

// Set webhook URL
WebhooksAPI.setWebhook(token: token, getWebhook200Response: getWebhook200Response) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String** | JWT token or API key for authorization | 
 **getWebhook200Response** | [**GetWebhook200Response**](GetWebhook200Response.md) |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

