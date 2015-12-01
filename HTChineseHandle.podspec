HTChineseHandle.podspec
Pod::Spec.new do |s|
  s.name         = "HTChineseHandle"
  s.version      = "1.0.0"
  s.summary      = "To get first letter of Chinese "

  s.homepage     = "https://github.com/youran1024/HTLetterManger"
  s.license      = 'MIT'
  s.author       = { "Mr.Yang" => "youran1024@163.com" }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/youran1024/HTLetterManger.git", :tag => s.version}
  s.source_files  = 'HTChineseHandle/*.{h,m}'
  s.requires_arc = true
end
