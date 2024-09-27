Pod::Spec.new do |s|
  s.name         = "smaato-om-js"
  s.version      = "1.5.2"
  s.summary      = "OpenMeasurement javascript for Smaato SDKs"
  s.description  = <<-DESC
                    OpenMeasurement javascript for Smaato SDKs
                   DESC
  s.homepage     = "https://github.com/vervegroup/projects/NGSDK/repos/ng-sdk-om-js/browse"
  s.license      = 'MIT'
  s.author       = 'Amit.angarkar@smaato.com'
  s.source       = { :git => "git@github.com:vervegroup/ng-sdk-om-js.git"}
  s.ios.deployment_target  = '12.0'
  s.source_files = 'ios/*.h'
end
