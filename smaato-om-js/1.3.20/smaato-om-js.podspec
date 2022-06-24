Pod::Spec.new do |s|
  s.name         = "smaato-om-js"
  s.version      = "1.3.20"
  s.summary      = "OpenMeasurement javascript for Smaato SDKs"
  s.description  = <<-DESC
                    OpenMeasurement javascript for Smaato SDKs
                   DESC
  s.homepage     = "https://bitbucket.smaato.net/projects/NGSDK/repos/ng-sdk-om-js/browse"
  s.license      = 'MIT'
  s.author       = 'siarhei.barmotska@smaato.com'
  s.source       = { :git => "ssh://git@bitbucket.smaato.net:7999/ngsdk/ng-sdk-om-js.git"}
  s.ios.deployment_target  = '8.0'
  s.source_files = 'ios/*.h'
end
