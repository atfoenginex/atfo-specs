Pod::Spec.new do |s|
  s.name             = "GDTMobSDK"
  s.version          = "4.15.60.1"
  s.summary          = "GDTMobSDK."
  s.description      = <<-DESC
GDTMobSDK 广点通广告SDK。
DESC

  s.homepage         = "http://e.qq.com/dev/index.html"

  s.license          = {
    :type => "Copyright",
    :text => "Copyright 2017 Tencent Inc. All Rights Reserved."
  }

  s.authors          = { "nimomeng" => "nimomeng@tencent.com" }

  s.platform         = :ios, "9.0"

  s.source           = {
    :http => "https://maven.cxwlad.com/repository/atfo-sdk-static/Public/GDT/4.15.60.1/GDT_iOS_SDK.zip"
  }

  # === 关键修正：zip 解压后多一层目录 ===
  # 正确路径必须带上 zip 根目录名
  s.ios.vendored_libraries = "GDT_iOS_SDK/lib/*.a"
  s.ios.source_files       = "GDT_iOS_SDK/lib/*.h"
  s.ios.resources          = "GDT_iOS_SDK/lib/PrivacyInfo.xcprivacy"

  s.libraries              = ["z", "xml2", "sqlite3", "c++", "c++abi"]

  s.frameworks             = [
    "StoreKit",
    "Security",
    "CoreTelephony",
    "AdSupport",
    "CoreLocation",
    "QuartzCore",
    "SystemConfiguration",
    "AVFoundation",
    "JavaScriptCore"
  ]

  s.weak_frameworks        = "WebKit"

  s.requires_arc           = true

  s.pod_target_xcconfig    = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64"
  }

  s.user_target_xcconfig   = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64"
  }
end
