# TemplatesAPI

All URIs are relative to *https://api.1msg.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTemplate**](TemplatesAPI.md#addtemplate) | **POST** /addTemplate | Create message template
[**listTemplates**](TemplatesAPI.md#listtemplates) | **GET** /templates | Get templates list
[**removeTemplate**](TemplatesAPI.md#removetemplate) | **POST** /removeTemplate | Remove message template
[**sendTemplate**](TemplatesAPI.md#sendtemplate) | **POST** /sendTemplate | Send Template Message


# **addTemplate**
```swift
    open class func addTemplate(token: String, addTemplateRequest: AddTemplateRequest? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Create message template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let addTemplateRequest = addTemplate_request(name: "name_example", category: "category_example", language: "language_example", components: ["TODO"]) // AddTemplateRequest |  (optional)

// Create message template
TemplatesAPI.addTemplate(token: token, addTemplateRequest: addTemplateRequest) { (response, error) in
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
 **addTemplateRequest** | [**AddTemplateRequest**](AddTemplateRequest.md) |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTemplates**
```swift
    open class func listTemplates(token: String, completion: @escaping (_ data: ListTemplates200Response?, _ error: Error?) -> Void)
```

Get templates list

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization

// Get templates list
TemplatesAPI.listTemplates(token: token) { (response, error) in
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

[**ListTemplates200Response**](ListTemplates200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTemplate**
```swift
    open class func removeTemplate(token: String, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Remove message template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

// Remove message template
TemplatesAPI.removeTemplate(token: token, requestBody: requestBody) { (response, error) in
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

# **sendTemplate**
```swift
    open class func sendTemplate(token: String, sendTemplateRequest: SendTemplateRequest? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Send Template Message

Send a WhatsApp template message (works outside the 24-hour session window).  Supported `params` button `sub_type` values include: `url`, `quick_reply`, `copy_code` / `coupon_code`, `catalog`, `flow`, `limited_time_offer`, and **`order_details`** (WhatsApp Payments **India only** — requires an approved Utility template with an ORDER_DETAILS button).  For India order/invoice payments outside 24h, include a button component:  ```json {   \"type\": \"button\",   \"sub_type\": \"order_details\",   \"index\": 0,   \"parameters\": [{     \"type\": \"action\",     \"action\": { \"order_details\": { \"reference_id\": \"...\", \"currency\": \"INR\", \"order\": {} } }   }] } ```  Convenience wrapper with structured fields: `POST /sendOrderDetails`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let sendTemplateRequest = sendTemplate_request(template: "template_example", language: sendTemplate_request_language(policy: "policy_example", code: "code_example"), namespace: "namespace_example", params: [123], phone: "phone_example", useMMlite: false, messageActivitySharing: false, messageSendTtlSeconds: 123) // SendTemplateRequest |  (optional)

// Send Template Message
TemplatesAPI.sendTemplate(token: token, sendTemplateRequest: sendTemplateRequest) { (response, error) in
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
 **sendTemplateRequest** | [**SendTemplateRequest**](SendTemplateRequest.md) |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

