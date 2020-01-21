#
# Be sure to run `pod lib lint LMGData.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LMGData'
  s.version          = '1.1.1-rc.2912'
  s.summary          = 'LMG iOS SDK Access Layer'
  s.description      = <<-DESC
Implements the SDK facade ojects for the LMG iOS SDK.
                       DESC

  s.homepage         = 'https://github.com/loopmediagroup/loopmediagroup-ios-beta'
  s.license          = { :type => 'Copyright', :file => 'LICENSE' }
  s.author           = { 'Loop Media Group' => 'dev@loopmediagroup.com' }
  s.source           = { :http => 'https://github.com/loopmediagroup/loopmediagroup-ios-beta/releases/download/Data-v'+String(s.version)+'/LMGData.zip' }

  s.ios.deployment_target = '9.0'
  s.source_files = 'LMGData.framework/Headers/*.{h}'
  # s.module_map = 'LMGDomain.framework/Modules/module.modulemap'
  s.preserve_paths = 'LMGData.framework'
  s.vendored_frameworks = 'LMGData.framework'

  s.dependency 'SnowplowTracker', '~> 0.9.0'
  s.dependency 'FXKeychain', '~> 1.5'
  s.ios.framework = 'Foundation', 'MapKit', 'CoreData', 'CoreLocation'
  
  # These are automatically exported in the umbrella.h
  s.public_header_files = [
    'LMGData.framework/Headers/*.{h}'
  ]
  
end
