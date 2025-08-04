Pod::Spec.new do |s|
  s.name         = 'ATFOGDTAdapter'
  s.version      = '1.1.0.0'
  s.summary      = 'Open Ad ATFOGDTAdapter'
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
  s.source       = { :http => 'http://47.94.123.42:8081/repository/atfo-sdk-static/Public/SDK/1.1.0.0/SDK.zip' }
  s.dependency 'ATFOpenAdSDK', '1.1.0.0'
  s.dependency 'GDTMobSDK', '4.15.40'
  s.vendored_frameworks = 'ATFOGDTAdapter.framework'
  s.libraries = 'bz2'
  s.requires_arc = true
  s.xcconfig   =  {'OTHER_LDFLAGS' => '-lObjC' }
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

end
