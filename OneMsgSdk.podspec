Pod::Spec.new do |s|
  s.name = 'OneMsgSdk'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  s.version = '2.0.2'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v2.0.0' }
  s.authors = '1MSG'
  s.license = MIT
  s.homepage = 'https://github.com/1msg/1msg-sdk-swift'
  s.summary = 'OneMsgSdk'
  s.description = 'Official Swift SDK for the 1msg WhatsApp Business API'
  s.source_files = 'Sources/OneMsgSdk/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
