#
# Be sure to run `pod lib lint POST.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'POST'
  s.version          = '0.1.0'
  s.summary          = 'POST is a minimal networking layer'
  s.homepage         = 'https://github.com/zydeico/POST'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zydeico' => 'zydeico@protonmail.com' }
  s.source           = { :git => 'https://github.com/zydeico/POST.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '13.0'
  s.source_files = 'POST/Classes/**/*'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'Ditto-Swift'
end
