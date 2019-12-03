Pod::Spec.new do |s|
  s.name         = "iOS_moudle_hbUIBase"
  s.version      = "1.0.0"
  s.summary      = "幻熊基础UI库文件"
  s.homepage     = "https://github.com/halobear/iOS_moudle_hbUIBase.git"
  s.license      = "MIT"
  s.author       = { "liujidan" => "liujidanjob@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/halobear/iOS_moudle_hbUIBase.git", :tag => "#{s.version}" }
  s.requires_arc = true
  s.source_files = "HBUIBase/*.{h,m}"
  s.dependency "MJRefresh"
  s.resource_bundles = {
    'MBProgressHUD' => ['HBUIBase/Assets/*.xcassets']
  }
end
