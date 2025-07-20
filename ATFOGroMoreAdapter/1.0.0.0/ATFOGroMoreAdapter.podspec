Pod::Spec.new do |s|
  s.name         = 'ATFOGroMoreAdapter'
  s.version      = '1.0.0.0'
  s.summary      = 'Open Ad ATFOGroMoreAdapter'
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
  s.source       = { :http => 'http://47.94.123.42:8081/repository/atfo-sdk-static/Public/SDK/1.0.0.0/SDK.zip' }
  s.dependency 'ATFOpenAdSDK', '1.0.0.0'
  s.dependency 'Ads-CN-Beta/BUAdSDK', '6.9.0.5'
  s.dependency 'Ads-CN-Beta/CSJMediation', '6.9.0.5'
  s.dependency 'GMKsAdapter-Beta', '3.3.76.1'
  s.vendored_frameworks = 'ATFOGroMoreAdapter.framework'
  s.libraries = 'bz2'
  s.requires_arc = true
  s.xcconfig   =  {'OTHER_LDFLAGS' => '-lObjC' }
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

end
