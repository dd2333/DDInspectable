
Pod::Spec.new do |s|

  s.name         = "DDInspectable"
  s.version      = "1.0"
  s.summary      = "Storyboard or xib plugin"

  s.description  = <<-DESC
                   A plugin for editing view properties. 
                   DESC

  s.homepage     = "https://github.com/dd2333"
 
  s.license      = "MIT"

  s.author             = { "dd2333" => "ice.phoenix.zh@gmail.com" }

  s.source       = { :git => "https://github.com/dd2333/DDViewInspectable.git", :tag => "#{s.version}" }

  s.source_files  = "DDInspectable", "DDInspectable/**/*.{h,m}"

  s.requires_arc = true

end
