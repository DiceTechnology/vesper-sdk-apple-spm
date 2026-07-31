#
# Be sure to run `pod lib lint AVDoris.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

release = '3.1.0'

Pod::Spec.new do |spec|
  spec.name             = 'VesperSDK'
  spec.version          = release
  spec.summary          = 'Umbrella framework that provides simplified access to Vesper platform features'
  spec.description      = 'Binary version of VesperSDK'

  spec.homepage         = 'https://dicetechnology.github.io/vesper-sdk-apple/'
  spec.license          = 'DiceTechnology'

  spec.author           = { 'author' => 'Endeavor Streaming' }
  spec.source           = { :http => "https://d1st2jzonb6gjl.cloudfront.net/vesper/#{release}/VesperSDK.zip" }
  spec.swift_version = '5.2'
  spec.ios.deployment_target = '14.0'
  spec.tvos.deployment_target = '16.0'

  spec.ios.vendored_frameworks = 'ios/Frameworks/*'
  spec.tvos.vendored_frameworks = 'tvos/Frameworks/*'
  spec.ios.resources = 'ios/Resources/*'
  spec.tvos.resources = 'tvos/Resources/*'

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64',
    'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'x86_64'
  }

  spec.ios.dependency 'GoogleAds-IMA-iOS-SDK', '~> 3.22'
  spec.tvos.dependency 'GoogleAds-IMA-tvOS-SDK', '~> 4.12'
  spec.dependency 'ConvivaAVFoundation', '>= 4.0.51', '< 4.1'
  spec.dependency 'Mux-Stats-AVPlayer', '~> 3.6.0'
end