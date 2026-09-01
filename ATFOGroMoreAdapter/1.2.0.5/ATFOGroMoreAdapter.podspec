Pod::Spec.new do |s|
  s.name         = 'ATFOGroMoreAdapter'
  s.version      = '1.2.0.5'
  s.summary      = 'Open Ad GroMore Adapter'
  s.homepage     = 'https://cxwlad.com/'
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
              © 2025-2026 cxwl. All rights reserved.
    LICENSE
  }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.authors      = { 'cxwl' => 'cxwl@cxwlad.com' }
  s.source       = { :http => 'https://maven.cxwlad.com/repository/atfo-sdk-static/Public/SDK/1.2.0.5/ATFOGroMoreAdapter.zip' }
  s.dependency 'ATFOpenAdSDK', '~> 1.2.0'
  s.dependency 'Ads-CN/BUAdSDK', '7.2.0.9'
  s.dependency 'Ads-CN/CSJMediation', '7.2.0.9'
  s.vendored_frameworks = 'ATFOGroMoreAdapter.xcframework'
  s.libraries = 'bz2'
  s.requires_arc = true
  s.xcconfig   =  {'OTHER_LDFLAGS' => '-lObjC' }
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
end
