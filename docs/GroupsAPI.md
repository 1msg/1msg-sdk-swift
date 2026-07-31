# GroupsAPI

All URIs are relative to *https://api.1msg.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroups**](GroupsAPI.md#creategroups) | **POST** /groups | Create Group
[**createGroupsGroupId**](GroupsAPI.md#creategroupsgroupid) | **POST** /groups/{groupId} | Update Group Info
[**createGroupsGroupIdInvitelink**](GroupsAPI.md#creategroupsgroupidinvitelink) | **POST** /groups/{groupId}/inviteLink | Reset Invite Link
[**deleteGroupsGroupId**](GroupsAPI.md#deletegroupsgroupid) | **DELETE** /groups/{groupId} | Delete Group
[**getGroupsGroupId**](GroupsAPI.md#getgroupsgroupid) | **GET** /groups/{groupId} | Get Group Info
[**getGroupsGroupIdInvitelink**](GroupsAPI.md#getgroupsgroupidinvitelink) | **GET** /groups/{groupId}/inviteLink | Get Invite Link
[**listGroups**](GroupsAPI.md#listgroups) | **GET** /groups | Get Groups List


# **createGroups**
```swift
    open class func createGroups(token: String, completion: @escaping (_ data: CreateGroups200Response?, _ error: Error?) -> Void)
```

Create Group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization

// Create Group
GroupsAPI.createGroups(token: token) { (response, error) in
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

[**CreateGroups200Response**](CreateGroups200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroupsGroupId**
```swift
    open class func createGroupsGroupId(groupId: String, token: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Update Group Info

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let groupId = "groupId_example" // String | 
let token = "token_example" // String | JWT token or API key for authorization

// Update Group Info
GroupsAPI.createGroupsGroupId(groupId: groupId, token: token) { (response, error) in
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
 **groupId** | **String** |  | 
 **token** | **String** | JWT token or API key for authorization | 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroupsGroupIdInvitelink**
```swift
    open class func createGroupsGroupIdInvitelink(groupId: String, token: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Reset Invite Link

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let groupId = "groupId_example" // String | 
let token = "token_example" // String | JWT token or API key for authorization

// Reset Invite Link
GroupsAPI.createGroupsGroupIdInvitelink(groupId: groupId, token: token) { (response, error) in
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
 **groupId** | **String** |  | 
 **token** | **String** | JWT token or API key for authorization | 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupsGroupId**
```swift
    open class func deleteGroupsGroupId(groupId: String, token: String, completion: @escaping (_ data: DeleteGroupsGroupId200Response?, _ error: Error?) -> Void)
```

Delete Group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let groupId = "groupId_example" // String | 
let token = "token_example" // String | JWT token or API key for authorization

// Delete Group
GroupsAPI.deleteGroupsGroupId(groupId: groupId, token: token) { (response, error) in
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
 **groupId** | **String** |  | 
 **token** | **String** | JWT token or API key for authorization | 

### Return type

[**DeleteGroupsGroupId200Response**](DeleteGroupsGroupId200Response.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsGroupId**
```swift
    open class func getGroupsGroupId(groupId: String, token: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Get Group Info

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let groupId = "groupId_example" // String | 
let token = "token_example" // String | JWT token or API key for authorization

// Get Group Info
GroupsAPI.getGroupsGroupId(groupId: groupId, token: token) { (response, error) in
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
 **groupId** | **String** |  | 
 **token** | **String** | JWT token or API key for authorization | 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsGroupIdInvitelink**
```swift
    open class func getGroupsGroupIdInvitelink(groupId: String, token: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Get Invite Link

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let groupId = "groupId_example" // String | 
let token = "token_example" // String | JWT token or API key for authorization

// Get Invite Link
GroupsAPI.getGroupsGroupIdInvitelink(groupId: groupId, token: token) { (response, error) in
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
 **groupId** | **String** |  | 
 **token** | **String** | JWT token or API key for authorization | 

### Return type

**[String: AnyCodable]**

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroups**
```swift
    open class func listGroups(token: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Get Groups List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OneMsgSdk

let token = "token_example" // String | JWT token or API key for authorization

// Get Groups List
GroupsAPI.listGroups(token: token) { (response, error) in
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

