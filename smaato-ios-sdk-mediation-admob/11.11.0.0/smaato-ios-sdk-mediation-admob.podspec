Pod::Spec.new do |s|
s.name             = "smaato-ios-sdk-mediation-admob"
s.version          = "11.11.0.0"
s.summary          = "Google mobile ads adapter used for mediation with the Smaato SDK"
s.homepage         = "https://www.smaato.com/"
s.license          = { "type" => "MIT", "file" => "LICENSE.txt" }
s.author           = { "Smaato" => "ashwinee.mhaske@smaato.com" }
s.platform         = :ios, '12.0'
s.requires_arc     = true
s.source           = { :git => "https://github.com/vervegroup/ios-sdk-mediation-admob.git", :tag => '11.11.0.0' }
s.default_subspecs = 'Adapters'
s.static_framework = true
s.xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
s.dependency "Google-Mobile-Ads-SDK", "11.11.0"

s.subspec 'Adapters' do |adapters|
    adapters.dependency "smaato-ios-sdk","22.9.3-beta.132"
    adapters.dependency 'smaato-ios-sdk-mediation-admob/Banner'
    adapters.dependency 'smaato-ios-sdk-mediation-admob/Interstitial'
    adapters.dependency 'smaato-ios-sdk-mediation-admob/RewardedAds'
    adapters.dependency 'smaato-ios-sdk-mediation-admob/Native'
end

s.subspec 'Banner' do |banner|
    banner.dependency "smaato-ios-sdk/Banner", "22.9.3-beta.132"
    banner.source_files = "SmaatoSDKAdapters/Banner/*.{h,m}"
  end

  s.subspec 'Interstitial' do |interstitial|
    interstitial.dependency "smaato-ios-sdk/Interstitial", "22.9.3-beta.132"
    interstitial.source_files = "SmaatoSDKAdapters/Interstitial/*.{h,m}"
  end

  s.subspec 'RewardedAds' do |rewardedads|
    rewardedads.dependency "smaato-ios-sdk/RewardedAds", "22.9.3-beta.132"
    rewardedads.source_files = "SmaatoSDKAdapters/RewardedVideo/*.{h,m}"
  end

  s.subspec 'Native' do |native|
    native.dependency "smaato-ios-sdk/Native", "22.9.3-beta.132"
    native.source_files = "SmaatoSDKAdapters/Native/*.{h,m}"
  end

end


