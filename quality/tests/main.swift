import Foundation
import OneMsgSdk

/// Throw for failed wire invariants in release builds too; this smoke needs no XCTest SDK.
func requireContract(_ condition: Bool, _ message: String) throws {
    if !condition { throw NSError(domain: "OneMsgSdkContractSmoke", code: 1, userInfo: [NSLocalizedDescriptionKey: message]) }
}

let message = SendMessageRequest(body: "Hello 👋", chatId: "12020721369@c.us")
let data = try JSONEncoder().encode(message)
guard let payload = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
    fatalError("model must encode an object")
}
try requireContract(payload["body"] as? String == "Hello 👋", "required body changed")
try requireContract(payload["chatId"] as? String == "12020721369@c.us", "wire name changed")
try requireContract(payload["phone"] == nil && payload["quotedMsgId"] == nil, "unset optionals must be omitted")
let decoded = try JSONDecoder().decode(SendMessageRequest.self, from: data)
try requireContract(decoded == message, "request does not round-trip")
for wire in ["{}", "{\"body\":null}"] {
    var rejected = false
    do { _ = try JSONDecoder().decode(SendMessageRequest.self, from: Data(wire.utf8)) }
    catch { rejected = true }
    try requireContract(rejected, "missing/null required body accepted")
}
// Exercise newly generated union alternatives so invalid generator case names cannot recur unnoticed.
for wire in ["\"https://example.test/hook\"", "[\"https://example.test/one\",\"https://example.test/two\"]"] {
    let union = try JSONDecoder().decode(SetWebhookRequestWebhookUrl.self, from: Data(wire.utf8))
    let encoded = try JSONEncoder().encode(union)
    try requireContract(try JSONDecoder().decode(SetWebhookRequestWebhookUrl.self, from: encoded) == union, "webhook union does not round-trip")
}
let contact = try JSONDecoder().decode(SendContactRequestContactName.self, from: Data("{\"formatted_name\":\"Contact\"}".utf8))
let contactData = try JSONEncoder().encode(contact)
try requireContract(try JSONDecoder().decode(SendContactRequestContactName.self, from: contactData) == contact, "contact object union does not round-trip")
print("offline SDK contract smoke passed")
