Pod::Spec.new do |s|
  s.name         = 'ATFOSigmobAdapter'
  s.version      = '1.0.0.2'
  s.summary      = 'Open Ad Sigmob Adapter'
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
  s.source       = { :http => 'https://maven.cxwlad.com/repository/atfo-sdk-static/Public/SDK/1.0.0.2/ATFOSigmobAdapter.zip' }
  s.dependency 'ATFOpenAdSDK', '~> 1.2.0'
  s.dependency 'SigmobAd-iOS', '4.12.1'
  s.vendored_frameworks = 'ATFOSigmobAdapter.xcframework'
  s.libraries = 'bz2', 'z', 'sqlite3'
  s.requires_arc = true
  s.xcconfig   =  {'OTHER_LDFLAGS' => '-ObjC' }
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
end
