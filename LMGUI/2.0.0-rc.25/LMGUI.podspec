#
# Be sure to run `pod lib lint LMGUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LMGUI'
  s.version          = '2.0.0-rc.25'
  s.summary          = 'UI Components for LMG iOS SDK'
  s.description      = <<-DESC
All the pre-build UI components, Views and user flows for the LMG iOS Platform SDK.
                       DESC

  s.homepage         = 'https://github.com/loopmediagroup/loopmediagroup-ios-beta'
  s.license          = { :type => 'Copyright', :file => 'LICENSE' }
  s.author           = { 'Loop Media Group' => 'dev@loopmediagroup.com' }
  s.source           = { :http => 'https://github.com/loopmediagroup/loopmediagroup-ios-beta/releases/download/UI-v'+String(s.version)+'/LMGUI.zip' }
  s.info_plist       = { 'LMGProductVersion' => String(s.version) }

  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'LMGUI.xcframework'

  s.frameworks = ['UIKit', 'CoreLocation', 'MapKit']
  s.dependency 'LMGData', '2.0.0-rc.5'
  s.dependency 'SDWebImage', '~> 5.11'
end
