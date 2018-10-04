Pod::Spec.new do |s|
  s.name         = "smaato-mraid"
  s.version      = "1.0.0"
  s.summary      = "Mraid javascript for smaato SDKs"
  s.description  = <<-DESC
                    Mraid javascript for smaato SDKs
                   DESC
  s.homepage     = "https://bitbucket.smaato.net/projects/SDK/repos/mraid/browse"
  s.license      = 'MIT'
  s.author       = 'viacheslav.leonov@smaato.com'
  s.source       = { :git => "ssh://git@bitbucket.smaato.net:7999/sdk/mraid.git",
                     :branch => 'nextgen' }
  s.ios.deployment_target  = '8.0'
  s.source_files = 'src/*.js', 'dist/*.js'
end
