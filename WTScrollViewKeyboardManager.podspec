Pod::Spec.new do |s|
  s.name         = "WTScrollViewKeyboardManager"
  s.version      = "0.0.1"
  s.summary      = "A class to manage scroll view content and scroll indicator insets when the keyboard appears and disappears."
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = "Andrew Carter", "WillowTree Apps"
  s.homepage     = "https://github.com/willowtreeapps/WTScrollViewKeyboardManager"
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/willowtreeapps/WTScrollViewKeyboardManager.git", :commit => "34b9e951c646be37632503a1758831d96ccb89b1" }
  s.source_files  = 'WTScrollViewKeyboardManager/WTScrollViewKeyboardManager.{h,m}'
  s.requires_arc = true
end
