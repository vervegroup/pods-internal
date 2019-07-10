Pod::Spec.new do |s|
s.name             = "VastTestXMLBuilder"
s.version          = "0.1.0"
s.summary          = "VastTestXMLBuilder"


s.homepage         = "https://www.smaato.com/"
s.license          = { "type" => "MIT", "file" => "LICENSE.txt" }
s.author           = { "Smaato" => "support@smaato.com" }

s.platform         = :ios, '8.0'
s.requires_arc     = true
s.source           = { :git => 'ssh://git@bitbucket.smaato.net:7999/ngsdk/vasttestxmlbuilder-swift.git', :tag => s.version.to_s }
s.source_files = 'VastTestXMLBuilder/**/*.swift'
s.dependency 'XMLMapper', '1.5.1'
end
