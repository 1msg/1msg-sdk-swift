# FlowsAPI

All URIs are relative to *https://api.1msg.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFlows**](FlowsAPI.md#createflows) | **POST** /flows | Create Flow
[**createFlowsFlowIdDeprecate**](FlowsAPI.md#createflowsflowiddeprecate) | **POST** /flows/{flowId}/deprecate | Deprecate Flow
[**createFlowsFlowIdPublish**](FlowsAPI.md#createflowsflowidpublish) | **POST** /flows/{flowId}/publish | Publish Flow
[**deleteFlowsFlowId**](FlowsAPI.md#deleteflowsflowid) | **DELETE** /flows/{flowId} | Delete Flow
[**getFlowsFlowId**](FlowsAPI.md#getflowsflowid) | **GET** /flows/{flowId} | Get Flow Details
[**getFlowsFlowIdPreview**](FlowsAPI.md#getflowsflowidpreview) | **GET** /flows/{flowId}/preview | Preview Flow
[**getWhatsappBusinessEncryption**](FlowsAPI.md#getwhatsappbusinessencryption) | **GET** /whatsapp_business_encryption | Get business encryption public key
[**listFlows**](FlowsAPI.md#listflows) | **GET** /flows | List Flows
[**patchFlowsFlowIdAssets**](FlowsAPI.md#patchflowsflowidassets) | **PATCH** /flows/{flowId}/assets | Update Flow Structure
[**patchFlowsFlowIdMetadata**](FlowsAPI.md#patchflowsflowidmetadata) | **PATCH** /flows/{flowId}/metadata | Update Flow Metadata
[**setWhatsappBusinessEncryption**](FlowsAPI.md#setwhatsappbusinessencryption) | **POST** /whatsapp_business_encryption | Set business encryption public key


# **createFlows**
```swift
    open class func createFlows(token: String, wabaAccountId: String? = nil, completion: @escaping (_ data: CreateGroups200Response?, _ error: Error?) -> Void)
```

Create Flow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let wabaAccountId = "wabaAccountId_example" // String |  (optional)

// Create Flow
FlowsAPI.createFlows(token: token, wabaAccountId: wabaAccountId) { (response, error) in
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
 **wabaAccountId** | **String** |  | [optional] 

### Return type

[**CreateGroups200Response**](CreateGroups200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFlowsFlowIdDeprecate**
```swift
    open class func createFlowsFlowIdDeprecate(flowId: String, token: String, wabaAccountId: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Deprecate Flow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let flowId = "flowId_example" // String | Flow ID
let token = "token_example" // String | JWT token or API key for authorization
let wabaAccountId = "wabaAccountId_example" // String |  (optional)

// Deprecate Flow
FlowsAPI.createFlowsFlowIdDeprecate(flowId: flowId, token: token, wabaAccountId: wabaAccountId) { (response, error) in
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
 **flowId** | **String** | Flow ID | 
 **token** | **String** | JWT token or API key for authorization | 
 **wabaAccountId** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFlowsFlowIdPublish**
```swift
    open class func createFlowsFlowIdPublish(flowId: String, token: String, wabaAccountId: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Publish Flow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let flowId = "flowId_example" // String | Flow ID
let token = "token_example" // String | JWT token or API key for authorization
let wabaAccountId = "wabaAccountId_example" // String |  (optional)

// Publish Flow
FlowsAPI.createFlowsFlowIdPublish(flowId: flowId, token: token, wabaAccountId: wabaAccountId) { (response, error) in
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
 **flowId** | **String** | Flow ID | 
 **token** | **String** | JWT token or API key for authorization | 
 **wabaAccountId** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFlowsFlowId**
```swift
    open class func deleteFlowsFlowId(flowId: String, token: String, wabaAccountId: String? = nil, completion: @escaping (_ data: DeleteFlowsFlowId200Response?, _ error: Error?) -> Void)
```

Delete Flow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let flowId = "flowId_example" // String | Flow ID
let token = "token_example" // String | JWT token or API key for authorization
let wabaAccountId = "wabaAccountId_example" // String |  (optional)

// Delete Flow
FlowsAPI.deleteFlowsFlowId(flowId: flowId, token: token, wabaAccountId: wabaAccountId) { (response, error) in
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
 **flowId** | **String** | Flow ID | 
 **token** | **String** | JWT token or API key for authorization | 
 **wabaAccountId** | **String** |  | [optional] 

### Return type

[**DeleteFlowsFlowId200Response**](DeleteFlowsFlowId200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFlowsFlowId**
```swift
    open class func getFlowsFlowId(flowId: String, token: String, wabaAccountId: String? = nil, completion: @escaping (_ data: CreateGroups200Response?, _ error: Error?) -> Void)
```

Get Flow Details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let flowId = "flowId_example" // String | Flow ID
let token = "token_example" // String | JWT token or API key for authorization
let wabaAccountId = "wabaAccountId_example" // String |  (optional)

// Get Flow Details
FlowsAPI.getFlowsFlowId(flowId: flowId, token: token, wabaAccountId: wabaAccountId) { (response, error) in
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
 **flowId** | **String** | Flow ID | 
 **token** | **String** | JWT token or API key for authorization | 
 **wabaAccountId** | **String** |  | [optional] 

### Return type

[**CreateGroups200Response**](CreateGroups200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFlowsFlowIdPreview**
```swift
    open class func getFlowsFlowIdPreview(flowId: String, token: String, wabaAccountId: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Preview Flow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let flowId = "flowId_example" // String | Flow ID
let token = "token_example" // String | JWT token or API key for authorization
let wabaAccountId = "wabaAccountId_example" // String |  (optional)

// Preview Flow
FlowsAPI.getFlowsFlowIdPreview(flowId: flowId, token: token, wabaAccountId: wabaAccountId) { (response, error) in
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
 **flowId** | **String** | Flow ID | 
 **token** | **String** | JWT token or API key for authorization | 
 **wabaAccountId** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWhatsappBusinessEncryption**
```swift
    open class func getWhatsappBusinessEncryption(token: String, completion: @escaping (_ data: GetWhatsappBusinessEncryption200Response?, _ error: Error?) -> Void)
```

Get business encryption public key

Retrieve the WhatsApp business public key and signature status for this channel's phone number. Required before publishing or sending Flows that use data encryption. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization

// Get business encryption public key
FlowsAPI.getWhatsappBusinessEncryption(token: token) { (response, error) in
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

[**GetWhatsappBusinessEncryption200Response**](GetWhatsappBusinessEncryption200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFlows**
```swift
    open class func listFlows(token: String, wabaAccountId: String? = nil, completion: @escaping (_ data: ListFlows200Response?, _ error: Error?) -> Void)
```

List Flows

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let wabaAccountId = "wabaAccountId_example" // String |  (optional)

// List Flows
FlowsAPI.listFlows(token: token, wabaAccountId: wabaAccountId) { (response, error) in
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
 **wabaAccountId** | **String** |  | [optional] 

### Return type

[**ListFlows200Response**](ListFlows200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchFlowsFlowIdAssets**
```swift
    open class func patchFlowsFlowIdAssets(flowId: String, token: String, wabaAccountId: String? = nil, completion: @escaping (_ data: PatchFlowsFlowIdAssets200Response?, _ error: Error?) -> Void)
```

Update Flow Structure

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let flowId = "flowId_example" // String | Flow ID
let token = "token_example" // String | JWT token or API key for authorization
let wabaAccountId = "wabaAccountId_example" // String |  (optional)

// Update Flow Structure
FlowsAPI.patchFlowsFlowIdAssets(flowId: flowId, token: token, wabaAccountId: wabaAccountId) { (response, error) in
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
 **flowId** | **String** | Flow ID | 
 **token** | **String** | JWT token or API key for authorization | 
 **wabaAccountId** | **String** |  | [optional] 

### Return type

[**PatchFlowsFlowIdAssets200Response**](PatchFlowsFlowIdAssets200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchFlowsFlowIdMetadata**
```swift
    open class func patchFlowsFlowIdMetadata(flowId: String, token: String, wabaAccountId: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update Flow Metadata

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let flowId = "flowId_example" // String | Flow ID
let token = "token_example" // String | JWT token or API key for authorization
let wabaAccountId = "wabaAccountId_example" // String |  (optional)

// Update Flow Metadata
FlowsAPI.patchFlowsFlowIdMetadata(flowId: flowId, token: token, wabaAccountId: wabaAccountId) { (response, error) in
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
 **flowId** | **String** | Flow ID | 
 **token** | **String** | JWT token or API key for authorization | 
 **wabaAccountId** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setWhatsappBusinessEncryption**
```swift
    open class func setWhatsappBusinessEncryption(token: String, setWhatsappBusinessEncryptionRequest: SetWhatsappBusinessEncryptionRequest, completion: @escaping (_ data: CreateCommerce200Response?, _ error: Error?) -> Void)
```

Set business encryption public key

Upload and sign a 2048-bit RSA business public key (PEM) for this channel's phone number. Meta requires a signed key before Flow publish/send. Only one active key per number; a new upload replaces the previous key. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization
let setWhatsappBusinessEncryptionRequest = setWhatsappBusinessEncryption_request(businessPublicKey: "businessPublicKey_example") // SetWhatsappBusinessEncryptionRequest | 

// Set business encryption public key
FlowsAPI.setWhatsappBusinessEncryption(token: token, setWhatsappBusinessEncryptionRequest: setWhatsappBusinessEncryptionRequest) { (response, error) in
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
 **setWhatsappBusinessEncryptionRequest** | [**SetWhatsappBusinessEncryptionRequest**](SetWhatsappBusinessEncryptionRequest.md) |  | 

### Return type

[**CreateCommerce200Response**](CreateCommerce200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

