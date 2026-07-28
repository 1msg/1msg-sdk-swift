# UsersAPI

All URIs are relative to *https://api.1msg.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blockUser**](UsersAPI.md#blockuser) | **POST** /blockUser | Block WhatsApp user
[**listBlockedUsers**](UsersAPI.md#listblockedusers) | **GET** /blockedUsers | List blocked WhatsApp users
[**unblockUser**](UsersAPI.md#unblockuser) | **POST** /unblockUser | Unblock WhatsApp user


# **blockUser**
```swift
    open class func blockUser(token: String, blockUserRequest: BlockUserRequest, completion: @escaping (_ data: SuccessResponse?, _ error: Error?) -> Void)
```

Block WhatsApp user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let blockUserRequest = blockUser_request(phone: 123) // BlockUserRequest | 

// Block WhatsApp user
UsersAPI.blockUser(token: token, blockUserRequest: blockUserRequest) { (response, error) in
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
 **blockUserRequest** | [**BlockUserRequest**](BlockUserRequest.md) |  | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBlockedUsers**
```swift
    open class func listBlockedUsers(token: String, completion: @escaping (_ data: ListBlockedUsers200Response?, _ error: Error?) -> Void)
```

List blocked WhatsApp users

Returns users currently blocked on this WhatsApp channel (WABA `GET /block_users`). Same channel token auth as `blockUser` / `unblockUser`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization

// List blocked WhatsApp users
UsersAPI.listBlockedUsers(token: token) { (response, error) in
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

[**ListBlockedUsers200Response**](ListBlockedUsers200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unblockUser**
```swift
    open class func unblockUser(token: String, blockUserRequest: BlockUserRequest, completion: @escaping (_ data: SuccessResponse?, _ error: Error?) -> Void)
```

Unblock WhatsApp user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let blockUserRequest = blockUser_request(phone: 123) // BlockUserRequest | 

// Unblock WhatsApp user
UsersAPI.unblockUser(token: token, blockUserRequest: blockUserRequest) { (response, error) in
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
 **blockUserRequest** | [**BlockUserRequest**](BlockUserRequest.md) |  | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

