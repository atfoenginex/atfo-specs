Pod::Spec.new do |s|
  s.name         = 'ATFOBeiZiAdapter'
  s.version      = '1.1.0.0'
  s.summary      = 'Open Ad BeiZi Adapter'
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
  s.source       = { :http => 'https://maven.cxwlad.com/repository/atfo-sdk-static/Public/SDK/1.1.0.0/ATFOBeiZiAdapter.zip' }
  s.dependency 'ATFOpenAdSDK', '~> 1.1.0.6'
  s.dependency 'BeiZiSDK-iOS/BeiZiSDK-iOS', '4.90.6.8'
  s.vendored_frameworks = 'ATFOBeiZiAdapter.framework'
  s.libraries = 'bz2'
  s.requires_arc = true
  s.xcconfig   =  {'OTHER_LDFLAGS' => '-lObjC' }
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

end
