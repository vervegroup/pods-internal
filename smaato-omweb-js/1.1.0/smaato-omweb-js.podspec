Pod::Spec.new do |s|
  s.name         = "smaato-omweb-js"
  s.version      = "1.1.0"
  s.summary      = "OpenMeasurement javascript for Smaato SDKs"
  s.description  = <<-DESC
                    OpenMeasurement javascript for Smaato SDKs
                   DESC
  s.homepage     = "https://github.com/vervegroup/projects/NGSDK/repos/ng-sdk-omweb-js/browse"
  s.license      = 'MIT'
  s.author       = 'Amit.angarkar@smaato.com'
  s.source       = { :git => "git@github.com:vervegroup/ng-sdk-omweb-js.git"}
  s.ios.deployment_target  = '11.0'
  s.source_files = 'ios/*.h'
end
