Pod::Spec.new do |s|
s.name             = "smaato-ios-sdk-mediation-admob"
s.version          = "11.3.0.0"
s.summary          = "Google mobile ads adapter used for mediation with the Smaato SDK"
s.homepage         = "https://www.smaato.com/"
s.license          = { "type" => "MIT", "file" => "LICENSE.txt" }
s.author           = { "Smaato" => "amit.angarkar@smaato.com" }
s.platform         = :ios, '12.0'
s.requires_arc     = true
s.source           = { :git => "https://github.com/smaato/ios-sdk-mediation-admob.git", :tag => '11.3.0.0' }
s.default_subspecs = 'Adapters'
s.static_framework = true
s.xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
s.dependency "Google-Mobile-Ads-SDK", "11.3.0"

s.subspec 'Adapters' do |adapters|
    adapters.dependency "smaato-ios-sdk", ">= 22.8.3"
    adapters.dependency 'smaato-ios-sdk-mediation-admob/Banner'
    adapters.dependency 'smaato-ios-sdk-mediation-admob/Interstitial'
    adapters.dependency 'smaato-ios-sdk-mediation-admob/RewardedAds'
    adapters.dependency 'smaato-ios-sdk-mediation-admob/Native'
end

s.subspec 'Banner' do |banner|
    banner.dependency "smaato-ios-sdk/Banner", ">= 22.8.3"
    banner.source_files = "SmaatoSDKAdapters/AdMob/Banner/*.{h,m}"
end

s.subspec 'Interstitial' do |interstitial|
    interstitial.dependency "smaato-ios-sdk/Interstitial", ">= 22.8.3"
    interstitial.source_files = "SmaatoSDKAdapters/AdMob/Interstitial/*.{h,m}"
end

s.subspec 'RewardedAds' do |rewardedads|
    rewardedads.dependency "smaato-ios-sdk/RewardedAds", ">= 22.8.3"
    rewardedads.source_files = "SmaatoSDKAdapters/AdMob/RewardedVideo/*.{h,m}"
end

s.subspec 'Native' do |native|
    native.dependency "smaato-ios-sdk/Native", ">= 22.8.3"
    native.source_files = "SmaatoSDKAdapters/AdMob/Native/*.{h,m}"
end

s.subspec 'CSM' do |csm|
    csm.subspec 'Banner' do |b|
        b.dependency "smaato-ios-sdk/Banner", ">= 22.8.3"
        b.vendored_frameworks = "SmaatoSDKAdMobCSMBannerAdapter.xcframework"
    end

    csm.subspec 'Interstitial' do |i|
        i.dependency "smaato-ios-sdk/Interstitial", ">= 22.8.3"
        i.vendored_frameworks = "SmaatoSDKAdMobCSMInterstitialAdapter.xcframework"
    end

    csm.subspec 'RewardedVideo' do |r|
        r.dependency "smaato-ios-sdk/RewardedAds", ">= 22.8.3"
        r.vendored_frameworks = "SmaatoSDKAdMobCSMRewardedVideoAdapter.xcframework"
    end
end

end

