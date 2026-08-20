# CallingAPI

All URIs are relative to *https://api.1msg.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCallingSettings**](CallingAPI.md#getcallingsettings) | **GET** /callingSettings | Get calling settings
[**initiateCall**](CallingAPI.md#initiatecall) | **POST** /initiateCall | Call action (connect / pre_accept / accept / reject / terminate)
[**updateCallingSettings**](CallingAPI.md#updatecallingsettings) | **POST** /callingSettings | Update calling settings


# **getCallingSettings**
```swift
    open class func getCallingSettings(token: String, completion: @escaping (_ data: CallingSettings?, _ error: Error?) -> Void)
```

Get calling settings

Return WhatsApp Calling API settings for this channel (beta).  Proxies upstream `GET /calling/settings`.  **Prerequisites** - Number must be eligible for Meta Calling (Cloud API; not COEX) - Trial / `subscriptionBlocked` channels receive **403** plain text - You need your own WebRTC or SIP stack; 1msg is a **signaling proxy** only   and does **not** store call history or recordings  See the **Calling** tag overview for inbound/outbound flows and webhooks. 

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

[**CallingSettings**](CallingSettings.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiateCall**
```swift
    open class func initiateCall(token: String, initiateCallRequest: InitiateCallRequest, completion: @escaping (_ data: InitiateCallResponse?, _ error: Error?) -> Void)
```

Call action (connect / pre_accept / accept / reject / terminate)

Perform a WhatsApp Calling action (beta).  Proxies upstream `POST /calling/calls`. Despite the historical path name `/initiateCall`, this endpoint handles **all** call actions:  | action | Use | Required | |--------|-----|----------| | `connect` | Outbound business → user | `to` + `session` (`sdp_type: offer`) | | `pre_accept` | Inbound (optional, reduces audio clipping) | `call_id` + `session` (`sdp_type: answer`) | | `accept` | Inbound answer | `call_id` + `session` (`sdp_type: answer`) | | `reject` | Decline inbound | `call_id` | | `terminate` | Hang up | `call_id` |  **SDP / media (critical)** - `accept` / `pre_accept` require a **WebRTC-generated SDP answer**. - Do **not** send Meta's offer SDP back as the answer. - Postman (or curl) alone **cannot** establish real media — you need a   WebRTC or SIP stack. 1msg only proxies signaling.  Answer within ~**30–60 seconds** of an inbound `connect` webhook or Meta terminates as unanswered. Common Meta errors include Calling not enabled (`138000`), no permission (`138006`), SDP validation failures.  **Outbound** requires a prior Call Permission Request (CPR) acceptance. See the **Calling** tag overview for the full outbound flow and CPR limits.  Trial / `subscriptionBlocked` → **403** plain text. Upstream failures often return HTTP 200 with `{ \"response\": { \"error\": \"...\" } }`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let initiateCallRequest = InitiateCallRequest(messagingProduct: "messagingProduct_example", action: "action_example", callId: "callId_example", to: "to_example", bizOpaqueCallbackData: "bizOpaqueCallbackData_example", session: InitiateCallRequest_session(sdpType: "sdpType_example", sdp: "sdp_example")) // InitiateCallRequest | 

// Call action (connect / pre_accept / accept / reject / terminate)
CallingAPI.initiateCall(token: token, initiateCallRequest: initiateCallRequest) { (response, error) in
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
 **initiateCallRequest** | [**InitiateCallRequest**](InitiateCallRequest.md) |  | 

### Return type

[**InitiateCallResponse**](InitiateCallResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCallingSettings**
```swift
    open class func updateCallingSettings(token: String, callingSettings: CallingSettings, completion: @escaping (_ data: UpdateCallingSettings200Response?, _ error: Error?) -> Void)
```

Update calling settings

Enable, disable, or update WhatsApp Calling settings (beta).  Proxies upstream `POST /calling/settings`. Body is forwarded as-is (1msg does not validate fields).  **Common fields under `calling`** - `status` (`ENABLED` | `DISABLED`) — required to turn calling on/off - `call_icon_visibility` (`DEFAULT` | `DISABLE_ALL`) — optional - `callback_permission_status` (`ENABLED` | `DISABLED`) — optional;   when enabled, inbound user calls grant callback permission - `call_hours` — optional hours / timezone object - `sip` — optional SIP trunk; when SIP is ENABLED, Graph call actions and   calling webhooks are not used - `srtp_key_exchange_protocol` (`DTLS` | `SDES`) — SDES only with SIP - `video.status` — optional  Meta may accept only one feature group per request — prefer focused updates (e.g. enable status first, then SIP).  Trial / `subscriptionBlocked` → **403** plain text. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let callingSettings = CallingSettings(calling: CallingSettings_calling(status: "status_example", callIconVisibility: "callIconVisibility_example", callbackPermissionStatus: "callbackPermissionStatus_example", srtpKeyExchangeProtocol: "srtpKeyExchangeProtocol_example", callHours: CallingSettings_calling_call_hours(status: "status_example", timezone: "timezone_example", dayOfWeekStart: "dayOfWeekStart_example"), sip: CallingSettings_calling_sip(status: "status_example", servers: [CallingSettings_calling_sip_servers_inner(hostname: "hostname_example", port: 123, requestUriUserParams: "TODO", sipUserPassword: "sipUserPassword_example", password: "password_example", appId: "appId_example")]), video: CallingSettings_calling_video(status: "status_example"), audio: CallingSettings_calling_audio(status: "status_example"), restrictions: "TODO", ipAddresses: "TODO", callIcons: "TODO")) // CallingSettings | 

// Update calling settings
CallingAPI.updateCallingSettings(token: token, callingSettings: callingSettings) { (response, error) in
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
 **callingSettings** | [**CallingSettings**](CallingSettings.md) |  | 

### Return type

[**UpdateCallingSettings200Response**](UpdateCallingSettings200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

