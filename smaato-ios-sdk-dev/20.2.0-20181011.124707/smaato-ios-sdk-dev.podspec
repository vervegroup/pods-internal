Pod::Spec.new do |s|
s.name             = "smaato-ios-sdk-dev"
s.version          = "20.2.0-20181011.124707"
s.summary          = "Smaato iOS SDK Dev"


s.homepage         = "https://www.smaato.com/"
s.license          = { "type" => "MIT", "file" => "LICENSE.txt" }
s.author           = { "Smaato" => "viacheslav.leonov@smaato.com" }

s.platform         = :ios, '8.0'
s.requires_arc     = true
s.source           = { :http => "https://s3.amazonaws.com/smaato-sdk-releases-internal/ios/smaato-ios-sdk-20.2.0-20190213.124707.zip" }
s.default_subspecs = 'Full'

s.subspec 'Full' do |full|
  full.dependency 'smaato-ios-sdk-dev/Banner'
  full.dependency 'smaato-ios-sdk-dev/Interstitial'
    # full.dependency 'smaato-ios-sdk-dev/RewardedAds'
end

s.subspec 'Banner' do |banner|
  banner.dependency 'smaato-ios-sdk-dev/Modules/Core'
  banner.dependency 'smaato-ios-sdk-dev/Modules/Banner'
  banner.dependency 'smaato-ios-sdk-dev/Modules/RichMedia'
end

s.subspec 'Interstitial' do |interstitial|
  interstitial.dependency 'smaato-ios-sdk-dev/Modules/Interstitial'
  interstitial.dependency 'smaato-ios-sdk-dev/Modules/RichMedia'
  interstitial.dependency 'smaato-ios-sdk-dev/Modules/Video'
end

s.subspec 'RewardedAds' do |rewardedads|
  rewardedads.dependency 'smaato-ios-sdk-dev/Modules/RewardedAds'
  rewardedads.dependency 'smaato-ios-sdk-dev/Modules/Video'
end

s.subspec 'Modules' do |m|

    m.subspec 'Core' do |core|
      core.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
      core.vendored_frameworks = 'SmaatoSDKCore.framework'
      core.frameworks = 'StoreKit','AdSupport','SystemConfiguration','CoreTelephony','WebKit'
      core.weak_frameworks = 'SafariServices'
    end

    m.subspec 'Banner' do |banner|
      banner.dependency 'smaato-ios-sdk-dev/Modules/Core'
      banner.vendored_frameworks = 'SmaatoSDKBanner.framework'
    end

    m.subspec 'Interstitial' do |interstitial|
      interstitial.dependency 'smaato-ios-sdk-dev/Modules/Core'
      interstitial.vendored_frameworks = 'SmaatoSDKInterstitial.framework'
    end

    m.subspec 'RewardedAds' do |rewardedads|
      rewardedads.dependency 'smaato-ios-sdk-dev/Modules/Core'
      rewardedads.vendored_frameworks = 'SmaatoSDKRewardedAds.framework'
    end

    m.subspec 'RichMedia' do |richmedia|
      richmedia.dependency 'smaato-ios-sdk-dev/Modules/Core'
      richmedia.vendored_frameworks = 'SmaatoSDKRichMedia.framework'
    end

    m.subspec 'Video' do |video|
      video.dependency 'smaato-ios-sdk-dev/Modules/Core'
      video.vendored_frameworks = 'SmaatoSDKVideo.framework'
      video.frameworks = 'AVFoundation','CoreMedia'
    end

end
end
