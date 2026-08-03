Pod::Spec.new do |s|
  s.name         = 'ATFOBaiduAdapter'
  s.version      = '1.2.0.3'
  s.summary      = 'Open Ad Baidu Adapter'
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
  s.source       = { :http => 'https://maven.cxwlad.com/repository/atfo-sdk-static/Public/SDK/1.2.0.3/ATFOBaiduAdapter.zip' }
  s.dependency 'ATFOpenAdSDK', '~> 1.2.0'
  s.dependency 'BaiduMobAdSDK', '10.050'
  s.vendored_frameworks = 'ATFOBaiduAdapter.xcframework'
  s.libraries = 'bz2'
  s.requires_arc = true
  s.xcconfig   =  {'OTHER_LDFLAGS' => '-lObjC' }
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
end
