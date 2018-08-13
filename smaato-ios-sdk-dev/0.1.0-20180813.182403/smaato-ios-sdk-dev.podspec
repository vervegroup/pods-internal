Pod::Spec.new do |s|
s.name             = "smaato-ios-sdk-dev"
s.version          = "0.1.0-20180813.182403"
s.summary          = "Smaato iOS SDK Dev"


s.homepage         = "https://www.smaato.com/"
s.license          = { "type" => "MIT", "file" => "LICENSE.txt" }
s.author           = { "Smaato" => "viacheslav.leonov@smaato.com" }

s.platform         = :ios, '8.0'
s.requires_arc     = true
s.source           = { :http => "https://s3.amazonaws.com/smaato-sdk-releases-internal/ios/smaato-ios-sdk-0.1.0-20180813.182403.zip" }
s.default_subspecs = 'Core'

s.subspec 'Full' do |full|
  full.dependency 'smaato-ios-sdk-dev/Core'
  full.dependency 'smaato-ios-sdk-dev/Video'
  full.dependency 'smaato-ios-sdk-dev/Vast'
  full.dependency 'smaato-ios-sdk-dev/Display'
  full.dependency 'smaato-ios-sdk-dev/Image'
end

s.subspec 'Core' do |core|
  core.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
  core.vendored_frameworks = 'SmaatoSDKCore.framework'
end

s.subspec 'Display' do |display|
  display.dependency 'smaato-ios-sdk-dev/Core'
  display.vendored_frameworks = 'SmaatoSDKDisplay.framework'
end

s.subspec 'Image' do |image|
  image.dependency 'smaato-ios-sdk-dev/Core'
  image.dependency 'smaato-ios-sdk-dev/Display'
  image.vendored_frameworks = 'SmaatoSDKImage.framework'
end

s.subspec 'Video' do |video|
  video.dependency 'smaato-ios-sdk-dev/Core'
  video.vendored_frameworks = 'SmaatoSDKVideo.framework'
end

s.subspec 'Vast' do |vast|
  vast.dependency 'smaato-ios-sdk-dev/Core'
  vast.dependency 'smaato-ios-sdk-dev/Video'
  vast.vendored_frameworks = 'SmaatoSDKVAST.framework'
end

end
