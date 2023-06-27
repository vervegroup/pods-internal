Pod::Spec.new do |s|
  s.name         = "smaato-mraid"
  s.version      = "3.0.6"
  s.summary      = "Mraid javascript for smaato SDKs"
  s.description  = <<-DESC
                    Mraid javascript for smaato SDKs
                   DESC
  s.homepage     = "https://github.com/vervegroup/mraid"
  s.license      = 'MIT'
  s.author       = 'viacheslav.leonov@smaato.com'
  s.source       = { :git => "git@github.com:vervegroup/mraid.git",
                     :tag => s.version.to_s }
  s.ios.deployment_target  = '8.0'
  s.source_files = 'ios/*.h'
end
