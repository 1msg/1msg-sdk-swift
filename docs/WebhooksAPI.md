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

Return the webhook URL(s) currently configured for this channel, plus delivery status for each URL.  `webhookUrl` is a string when a single URL is set, an array of strings when multiple URLs are configured, or `null` if none is set.  **Prefer `webhookStatuses`.** The circuit breaker is per URL, not per channel. If 1 of 4 URLs is sticky-disabled, that URL is skipped; the other three still receive events. Send/receive are not affected.  Channel-level `haveDisabledWebhooks`, `circuitState`, `reason`, `fails`, `trips`, and timestamps are a compatibility summary of **one** URL (the first sticky-disabled URL, else the first configured URL). They are not \"the channel is dead\".  - `haveDisabledWebhooks` — `true` when **at least one** URL in `webhookUrl` is   sticky auto-disabled. Live URLs still get events. - `circuitState` — compressed scalar for that same primary URL:   `ok` | `degraded` | `open` | `half_open` | `disabled`. - `disabledWebhooks` — currently configured URLs that are sticky-disabled   (subset of `webhookUrl`). - `webhookStatuses` — one row per currently configured URL. Use this array   to see which endpoints are live vs skipped. - `fails` / `trips` / `firstFailAt` — **diagnostics for support**, not product   UI. `fails` = failures in a rolling ~10 minute window (not lifetime).   `trips` = failed recovery probes on the 15 min → 1 h → 6 h schedule (sticky   disable after 3). Clients can ignore these and use `webhookStatuses` +   `disabledWebhooks` only.  Sticky disable skips delivery; it does not unconfigure the URL (it stays in `webhookUrl`). Re-enable with `POST /webhook` or `POST /settings`. Those endpoints **replace** the whole list — with multiple URLs, send the full array. 

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
    open class func setWebhook(token: String, setWebhookRequest: SetWebhookRequest, completion: @escaping (_ data: SetWebhook200Response?, _ error: Error?) -> Void)
```

Set webhook URL

Set the client webhook URL that receives inbound events for this channel.  **Replaces** the stored webhook list (it does not append). To deliver the same events to several endpoints, pass an array in `webhookUrl` (max 5) or use `POST /settings`. With several URLs already configured, posting only the disabled URL **drops the others** — send the complete array to re-enable one of many.  Incoming payloads include messages, delivery ACKs, group updates, coexistence echoes, and calling events. WhatsApp Calling payloads (`type: \"calls\"`) are documented under the **Calling** tag. Call permission replies arrive on the normal messages path (`call_permission_reply`).  Repeating `POST /webhook` with the same URL(s) clears an auto-disable (self-serve re-enable). Send/receive are not affected by webhook auto-disable. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let setWebhookRequest = setWebhook_request(webhookUrl: setWebhook_request_webhookUrl()) // SetWebhookRequest | 

// Set webhook URL
WebhooksAPI.setWebhook(token: token, setWebhookRequest: setWebhookRequest) { (response, error) in
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
 **setWebhookRequest** | [**SetWebhookRequest**](SetWebhookRequest.md) |  | 

### Return type

[**SetWebhook200Response**](SetWebhook200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

