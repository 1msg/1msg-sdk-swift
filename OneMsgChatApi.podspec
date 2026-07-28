Pod::Spec.new do |s|
  s.name = 'OneMsgChatApi'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  s.version = '1.0.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.0.0' }
  s.authors = '1MSG'
  s.license = UNLICENSED
  s.homepage = 'https://github.com/1msg/chat-api-swift'
  s.summary = 'OneMsgChatApi'
  s.description = 'OneMsgChatApi'
  s.source_files = 'Sources/OneMsgChatApi/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
