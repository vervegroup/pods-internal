Pod::Spec.new do |s|
s.name             = "smaato-ios-sdk-dev"
s.version          = "0.1.0-20180718.105833"
s.summary          = "Smaato iOS SDK Dev"


s.homepage         = "https://www.smaato.com/"
s.license          = { "type" => "MIT", "file" => "LICENSE.txt" }
s.author           = { "Smaato" => "support@smaato.com" }

s.platform         = :ios, '8.0'
s.requires_arc     = true
s.source           = { :http => "https://s3.amazonaws.com/smaato-sdk-releases-internal/ios/smaato-ios-sdk-0.1.0-20180718.105833.zip" }
s.default_subspecs = 'Core'

s.subspec 'Full' do |full|
  full.dependency 'smaato-ios-sdk-dev/Core'
  full.dependency 'smaato-ios-sdk-dev/Video'
  full.dependency 'smaato-ios-sdk-dev/Display'
  full.dependency 'smaato-ios-sdk-dev/Image'
end

s.subspec 'Core' do |core|
  core.frameworks = ["AdSupport", "CoreLocation", "CoreTelephony", "Foundation", "SafariServices", "StoreKit", "SystemConfiguration", "UIKit", "WebKit"]
  core.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
  core.vendored_frameworks = 'SomaSDKCore.framework'
end

s.subspec 'Display' do |display|
  display.dependency 'smaato-ios-sdk-dev/Core'
  display.vendored_frameworks = 'SomaDisplay.framework'
end

s.subspec 'Image' do |image|
  image.dependency 'smaato-ios-sdk-dev/Core'
  image.dependency 'smaato-ios-sdk-dev/Display'
  image.vendored_frameworks = 'SomaImage.framework'
end

s.subspec 'Video' do |video|
  video.dependency 'smaato-ios-sdk-dev/Core'
  video.vendored_frameworks = 'SomaVideo.framework'
end

end
