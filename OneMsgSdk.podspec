Pod::Spec.new do |s|
  s.name = 'OneMsgSdk'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  s.version = '1.1.1'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.0.0' }
  s.authors = '1MSG'
  s.license = MIT
  s.homepage = 'https://github.com/1msg/1msg-sdk-swift'
  s.summary = 'OneMsgSdk'
  s.description = '&quot;Official Swift SDK for the 1msg WhatsApp Business API&quot;'
  s.source_files = 'Sources/OneMsgSdk/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
