Pod::Spec.new do |s|
  s.name         = "smaato-mraid"
  s.version      = "3.0.2"
  s.summary      = "Mraid javascript for smaato SDKs"
  s.description  = <<-DESC
                    Mraid javascript for smaato SDKs
                   DESC
  s.homepage     = "https://bitbucket.smaato.net/projects/SDK/repos/mraid/browse"
  s.license      = 'MIT'
  s.author       = 'viacheslav.leonov@smaato.com'
  s.source       = { :git => "ssh://git@bitbucket.smaato.net:7999/sdk/mraid.git",
                     :tag => s.version.to_s }
  s.ios.deployment_target  = '8.0'
  s.source_files = 'ios/*.h'
end
