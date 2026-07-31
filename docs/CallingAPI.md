# CallingAPI

All URIs are relative to *https://api.1msg.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCallingSettings**](CallingAPI.md#getcallingsettings) | **GET** /callingSettings | Get calling settings
[**initiateCall**](CallingAPI.md#initiatecall) | **POST** /initiateCall | Initiate WhatsApp call
[**updateCallingSettings**](CallingAPI.md#updatecallingsettings) | **POST** /callingSettings | Update calling settings


# **getCallingSettings**
```swift
    open class func getCallingSettings(token: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Get calling settings

WhatsApp Calling API settings (beta). Requires Meta Calling enablement on the WABA. Not production-complete — paths and webhook field names may change. Trial/subscription-limited channels are blocked. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization

// Get calling settings
CallingAPI.getCallingSettings(token: token) { (response, error) in
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

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiateCall**
```swift
    open class func initiateCall(token: String, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Initiate WhatsApp call

Outbound Calling API (beta). Requires Meta Calling enablement and product consent. Not production-complete — verify on stage before relying on this in production. Trial/subscription-limited channels are blocked. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

// Initiate WhatsApp call
CallingAPI.initiateCall(token: token, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCallingSettings**
```swift
    open class func updateCallingSettings(token: String, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update calling settings

Update WhatsApp Calling API settings (beta). Requires Meta Calling enablement. Trial/subscription-limited channels are blocked. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

// Update calling settings
CallingAPI.updateCallingSettings(token: token, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

