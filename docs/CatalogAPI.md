# CatalogAPI

All URIs are relative to *https://api.1msg.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCommerce**](CatalogAPI.md#createcommerce) | **POST** /commerce | Set Commerce Settings
[**getCommerce**](CatalogAPI.md#getcommerce) | **GET** /commerce | Get Commerce Settings


# **createCommerce**
```swift
    open class func createCommerce(token: String, createCommerceRequest: CreateCommerceRequest, completion: @escaping (_ data: CreateCommerce200Response?, _ error: Error?) -> Void)
```

Set Commerce Settings

Update catalog/cart commerce settings via the `params` object.  - `params.is_catalog_visible` — show catalog storefront icon (`true`) or hide it (`false`). - `params.is_cart_enabled` — enable cart (`true`) or disable it (`false`).  Blocked when the channel subscription limit is exceeded. Requires a commerce-capable channel (Cloud Functions `/commerceWAV2`). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization
let createCommerceRequest = createCommerce_request(params: createCommerce_request_params(isCartEnabled: false, isCatalogVisible: false)) // CreateCommerceRequest | 

// Set Commerce Settings
CatalogAPI.createCommerce(token: token, createCommerceRequest: createCommerceRequest) { (response, error) in
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
 **createCommerceRequest** | [**CreateCommerceRequest**](CreateCommerceRequest.md) |  | 

### Return type

[**CreateCommerce200Response**](CreateCommerce200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommerce**
```swift
    open class func getCommerce(token: String, completion: @escaping (_ data: [GetCommerce200ResponseInner]?, _ error: Error?) -> Void)
```

Get Commerce Settings

Returns catalog/cart commerce settings for the channel.  - `is_catalog_visible` — show catalog storefront icon (`true`) or hide it (`false`). - `is_cart_enabled` — enable cart (`true`) or disable it (`false`). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgChatApi

let token = "token_example" // String | JWT token or API key for authorization

// Get Commerce Settings
CatalogAPI.getCommerce(token: token) { (response, error) in
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

[**[GetCommerce200ResponseInner]**](GetCommerce200ResponseInner.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

