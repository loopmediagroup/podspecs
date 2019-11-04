#
# Be sure to run `pod lib lint LMGUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LMGUI'
  s.version          = '1.0.2-rc.2404'
  s.summary          = 'UI Components for LMG iOS SDK'
  s.description      = <<-DESC
All the pre-build UI components, Views and user flows for the LMG iOS Platform SDK.
                       DESC

  s.homepage         = 'https://github.com/loopmediagroup/loopmediagroup-ios-beta'
  s.license          = { :type => 'Copyright', :file => 'LICENSE' }
  s.author           = { 'Loop Media Group' => 'dev@loopmediagroup.com' }
  s.source           = { :http => 'https://github.com/loopmediagroup/loopmediagroup-ios-beta/releases/download/UI-v'+String(s.version)+'/LMGUI.zip' }

  s.ios.deployment_target = '9.0'
  s.source_files = 'LMGUI.framework/Headers/*.{h}'
  s.resources = ['LMGUI.framework/Assets.car']
  s.preserve_paths = 'LMGUI.framework'
  s.vendored_frameworks = 'LMGUI.framework'

  s.public_header_files = 'LMGUI.framework/Headers/*.{h}'
  s.frameworks = ['UIKit', 'CoreLocation', 'MapKit']

  s.dependency 'LMGData', '1.0.2-rc.2404'
  s.dependency 'SDWebImage', '4.4.2'
  s.dependency 'FBAnnotationClustering', '0.2.2'
  
end
