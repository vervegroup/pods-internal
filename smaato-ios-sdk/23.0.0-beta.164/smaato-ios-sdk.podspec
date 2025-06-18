Pod::Spec.new do |s|
s.name             = "smaato-ios-sdk"
s.version      = "23.0.0-beta.164"
s.summary          = "Smaato iOS SDK"
s.homepage         = "https://www.smaato.com/"
s.license          = { "type" => "MIT", "file" => "LICENSE.txt" }
s.author           = { "Smaato" => "ashwinee.mhaske@smaato.com" }

s.platform         = :ios, '11.0'
s.requires_arc     = true
s.source           = { :git => "https://github.com/vervegroup/Smaato-ios-sdk-standalone.git" , :tag => '23.0.0-beta.164' }
s.static_framework = false
s.default_subspecs = 'Full'

s.subspec 'Full' do |full|
  full.dependency 'smaato-ios-sdk/Banner'
  full.dependency 'smaato-ios-sdk/Interstitial'
  full.dependency 'smaato-ios-sdk/RewardedAds'
  full.dependency 'smaato-ios-sdk/Native'
end

s.subspec 'Banner' do |banner|
  banner.dependency 'smaato-ios-sdk/Modules/Core'
  banner.dependency 'smaato-ios-sdk/InApp'
  banner.dependency 'smaato-ios-sdk/Modules/Banner'
end

s.subspec 'Interstitial' do |interstitial|
  interstitial.dependency 'smaato-ios-sdk/Modules/Interstitial'
  interstitial.dependency 'smaato-ios-sdk/InApp'
end

s.subspec 'RewardedAds' do |rewardedads|
  rewardedads.dependency 'smaato-ios-sdk/Modules/RewardedAds'
    rewardedads.dependency 'smaato-ios-sdk/InApp'
end

s.subspec 'Native' do |native|
  native.dependency 'smaato-ios-sdk/Modules/Core'
  native.dependency 'smaato-ios-sdk/Modules/Native'
  native.dependency 'smaato-ios-sdk/InApp'
end

s.subspec 'InApp' do |i|
  i.dependency 'smaato-ios-sdk/Modules/Core'
  i.vendored_frameworks = 'SmaatoSDKInAppBidding.xcframework'
end

s.subspec 'Modules' do |m|

    m.subspec 'Core' do |core|
      core.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
            core.vendored_frameworks = ['SmaatoSDKCore.xcframework', 'Smaato_HyBid.xcframework', 'OMSDK-Smaato-1.5.2/OMSDK_Smaato.xcframework']
    end

    m.subspec 'Banner' do |banner|
      banner.dependency 'smaato-ios-sdk/Modules/Core'
      banner.vendored_frameworks = 'SmaatoSDKBanner.xcframework'
    end

    m.subspec 'Native' do |native|
      native.dependency 'smaato-ios-sdk/Modules/Core'
      native.vendored_frameworks = 'SmaatoSDKNative.xcframework'
    end

    m.subspec 'Interstitial' do |interstitial|
      interstitial.dependency 'smaato-ios-sdk/Modules/Core'
      interstitial.vendored_frameworks = 'SmaatoSDKInterstitial.xcframework'
    end

    m.subspec 'UnifiedBidding' do |unifiedbidding|
      unifiedbidding.dependency 'smaato-ios-sdk/Modules/Core'
      unifiedbidding.vendored_frameworks = 'SmaatoSDKUnifiedBidding.xcframework'
    end

    m.subspec 'RewardedAds' do |rewardedads|
      rewardedads.dependency 'smaato-ios-sdk/Modules/Core'
      rewardedads.vendored_frameworks = 'SmaatoSDKRewardedAds.xcframework'
    end
end
end

