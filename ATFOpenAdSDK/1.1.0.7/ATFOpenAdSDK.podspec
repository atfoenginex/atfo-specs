Pod::Spec.new do |s|
  s.name         = 'ATFOpenAdSDK'
  s.version      = '1.1.0.7'
  s.summary      = 'Open Ad SDK'
  s.homepage     = 'https://cxwlad.com/'
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
              © 2025-2026 cxwl. All rights reserved.
    LICENSE
  }
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  s.authors      = { 'cxwl' => 'cxwl@cxwlad.com' }
  s.source       = { :http => 'https://maven.cxwlad.com/repository/atfo-sdk-static/Public/SDK/1.1.0.7/ATFOpenAdSDK.zip' }
  s.vendored_frameworks = 'ATFOpenAdSDK.framework'
  s.resource_bundles = {
    'ATFOCore' => ['ATFOCore.bundle']
  }
  s.dependency 'CocoaLumberjack', '~> 3.8.0'
  s.dependency 'SDWebImage', '~> 3.7.6'
  s.frameworks = 'UIKit', 'Security', 'JavaScriptCore', 'AssetsLibrary', 'Photos', 'StoreKit', 'QuartzCore', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'Foundation', 'AdSupport', 'AudioToolbox', 'CFNetwork'
  s.libraries = 'bz2'
  s.requires_arc = true
  s.xcconfig   =  {'OTHER_LDFLAGS' => '-lObjC' }
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

end
