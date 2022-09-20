#
# Be sure to run `pod lib lint LMGData.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LMGData'
  s.version          = '2.0.0-rc.2'
  s.summary          = 'LMG iOS SDK Access Layer'
  s.description      = <<-DESC
Implements the SDK facade ojects for the LMG iOS SDK.
                       DESC

  s.homepage         = 'https://github.com/loopmediagroup/loopmediagroup-ios-beta'
  s.license          = { :type => 'Copyright', :file => 'LICENSE' }
  s.author           = { 'Loop Media Group' => 'dev@loopmediagroup.com' }
  s.source           = { :http => 'https://github.com/loopmediagroup/loopmediagroup-ios-beta/releases/download/Data-v'+String(s.version)+'/LMGData.zip' }
  s.info_plist       = { 'LMGProductVersion' => String(s.version) }

  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'LMGData.xcframework'

  s.ios.framework = 'Foundation', 'MapKit', 'CoreLocation'
  s.dependency 'SnowplowTracker', '~> 2.0'
end
