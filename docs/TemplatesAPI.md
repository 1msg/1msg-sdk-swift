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
    open class func addTemplate(token: String, addTemplateRequest: AddTemplateRequest? = nil, completion: @escaping (_ data: AddTemplate200Response?, _ error: Error?) -> Void)
```

Create message template

Create a WABA message template (`name`, `category`, `language`, `components`). After create, Meta reviews the template; list it with `GET /templates`.  Authentication OTP templates (`category: AUTHENTICATION`, copy-code / OTP button) can later be sent only to a phone number. Meta does not accept a BSUID recipient for them (error 131062). If the recipient is known only by BSUID — for example they use a username and their phone number is not in your Business Portfolio — that template cannot be sent.  To ask a BSUID user for their phone number, add a `REQUEST_CONTACT_INFO` button on a `UTILITY` or `MARKETING` template. Do not send `text` on that button — WhatsApp sets the label (and rejects a custom one). The button also has no send-time parameters: `POST /sendTemplate` does not take a button component for it. Inside an open 24-hour window, call `POST /sendContactInfo` instead of a template.  When the user shares the number, the inbound webhook is a `contacts` message with `origin: contact_request`. The phone is stored on that BSUID automatically. See `POST /sendContactInfo`.  ```json {   \"name\": \"request_phone\",   \"category\": \"UTILITY\",   \"language\": \"en_US\",   \"components\": [     {       \"type\": \"BODY\",       \"text\": \"Please share your phone number so we can continue.\"     },     {       \"type\": \"BUTTONS\",       \"buttons\": [{ \"type\": \"REQUEST_CONTACT_INFO\" }]     }   ] } ``` 

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

[**AddTemplate200Response**](AddTemplate200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTemplates**
```swift
    open class func listTemplates(token: String, limit: Int? = nil, offset: Int? = nil, sort: Sort_listTemplates? = nil, completion: @escaping (_ data: ListTemplates200Response?, _ error: Error?) -> Void)
```

Get templates list

List message templates. Paginate with `limit` / `offset`; sort by `id`, `name`, or `status`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let limit = 987 // Int |  (optional)
let offset = 987 // Int |  (optional)
let sort = "sort_example" // String | Sort field (`id`, `name`, or `status`) (optional)

// Get templates list
TemplatesAPI.listTemplates(token: token, limit: limit, offset: offset, sort: sort) { (response, error) in
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
 **limit** | **Int** |  | [optional] 
 **offset** | **Int** |  | [optional] 
 **sort** | **String** | Sort field (&#x60;id&#x60;, &#x60;name&#x60;, or &#x60;status&#x60;) | [optional] 

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
    open class func removeTemplate(token: String, removeTemplateRequest: RemoveTemplateRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Remove message template

Delete a message template by `name` (all language versions of that name).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let removeTemplateRequest = removeTemplate_request(name: "name_example") // RemoveTemplateRequest | 

// Remove message template
TemplatesAPI.removeTemplate(token: token, removeTemplateRequest: removeTemplateRequest) { (response, error) in
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
 **removeTemplateRequest** | [**RemoveTemplateRequest**](RemoveTemplateRequest.md) |  | 

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

Send a WhatsApp **template** message (works outside the 24-hour session window).  Use this tool — not `send_message` — when the 24h session is closed.  `params` MUST be Cloud API **component objects**, never a flat list of strings and never the old On-Prem `hsm` / `localizable_params` format.  Example body variable `{{1}}`:  ```json {   \"type\": \"body\",   \"parameters\": [{ \"type\": \"text\", \"text\": \"Ivan\" }] } ```  Do not send `\"type\": \"hsm\"` and do not send `params: [\"Ivan\", \"123\"]`.  Supported `params` button `sub_type` values include: `url`, `quick_reply`, `copy_code` / `coupon_code`, `catalog`, `flow`, `limited_time_offer`, and **`order_details`** (WhatsApp Payments **India only** — requires an approved Utility template with an ORDER_DETAILS button).  Convenience wrapper with structured fields: `POST /sendOrderDetails`.  Authentication OTP templates (category `AUTHENTICATION`, or a template with an OTP / copy-code button) can only be sent to a phone number (`phone` or a phone `chatId`). Meta rejects a BSUID `recipient` for these templates with error 131062. If the recipient is known only by BSUID — for example they use a username and their phone number is not in your Business Portfolio — the template cannot be sent.  A `REQUEST_CONTACT_INFO` button (UTILITY or MARKETING only) has no send-time parameters. Do not add a button component for it in `params`, and do not send button text — WhatsApp sets that label on the template. Create the button with `POST /addTemplate` as `{ \"type\": \"REQUEST_CONTACT_INFO\" }` with no `text`. Inside an open 24-hour window, `POST /sendContactInfo` asks for the number without a template. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let sendTemplateRequest = sendTemplate_request(template: "template_example", language: sendTemplate_request_language(policy: "policy_example", code: "code_example"), namespace: "namespace_example", params: ["TODO"], phone: "phone_example", chatId: "chatId_example", quotedMsgId: "quotedMsgId_example", useMMlite: false, messageActivitySharing: false, messageSendTtlSeconds: 123) // SendTemplateRequest |  (optional)

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

