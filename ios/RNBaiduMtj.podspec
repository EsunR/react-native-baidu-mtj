
Pod::Spec.new do |s|
  s.name         = "RNBaiduMtj"
  s.version      = "2.0.6"
  s.summary      = "RNBaiduMtj"
  s.description  = <<-DESC
                  RNBaiduMtj
                   DESC
  s.homepage     = "https://www.npmjs.com/package/react-native-baidu-mtj"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/EsunR/react-native-baidu-mtj.git", :tag => "master" }
  s.source_files  = "**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "BaiduMobStatCodeless"
end

  