#
# Be sure to run `pod lib lint TQIExtractDIO.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TQIExtractDIO'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TQIExtractDIO.'

  s.homepage         = 'https://github.com/tqi-gsousa/TQIExtractDIO'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tqi-gsousa' => 'tqi_gsousa@uolinc.com' }
  s.source           = { :git => 'https://github.com/tqi-gsousa/TQIExtractDIO.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.static_framework = true
  s.platform      = :ios
  s.swift_version = '5.0'
  s.ios.deployment_target = '15.0'
  
  s.source_files = 'TQIExtractDIO/Classes/**/*.{h,m,swift}'
  s.resources = [
  'TQIExtractDIO/Assets/*.xcassets',
  'TQIExtractDIO/Classes/**/*.{xib}'
  ]
   
  s.public_header_files = 'Pod/Classes/**/*.swift'

  s.dependency 'VFNetwork'
  s.dependency 'TQICoordinator'
end
