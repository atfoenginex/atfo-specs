Pod::Spec.new do |s|
  s.name         = 'ATFOGroMoreAdapter'
  s.version      = '1.4.0.0'
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
  s.source       = { :http => 'https://maven.cxwlad.com/repository/atfo-sdk-static/Public/SDK/1.4.0.0/ATFOGroMoreAdapter.zip' }
  s.dependency 'ATFOpenAdSDK', '~> 1.4.0'
  s.dependency 'Ads-CN/CSJMediation-Only', '7.8.0.5'
  s.vendored_frameworks = 'ATFOGroMoreAdapter.xcframework'
  s.libraries = 'bz2'
  s.requires_arc = true
  s.xcconfig   =  {'OTHER_LDFLAGS' => '-ObjC' }
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-package-name atfopensdk -Xcc -Wno-error=non-modular-include-in-framework-module',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
end
