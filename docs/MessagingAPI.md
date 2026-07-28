# MessagingAPI

All URIs are relative to *https://api.1msg.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createReadMessage**](MessagingAPI.md#createreadmessage) | **POST** /readMessage | Mark message as read
[**createUploadMedia**](MessagingAPI.md#createuploadmedia) | **POST** /uploadMedia | Upload media
[**deleteMedia**](MessagingAPI.md#deletemedia) | **DELETE** /media/{mediaId} | Delete media from WABA storage
[**deleteMediaLegacy**](MessagingAPI.md#deletemedialegacy) | **POST** /deleteMedia | Delete media from WABA storage (deprecated alias)
[**getMmLiteStatus**](MessagingAPI.md#getmmlitestatus) | **GET** /mmLiteStatus | Get MM Lite availability and status
[**listMessages**](MessagingAPI.md#listmessages) | **GET** /messages | Get messages list
[**retrieveMedia**](MessagingAPI.md#retrievemedia) | **GET** /retrieveMedia | Retrieve uploaded media metadata
[**sendAddressMessage**](MessagingAPI.md#sendaddressmessage) | **POST** /sendAddressMessage | Send address request message
[**sendButton**](MessagingAPI.md#sendbutton) | **POST** /sendButton | Send Reply Buttons Message
[**sendCarousel**](MessagingAPI.md#sendcarousel) | **POST** /sendCarousel | Send Carousel
[**sendContact**](MessagingAPI.md#sendcontact) | **POST** /sendContact | Send a Contact
[**sendCtaUrl**](MessagingAPI.md#sendctaurl) | **POST** /sendCtaUrl | Send CTA URL interactive message
[**sendFile**](MessagingAPI.md#sendfile) | **POST** /sendFile | Send a File
[**sendFlow**](MessagingAPI.md#sendflow) | **POST** /sendFlow | Send WhatsApp Flow Message
[**sendList**](MessagingAPI.md#sendlist) | **POST** /sendList | Send List Message
[**sendLocation**](MessagingAPI.md#sendlocation) | **POST** /sendLocation | Send a Location
[**sendLocationRequest**](MessagingAPI.md#sendlocationrequest) | **POST** /sendLocationRequest | Send Location Request Message
[**sendMessage**](MessagingAPI.md#sendmessage) | **POST** /sendMessage | Send a Message
[**sendOrderDetails**](MessagingAPI.md#sendorderdetails) | **POST** /sendOrderDetails | Send order details (India payments template)
[**sendPaymentRequest**](MessagingAPI.md#sendpaymentrequest) | **POST** /sendPaymentRequest | Send payment request (regional)
[**sendProduct**](MessagingAPI.md#sendproduct) | **POST** /sendProduct | Send a Product
[**sendReaction**](MessagingAPI.md#sendreaction) | **POST** /sendReaction | Send Reaction
[**sendSticker**](MessagingAPI.md#sendsticker) | **POST** /sendSticker | Send sticker message


# **createReadMessage**
```swift
    open class func createReadMessage(token: String, messageId: String? = nil, msgId: String? = nil, typingIndicator: Bool? = nil, completion: @escaping (_ data: CreateReadMessage200Response?, _ error: Error?) -> Void)
```

Mark message as read

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let messageId = "messageId_example" // String |  (optional)
let msgId = "msgId_example" // String |  (optional)
let typingIndicator = true // Bool | Show WhatsApp typing indicator (max 25s or until reply) (optional) (default to false)

// Mark message as read
MessagingAPI.createReadMessage(token: token, messageId: messageId, msgId: msgId, typingIndicator: typingIndicator) { (response, error) in
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
 **messageId** | **String** |  | [optional] 
 **msgId** | **String** |  | [optional] 
 **typingIndicator** | **Bool** | Show WhatsApp typing indicator (max 25s or until reply) | [optional] [default to false]

### Return type

[**CreateReadMessage200Response**](CreateReadMessage200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUploadMedia**
```swift
    open class func createUploadMedia(token: String, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Upload media

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

// Upload media
MessagingAPI.createUploadMedia(token: token, requestBody: requestBody) { (response, error) in
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

Void (empty response body)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMedia**
```swift
    open class func deleteMedia(token: String, mediaId: String, completion: @escaping (_ data: SuccessResponse?, _ error: Error?) -> Void)
```

Delete media from WABA storage

Delete previously uploaded media by numeric `mediaId` (from `/uploadMedia`).  This is the canonical deletion endpoint and uses the REST `DELETE` verb on the media resource path. The older `POST /deleteMedia` is a deprecated alias. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let mediaId = "mediaId_example" // String | Numeric WABA media id

// Delete media from WABA storage
MessagingAPI.deleteMedia(token: token, mediaId: mediaId) { (response, error) in
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
 **mediaId** | **String** | Numeric WABA media id | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMediaLegacy**
```swift
    open class func deleteMediaLegacy(token: String, deleteMediaLegacyRequest: DeleteMediaLegacyRequest, completion: @escaping (_ data: SuccessResponse?, _ error: Error?) -> Void)
```

Delete media from WABA storage (deprecated alias)

**Deprecated.** Use `DELETE /media/{mediaId}` instead.  This POST alias is kept for backward compatibility with earlier integrations. New integrations should call `DELETE /media/{mediaId}`: 1msg follows REST conventions for resource deletion going forward (delete a resource with the `DELETE` verb on its resource path). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let deleteMediaLegacyRequest = deleteMediaLegacy_request(mediaId: "mediaId_example") // DeleteMediaLegacyRequest | 

// Delete media from WABA storage (deprecated alias)
MessagingAPI.deleteMediaLegacy(token: token, deleteMediaLegacyRequest: deleteMediaLegacyRequest) { (response, error) in
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
 **deleteMediaLegacyRequest** | [**DeleteMediaLegacyRequest**](DeleteMediaLegacyRequest.md) |  | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMmLiteStatus**
```swift
    open class func getMmLiteStatus(token: String, completion: @escaping (_ data: GetMmLiteStatus200Response?, _ error: Error?) -> Void)
```

Get MM Lite availability and status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization

// Get MM Lite availability and status
MessagingAPI.getMmLiteStatus(token: token) { (response, error) in
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

[**GetMmLiteStatus200Response**](GetMmLiteStatus200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMessages**
```swift
    open class func listMessages(token: String, completion: @escaping (_ data: ListMessages200Response?, _ error: Error?) -> Void)
```

Get messages list

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization

// Get messages list
MessagingAPI.listMessages(token: token) { (response, error) in
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

[**ListMessages200Response**](ListMessages200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveMedia**
```swift
    open class func retrieveMedia(token: String, mediaId: String, completion: @escaping (_ data: RetrieveMedia200Response?, _ error: Error?) -> Void)
```

Retrieve uploaded media metadata

Get WABA media URL and metadata by mediaId (from uploadMedia). The returned `url` is temporary and typically expires within ~5 minutes. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let mediaId = "mediaId_example" // String | 

// Retrieve uploaded media metadata
MessagingAPI.retrieveMedia(token: token, mediaId: mediaId) { (response, error) in
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
 **mediaId** | **String** |  | 

### Return type

[**RetrieveMedia200Response**](RetrieveMedia200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendAddressMessage**
```swift
    open class func sendAddressMessage(token: String, sendAddressMessageRequest: SendAddressMessageRequest, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send address request message

Request shipping address from the user (WhatsApp interactive `address_message`).  **India and Singapore only.** Requires: - Business WhatsApp number registered in that country - Recipient phone matching the country (`+91` ↔ `IN`, `+65` ↔ `SG`)  Pass `country: \"IN\"` or `country: \"SG\"`. Eligibility is validated upstream; mismatches (e.g. Singapore phone with `country: \"IN\"`) return errors such as `Unsupported Interactive Message type` (HTTP 200 with `sent: false`).  Optional action parameters: `values`, `saved_addresses`, `validation_errors`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let sendAddressMessageRequest = sendAddressMessage_request(phone: 123, chatId: "chatId_example", body: "body_example", country: "country_example", values: "TODO", savedAddresses: ["TODO"], validationErrors: "TODO", quotedMsgId: "quotedMsgId_example") // SendAddressMessageRequest | 

// Send address request message
MessagingAPI.sendAddressMessage(token: token, sendAddressMessageRequest: sendAddressMessageRequest) { (response, error) in
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
 **sendAddressMessageRequest** | [**SendAddressMessageRequest**](SendAddressMessageRequest.md) |  | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendButton**
```swift
    open class func sendButton(token: String, sendButtonRequest: SendButtonRequest? = nil, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send Reply Buttons Message

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let sendButtonRequest = sendButton_request(phone: "phone_example", body: "body_example", footer: "footer_example", sections: [sendButton_request_sections_inner(type: "type_example", reply: sendButton_request_sections_inner_reply(id: "id_example", title: "title_example"))]) // SendButtonRequest |  (optional)

// Send Reply Buttons Message
MessagingAPI.sendButton(token: token, sendButtonRequest: sendButtonRequest) { (response, error) in
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
 **sendButtonRequest** | [**SendButtonRequest**](SendButtonRequest.md) |  | [optional] 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendCarousel**
```swift
    open class func sendCarousel(token: String, params: [AnyCodable], body: String? = nil, quotedMsgId: String? = nil, chatId: String? = nil, phone: Int? = nil, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send Carousel

You can send product cards via Carousel in two ways:  Template messages: do not require a 24-hour customer service window between you and the recipient. Use sendTemplate.  Free-form messages: can be sent only when a customer service window is open between you and the recipient. Use sendCarousel.  The message structure in /sendCarousel is largely similar to sending a template. However, in this case you must  explicitly specify all elements that are created in advance when working with templates. This is because the message  is sent without using a template.  In /sendCarousel, for sending a Catalog Carousel there can be either 1 URL button or one or more quick reply buttons. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let params = [123] // [AnyCodable] | Required. Template-like structure (same as sendTemplate params). Must include a CAROUSEL component and its cards.  Structure: - params[] item with type CAROUSEL and cards (2..10) - cards[] item:   - components[] items:     - header: parameters[0] with type image/video/product       - image: {\\\"image\\\": {\\\"link\\\": \\\"https://...\\\"}}       - video: {\\\"video\\\": {\\\"link\\\": \\\"https://...\\\"}}       - product: {\\\"product\\\": {\\\"catalog_id\\\": \\\"...\\\", \\\"product_retailer_id\\\": \\\"...\\\"}}     - button: sub_type url or quick_reply       - url: parameters {\\\"text\\\": \\\"Button\\\", \\\"url\\\": \\\"https://...\\\"}       - quick_reply: parameters[] of {\\\"id\\\": \\\"...\\\", \\\"text\\\": \\\"...\\\"} 
let body = "body_example" // String | Text shown above the carousel. Optional. If omitted and params include a body component, the body will be taken from params. (optional)
let quotedMsgId = "quotedMsgId_example" // String | Quoted message ID (Cloud API) (optional)
let chatId = "chatId_example" // String | Required if phone is not set. Chat ID from the message list. Examples: 12020721369@c.us or 120363046942338209@g.us(group) (optional)
let phone = 987 // Int | Required if chatId is not set. A phone number starting with the country code. USA example: 12020721369. (optional)

// Send Carousel
MessagingAPI.sendCarousel(token: token, params: params, body: body, quotedMsgId: quotedMsgId, chatId: chatId, phone: phone) { (response, error) in
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
 **params** | [**[AnyCodable]**](AnyCodable.md) | Required. Template-like structure (same as sendTemplate params). Must include a CAROUSEL component and its cards.  Structure: - params[] item with type CAROUSEL and cards (2..10) - cards[] item:   - components[] items:     - header: parameters[0] with type image/video/product       - image: {\\\&quot;image\\\&quot;: {\\\&quot;link\\\&quot;: \\\&quot;https://...\\\&quot;}}       - video: {\\\&quot;video\\\&quot;: {\\\&quot;link\\\&quot;: \\\&quot;https://...\\\&quot;}}       - product: {\\\&quot;product\\\&quot;: {\\\&quot;catalog_id\\\&quot;: \\\&quot;...\\\&quot;, \\\&quot;product_retailer_id\\\&quot;: \\\&quot;...\\\&quot;}}     - button: sub_type url or quick_reply       - url: parameters {\\\&quot;text\\\&quot;: \\\&quot;Button\\\&quot;, \\\&quot;url\\\&quot;: \\\&quot;https://...\\\&quot;}       - quick_reply: parameters[] of {\\\&quot;id\\\&quot;: \\\&quot;...\\\&quot;, \\\&quot;text\\\&quot;: \\\&quot;...\\\&quot;}  | 
 **body** | **String** | Text shown above the carousel. Optional. If omitted and params include a body component, the body will be taken from params. | [optional] 
 **quotedMsgId** | **String** | Quoted message ID (Cloud API) | [optional] 
 **chatId** | **String** | Required if phone is not set. Chat ID from the message list. Examples: 12020721369@c.us or 120363046942338209@g.us(group) | [optional] 
 **phone** | **Int** | Required if chatId is not set. A phone number starting with the country code. USA example: 12020721369. | [optional] 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendContact**
```swift
    open class func sendContact(token: String, sendContactRequest: SendContactRequest? = nil, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send a Contact

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let sendContactRequest = sendContact_request(phone: "phone_example", contacts: [sendContact_request_contacts_inner(name: sendContact_request_contacts_inner_name(formattedName: "formattedName_example", firstName: "firstName_example", lastName: "lastName_example", middleName: "middleName_example", suffix: "suffix_example", _prefix: "_prefix_example"), birthday: "birthday_example", addresses: [123], emails: [123], org: sendContact_request_contacts_inner_org(company: "company_example", department: "department_example", title: "title_example"), phones: [sendContact_request_contacts_inner_phones_inner(phone: "phone_example", type: "type_example", waId: "waId_example")], urls: [123])]) // SendContactRequest |  (optional)

// Send a Contact
MessagingAPI.sendContact(token: token, sendContactRequest: sendContactRequest) { (response, error) in
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
 **sendContactRequest** | [**SendContactRequest**](SendContactRequest.md) |  | [optional] 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendCtaUrl**
```swift
    open class func sendCtaUrl(token: String, sendCtaUrlRequest: SendCtaUrlRequest, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send CTA URL interactive message

Send an interactive message with a single call-to-action URL button.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let sendCtaUrlRequest = sendCtaUrl_request(phone: 123, chatId: "chatId_example", body: "body_example", displayText: "displayText_example", url: "url_example", header: "TODO", footer: "footer_example", quotedMsgId: "quotedMsgId_example") // SendCtaUrlRequest | 

// Send CTA URL interactive message
MessagingAPI.sendCtaUrl(token: token, sendCtaUrlRequest: sendCtaUrlRequest) { (response, error) in
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
 **sendCtaUrlRequest** | [**SendCtaUrlRequest**](SendCtaUrlRequest.md) |  | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendFile**
```swift
    open class func sendFile(token: String, body: String? = nil, filename: String? = nil, mediaId: String? = nil, mediaType: MediaType_sendFile? = nil, voice: Bool? = nil, caption: String? = nil, quotedMsgId: String? = nil, chatId: String? = nil, phone: Int? = nil, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send a File

Send a file to an existing chat. (Only if the dialogue has an Open Session).  Only one of two parameters is needed to determine the destination - chatId or phone. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let body = "body_example" // String | File source (required unless mediaId is set): - HTTP/HTTPS URL - Base64 data URI  (optional)
let filename = "filename_example" // String | File name with extension (required with body, not with mediaId) (optional)
let mediaId = "mediaId_example" // String | WABA media id from uploadMedia (alternative to body) (optional)
let mediaType = "mediaType_example" // String | Required when using mediaId (optional)
let voice = true // Bool | Native WhatsApp voice note (audio/ogg only) (optional)
let caption = "caption_example" // String |  (optional)
let quotedMsgId = "quotedMsgId_example" // String |  (optional)
let chatId = "chatId_example" // String |  (optional)
let phone = 987 // Int |  (optional)

// Send a File
MessagingAPI.sendFile(token: token, body: body, filename: filename, mediaId: mediaId, mediaType: mediaType, voice: voice, caption: caption, quotedMsgId: quotedMsgId, chatId: chatId, phone: phone) { (response, error) in
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
 **body** | **String** | File source (required unless mediaId is set): - HTTP/HTTPS URL - Base64 data URI  | [optional] 
 **filename** | **String** | File name with extension (required with body, not with mediaId) | [optional] 
 **mediaId** | **String** | WABA media id from uploadMedia (alternative to body) | [optional] 
 **mediaType** | **String** | Required when using mediaId | [optional] 
 **voice** | **Bool** | Native WhatsApp voice note (audio/ogg only) | [optional] 
 **caption** | **String** |  | [optional] 
 **quotedMsgId** | **String** |  | [optional] 
 **chatId** | **String** |  | [optional] 
 **phone** | **Int** |  | [optional] 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendFlow**
```swift
    open class func sendFlow(token: String, body: String, flowId: String, flowToken: String, flowCta: String, header: SendFlowRequestHeader? = nil, footer: String? = nil, flowAction: FlowAction_sendFlow? = nil, flowActionPayload: AnyCodable? = nil, flowMessageVersion: String? = nil, mode: Mode_sendFlow? = nil, flowActionData: AnyCodable? = nil, flowActionScreen: String? = nil, quotedMsgId: String? = nil, chatId: String? = nil, phone: Int? = nil, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send WhatsApp Flow Message

Send Interactive WhatsApp Flow message to an existing chat. (Only if the dialogue has an Open Session).  Only one of two parameters is needed to determine the destination - chatId or phone.  Use this method to send a published WhatsApp Flow as a service (interactive) message.  If the 24-hour window is closed, send a template with a FLOW button via /sendTemplate. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let body = "body_example" // String | Flow message body text
let flowId = "flowId_example" // String | Published Flow ID
let flowToken = "flowToken_example" // String | Flow token generated by the business
let flowCta = "flowCta_example" // String | CTA button text
let header = sendFlow_request_header() // SendFlowRequestHeader |  (optional)
let footer = "footer_example" // String | Footer text (optional)
let flowAction = "flowAction_example" // String | Flow action type (optional)
let flowActionPayload = "TODO" // AnyCodable | Required for flowAction=navigate (screen is required). Ignored for data_exchange. If data is provided, it must be a non-empty object. (optional)
let flowMessageVersion = "flowMessageVersion_example" // String | Flow message version (default \\\"3\\\") (optional)
let mode = "mode_example" // String | Flow mode (draft or published). If omitted, provider default applies (optional)
let flowActionData = "TODO" // AnyCodable | Shortcut for flowActionPayload.data (optional) (optional)
let flowActionScreen = "flowActionScreen_example" // String | Shortcut for flowActionPayload.screen (optional) (optional)
let quotedMsgId = "quotedMsgId_example" // String | Quoted message ID (Cloud API) (optional)
let chatId = "chatId_example" // String | Required if phone is not set. Chat ID from the message list. Examples: 12020721369@c.us or 120363046942338209@g.us(group) (optional)
let phone = 987 // Int | Required if chatId is not set. A phone number starting with the country code. USA example: 12020721369. (optional)

// Send WhatsApp Flow Message
MessagingAPI.sendFlow(token: token, body: body, flowId: flowId, flowToken: flowToken, flowCta: flowCta, header: header, footer: footer, flowAction: flowAction, flowActionPayload: flowActionPayload, flowMessageVersion: flowMessageVersion, mode: mode, flowActionData: flowActionData, flowActionScreen: flowActionScreen, quotedMsgId: quotedMsgId, chatId: chatId, phone: phone) { (response, error) in
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
 **body** | **String** | Flow message body text | 
 **flowId** | **String** | Published Flow ID | 
 **flowToken** | **String** | Flow token generated by the business | 
 **flowCta** | **String** | CTA button text | 
 **header** | [**SendFlowRequestHeader**](SendFlowRequestHeader.md) |  | [optional] 
 **footer** | **String** | Footer text | [optional] 
 **flowAction** | **String** | Flow action type | [optional] 
 **flowActionPayload** | [**AnyCodable**](AnyCodable.md) | Required for flowAction&#x3D;navigate (screen is required). Ignored for data_exchange. If data is provided, it must be a non-empty object. | [optional] 
 **flowMessageVersion** | **String** | Flow message version (default \\\&quot;3\\\&quot;) | [optional] 
 **mode** | **String** | Flow mode (draft or published). If omitted, provider default applies | [optional] 
 **flowActionData** | [**AnyCodable**](AnyCodable.md) | Shortcut for flowActionPayload.data (optional) | [optional] 
 **flowActionScreen** | **String** | Shortcut for flowActionPayload.screen (optional) | [optional] 
 **quotedMsgId** | **String** | Quoted message ID (Cloud API) | [optional] 
 **chatId** | **String** | Required if phone is not set. Chat ID from the message list. Examples: 12020721369@c.us or 120363046942338209@g.us(group) | [optional] 
 **phone** | **Int** | Required if chatId is not set. A phone number starting with the country code. USA example: 12020721369. | [optional] 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendList**
```swift
    open class func sendList(token: String, sendListRequest: SendListRequest? = nil, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send List Message

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let sendListRequest = sendList_request(phone: "phone_example", body: "body_example", buttonText: "buttonText_example", action: "action_example", sections: [sendList_request_sections_inner(title: "title_example", rows: [sendList_request_sections_inner_rows_inner(id: "id_example", title: "title_example", description: "description_example")])]) // SendListRequest |  (optional)

// Send List Message
MessagingAPI.sendList(token: token, sendListRequest: sendListRequest) { (response, error) in
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
 **sendListRequest** | [**SendListRequest**](SendListRequest.md) |  | [optional] 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendLocation**
```swift
    open class func sendLocation(token: String, lat: String, lng: String, address: String? = nil, name: String? = nil, quotedMsgId: String? = nil, chatId: String? = nil, phone: Int? = nil, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send a Location

Send a location to an existing chat. (Only if the dialogue has an Open Session).  Only one of two parameters is needed to determine the destination - chatId or phone. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let lat = "lat_example" // String | Latitude of the location. Example: 45.018337
let lng = "lng_example" // String | Longitude of the location. Example: -73.968285
let address = "address_example" // String | Address of the location. Only displayed if name is present. Example: 9766 Valley View St., New York, NY 10024 (optional)
let name = "name_example" // String | Name of the location. Example: Facebook HQ (optional)
let quotedMsgId = "quotedMsgId_example" // String | Quoted message ID (Cloud API) (optional)
let chatId = "chatId_example" // String | Required if phone is not set. Chat ID from the message list. Examples: 12020721369@c.us or 120363046942338209@g.us(group) (optional)
let phone = 987 // Int | Required if chatId is not set. A phone number starting with the country code. USA example: 12020721369. (optional)

// Send a Location
MessagingAPI.sendLocation(token: token, lat: lat, lng: lng, address: address, name: name, quotedMsgId: quotedMsgId, chatId: chatId, phone: phone) { (response, error) in
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
 **lat** | **String** | Latitude of the location. Example: 45.018337 | 
 **lng** | **String** | Longitude of the location. Example: -73.968285 | 
 **address** | **String** | Address of the location. Only displayed if name is present. Example: 9766 Valley View St., New York, NY 10024 | [optional] 
 **name** | **String** | Name of the location. Example: Facebook HQ | [optional] 
 **quotedMsgId** | **String** | Quoted message ID (Cloud API) | [optional] 
 **chatId** | **String** | Required if phone is not set. Chat ID from the message list. Examples: 12020721369@c.us or 120363046942338209@g.us(group) | [optional] 
 **phone** | **Int** | Required if chatId is not set. A phone number starting with the country code. USA example: 12020721369. | [optional] 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendLocationRequest**
```swift
    open class func sendLocationRequest(token: String, sendLocationRequestRequest: SendLocationRequestRequest? = nil, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send Location Request Message

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let sendLocationRequestRequest = sendLocationRequest_request(phone: "phone_example", body: "body_example") // SendLocationRequestRequest |  (optional)

// Send Location Request Message
MessagingAPI.sendLocationRequest(token: token, sendLocationRequestRequest: sendLocationRequestRequest) { (response, error) in
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
 **sendLocationRequestRequest** | [**SendLocationRequestRequest**](SendLocationRequestRequest.md) |  | [optional] 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMessage**
```swift
    open class func sendMessage(token: String, body: String, quotedMsgId: String? = nil, chatId: String? = nil, phone: Int? = nil, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send a Message

Send a message to an existing chat. (Only if the dialogue has an Open Session).  The message will be added to the queue for sending and delivered even if the phone  is disconnected from the Internet or authorization is not passed.  Only one of two parameters is needed to determine the destination - chatId or phone. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let body = "body_example" // String | Message text, UTF-8 or UTF-16 string with emoji
let quotedMsgId = "quotedMsgId_example" // String | Message ID to quote/reply to (Cloud API wamid) (optional)
let chatId = "chatId_example" // String | Chat ID in format: phone@c.us (individual) or phone@g.us (group) (optional)
let phone = 987 // Int | Phone number starting with country code (alternative to chatId) (optional)

// Send a Message
MessagingAPI.sendMessage(token: token, body: body, quotedMsgId: quotedMsgId, chatId: chatId, phone: phone) { (response, error) in
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
 **body** | **String** | Message text, UTF-8 or UTF-16 string with emoji | 
 **quotedMsgId** | **String** | Message ID to quote/reply to (Cloud API wamid) | [optional] 
 **chatId** | **String** | Chat ID in format: phone@c.us (individual) or phone@g.us (group) | [optional] 
 **phone** | **Int** | Phone number starting with country code (alternative to chatId) | [optional] 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendOrderDetails**
```swift
    open class func sendOrderDetails(token: String, sendOrderDetailsRequest: SendOrderDetailsRequest, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send order details (India payments template)

Send a WhatsApp **order details** payment / invoice message using a pre-approved **Utility** template that has an `ORDER_DETAILS` button.  **India only** (WhatsApp Payments India). Requires: - India WhatsApp Business number - Commerce enabled on the channel (`GET`/`POST /commerce`) - Approved template with an `ORDER_DETAILS` button  Use this method when you need structured fields (`order`, `referenceId`, `currency`, `paymentSettings`). The API appends a template button `sub_type: order_details` and sends via the same path as `POST /sendTemplate`.  Works **outside the 24-hour session window** (template message).  You can also send the same payload yourself with `POST /sendTemplate` by including a button component in `params`:  ```json {   \"type\": \"button\",   \"sub_type\": \"order_details\",   \"index\": 0,   \"parameters\": [{     \"type\": \"action\",     \"action\": {       \"order_details\": {         \"reference_id\": \"order-123\",         \"currency\": \"INR\",         \"order\": { \"status\": \"pending\", \"items\": [], \"subtotal\": { \"offset\": 100, \"value\": 50000 } }       }     }   }] } ``` 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let sendOrderDetailsRequest = sendOrderDetails_request(phone: 123, chatId: "chatId_example", template: "template_example", namespace: "namespace_example", language: sendOrderDetails_request_language(code: "code_example", policy: "policy_example"), params: ["TODO"], referenceId: "referenceId_example", currency: "currency_example", paymentSettings: "TODO", order: sendOrderDetails_request_order(status: "status_example", items: [sendOrderDetails_request_order_items_inner(retailerId: "retailerId_example", name: "name_example", quantity: 123, amount: sendOrderDetails_request_order_items_inner_amount(offset: 123, value: 123))], subtotal: nil, tax: "TODO", shipping: "TODO", discount: "TODO")) // SendOrderDetailsRequest | 

// Send order details (India payments template)
MessagingAPI.sendOrderDetails(token: token, sendOrderDetailsRequest: sendOrderDetailsRequest) { (response, error) in
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
 **sendOrderDetailsRequest** | [**SendOrderDetailsRequest**](SendOrderDetailsRequest.md) |  | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPaymentRequest**
```swift
    open class func sendPaymentRequest(token: String, sendPaymentRequestRequest: SendPaymentRequestRequest, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send payment request (regional)

Send a regional payment request interactive message (beta scaffold). `region` must be IN, SG, or BR. Payload shape follows Meta regional payments docs; verify on stage before production use. Full regional builders are not implemented yet. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let sendPaymentRequestRequest = sendPaymentRequest_request(phone: 123, region: "region_example", body: "body_example", interactive: "TODO", action: "TODO") // SendPaymentRequestRequest | 

// Send payment request (regional)
MessagingAPI.sendPaymentRequest(token: token, sendPaymentRequestRequest: sendPaymentRequestRequest) { (response, error) in
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
 **sendPaymentRequestRequest** | [**SendPaymentRequestRequest**](SendPaymentRequestRequest.md) |  | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendProduct**
```swift
    open class func sendProduct(token: String, requestBody: [String: AnyCodable]? = nil, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send a Product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let requestBody = "TODO" // [String: AnyCodable] |  (optional)

// Send a Product
MessagingAPI.sendProduct(token: token, requestBody: requestBody) { (response, error) in
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

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendReaction**
```swift
    open class func sendReaction(token: String, sendReactionRequest: SendReactionRequest? = nil, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send Reaction

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let sendReactionRequest = sendReaction_request(phone: "phone_example", body: "body_example", quotedMsgId: "quotedMsgId_example") // SendReactionRequest |  (optional)

// Send Reaction
MessagingAPI.sendReaction(token: token, sendReactionRequest: sendReactionRequest) { (response, error) in
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
 **sendReactionRequest** | [**SendReactionRequest**](SendReactionRequest.md) |  | [optional] 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendSticker**
```swift
    open class func sendSticker(token: String, sendStickerRequest: SendStickerRequest, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send sticker message

Send a WhatsApp sticker by mediaId or link URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let sendStickerRequest = sendSticker_request(phone: 123, chatId: "chatId_example", mediaId: "mediaId_example", link: "link_example", quotedMsgId: "quotedMsgId_example") // SendStickerRequest | 

// Send sticker message
MessagingAPI.sendSticker(token: token, sendStickerRequest: sendStickerRequest) { (response, error) in
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
 **sendStickerRequest** | [**SendStickerRequest**](SendStickerRequest.md) |  | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

