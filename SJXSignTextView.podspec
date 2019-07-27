Pod::Spec.new do |spec|

  spec.name 		= "SJXSignTextView"
  spec.version      	= "1.0.2"
  spec.summary      	= "斜向文字标签"
  spec.description  	= "在方形的View中自定义左上角或右上角的斜向文字标签"
  spec.homepage     	= "https://github.com/sjxjjx/SJXSignTextView"
  # spec.license      	= "MIT (example)"
  spec.license      	= { :type => "MIT", :file => "LICENSE" }
  spec.author		= { "兔·小白" => "sjxjjx@163.com" }
  spec.platform     	= :ios, "9.0"
  spec.source       	= { :git => "https://github.com/sjxjjx/SJXSignTextView.git", :tag => "#{spec.version}" }
  spec.source_files  	= "SJXSignTextView/*.{h,m}"
  
  # spec.resource  	= "icon.png"
  # spec.resources 	= "Resources/*.png"
  spec.requires_arc 	= true

end
