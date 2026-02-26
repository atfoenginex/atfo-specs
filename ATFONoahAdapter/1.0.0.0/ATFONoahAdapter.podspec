Pod::Spec.new do |s|
  s.name         = 'ATFONoahAdapter'
  s.version      = '1.0.0.0'
  s.summary      = 'Open Ad noah Adapter'
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
  s.source       = { :http => 'https://maven.cxwlad.com/repository/atfo-sdk-static/Public/SDK/1.0.0.0/ATFONoahAdapter.zip' }
  s.dependency 'ATFOpenAdSDK', '~> 1.2.0'
  s.dependency "YYModel"
  s.dependency "SDWebImage"
  s.dependency "AFNetworking"
  s.vendored_frameworks = 'ATFONoahAdapter.framework'
  s.libraries = 'c++abi', 'sqlite3', 'c++', 'xml2', 'resolv', 'bz2.1.0', 'z', 'resolv.9'
  s.frameworks = 'UIKit', 'Foundation', 'CoreTelephony', 'SystemConfiguration', 'WebKit', 'ImageIO', 'Accelerate', 'Photos', 'AssetsLibrary', 'CoreServices', 'AddressBook', 'AVKit', 'CoreData', 'Security', 'CoreGraphics', 'MobileCoreServices', 'MessageUI', 'SafariServices', 'StoreKit', 'AVFoundation', 'MediaPlayer', 'JavaScriptCore', 'QuickLook', 'CoreMotion', 'CoreMedia', 'CoreLocation', 'MapKit', 'AdSupport', 'AppTrackingTransparency'
  s.weak_frameworks = 'DeviceCheck'
  s.requires_arc = true
  s.xcconfig   =  {'OTHER_LDFLAGS' => '-lObjC' }
  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

end
