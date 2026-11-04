# ChannelAPI

All URIs are relative to *https://api.1msg.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSettings**](ChannelAPI.md#createsettings) | **POST** /settings | Update channel settings
[**getConversationalAutomation**](ChannelAPI.md#getconversationalautomation) | **GET** /conversationalAutomation | Get conversational automation settings
[**getStatus**](ChannelAPI.md#getstatus) | **GET** /status | Get channel status
[**listSettings**](ChannelAPI.md#listsettings) | **GET** /settings | Get channel settings
[**setConversationalAutomation**](ChannelAPI.md#setconversationalautomation) | **POST** /conversationalAutomation | Set conversational automation settings


# **createSettings**
```swift
    open class func createSettings(token: String, createSettingsRequest: CreateSettingsRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update channel settings

Update channel settings. Only send fields you want to change.  `webhookUrl` **replaces** the stored list (one URL string, or up to 5 URLs as an array). Passing an empty value clears webhooks. Repeating the same URL(s) also clears a sticky auto-disable. With several URLs, send the complete array to re-enable one of them — omitting a URL removes it from the channel. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let createSettingsRequest = createSettings_request(webhookUrl: createSettings_request_webhookUrl(), guaranteedHooks: false, ackNotificationsOn: false, rawHooks: false, templateAnalyticsEnabled: false, ctaUrlLinkTrackingOptedOut: false) // CreateSettingsRequest | 

// Update channel settings
ChannelAPI.createSettings(token: token, createSettingsRequest: createSettingsRequest) { (response, error) in
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
 **createSettingsRequest** | [**CreateSettingsRequest**](CreateSettingsRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConversationalAutomation**
```swift
    open class func getConversationalAutomation(token: String, completion: @escaping (_ data: ConversationalAutomation?, _ error: Error?) -> Void)
```

Get conversational automation settings

Get WhatsApp conversational components for the channel (welcome message, ice-breaker prompts, and slash commands).  Proxies Meta/360dialog `GET /conversational_automation`.  When `enable_welcome_message` is true and a user opens chat for the first time, Meta delivers a webhook message with `type: request_welcome`. The inbound formatter exposes that as `type: \"request_welcome\"` and `meta.request_welcome: true` so your webhook can send a custom welcome reply. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization

// Get conversational automation settings
ChannelAPI.getConversationalAutomation(token: token) { (response, error) in
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

[**ConversationalAutomation**](ConversationalAutomation.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatus**
```swift
    open class func getStatus(token: String, completion: @escaping (_ data: GetStatus200Response?, _ error: Error?) -> Void)
```

Get channel status

Return WhatsApp Cloud API connection status for this channel (`connected` when the number can send). May include `accountStatus`, messaging limit, and MM Lite availability.  Optional `health_status_warning` appears only when Meta Graph health could not be loaded and a soft `connected` response is returned. Omitted on the normal path and when health details are not applicable for the channel — never an internal provider/transport name. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization

// Get channel status
ChannelAPI.getStatus(token: token) { (response, error) in
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

[**GetStatus200Response**](GetStatus200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSettings**
```swift
    open class func listSettings(token: String, completion: @escaping (_ data: ListSettings200Response?, _ error: Error?) -> Void)
```

Get channel settings

Return channel settings: webhook URL(s), delivery flags, and analytics toggles.  Auto-disable / circuit state matches `GET /webhook`. **Prefer `webhookStatuses`** (one row per configured URL). The breaker is per URL, not per channel.  Channel-level `haveDisabledWebhooks` is `true` when **at least one** URL in `webhookUrl` is sticky auto-disabled — not \"the channel is dead\". Live URLs still receive events. Top-level `circuitState` / `reason` / `fails` / `trips` are a compatibility summary of one URL (first sticky-disabled, else first configured).  This is the same `GET /settings` endpoint as the REST API (previously missing from MCP). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization

// Get channel settings
ChannelAPI.listSettings(token: token) { (response, error) in
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

[**ListSettings200Response**](ListSettings200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setConversationalAutomation**
```swift
    open class func setConversationalAutomation(token: String, conversationalAutomation: ConversationalAutomation, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Set conversational automation settings

Update WhatsApp conversational components.  Allowed body fields (others are ignored): - `enable_welcome_message` (boolean) - `prompts` (string[], max 4, each ≤ 80 chars) - `commands` (`{ command_name, command_description }[]`)  Proxies Meta/360dialog `POST /conversational_automation`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let conversationalAutomation = ConversationalAutomation(enableWelcomeMessage: false, prompts: ["prompts_example"], commands: [ConversationalAutomation_commands_inner(commandName: "commandName_example", commandDescription: "commandDescription_example")]) // ConversationalAutomation | 

// Set conversational automation settings
ChannelAPI.setConversationalAutomation(token: token, conversationalAutomation: conversationalAutomation) { (response, error) in
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
 **conversationalAutomation** | [**ConversationalAutomation**](ConversationalAutomation.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

