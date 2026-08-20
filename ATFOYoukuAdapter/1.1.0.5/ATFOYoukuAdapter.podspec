Pod::Spec.new do |s|
  s.name         = 'ATFOYoukuAdapter'
  s.version      = '1.1.0.5'
  s.summary      = 'Open Ad Youku Adapter'
  s.homepage     = 'https://cxwlad.com/'
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
              © 2026 cxwl. All rights reserved.
    LICENSE
  }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.authors      = { 'cxwl' => 'datu@cxwl.com' }
  s.source       = { :http => 'https://maven.cxwlad.com/repository/atfo-sdk-static/Public/SDK/1.1.0.5/ATFOYoukuAdapter.zip' }

  s.dependency 'ATFOpenAdSDK', '~> 1.2.0'

  s.vendored_frameworks = [
    'ATFOYoukuAdapter.xcframework',
    'OneAdSDK.xcframework',
    'ATokenSDK.xcframework'
  ]
  s.resources = 'XrsImage.bundle'
  s.frameworks = 'UIKit',
                 'Foundation',
                 'WebKit',
                 'AVFoundation',
                 'StoreKit',
                 'AdSupport',
                 'AppTrackingTransparency',
                 'Security',
                 'SystemConfiguration',
                 'CoreTelephony',
                 'CoreLocation',
                 'SafariServices',
                 'AudioToolbox',
                 'CFNetwork',
                 'JavaScriptCore',
                 'CoreGraphics',
                 'CoreMedia',
                 'MediaPlayer',
                 'Photos',
                 'ImageIO',
                 'QuartzCore',
                 'Accelerate'
  s.libraries = 'z', 'c++', 'bz2'
  s.requires_arc = true
  s.static_framework = true
  s.xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
end
