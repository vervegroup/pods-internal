Pod::Spec.new do |s|
s.name             = "smaato-ios-sdk-mediation-applovin"
s.version          = "13.0.0.1"
s.summary          = "Smaato iOS SDK Custom Network Adapters (Mediation) for AppLovin"
s.homepage         = "https://www.smaato.com/"
s.license          = { "type" => "MIT", "file" => "LICENSE.txt" }
s.author           = { "Smaato" => "amit.angarkar@smaato.com" }
s.platform         = :ios, '12.0'
s.requires_arc     = true
s.source           = { :git => "https://github.com/vervegroup/smaato-ios-sdk-mediation-applovin.git", :tag => '13.0.0.1' }
s.default_subspecs = 'Adapters'
s.static_framework = true
s.xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
s.dependency "AppLovinSDK", "13.0.0"

s.subspec 'Adapters' do |adapters|
    adapters.dependency "smaato-ios-sdk", ">= 22.8.4"
    adapters.source_files = "SmaatoSDKAdapters/ApplovinWaterfall/*.{h,m}"
end

end

