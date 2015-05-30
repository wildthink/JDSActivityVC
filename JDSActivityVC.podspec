Pod::Spec.new do |s|
  s.name         = "JDSActivityVC"
  s.version      = "0.4.3"
  s.summary      = "JDSActivityViewController is a lightweight UIActivityViewController subclass,
  which can be configured to display a URL to be shared."
  s.description  = " This was inspired by Tweetbot and Tumblr's usage of this customization. I wanted to create my own version and open source it :) Feel free to make pull requests!"
  s.homepage     = "https://github.com/Jasdev/JDSActivityVC"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author    = "Jasdev Singh"
  s.social_media_url   = "http://twitter.com/jasdev"

  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Jasdev/JDSActivityVC.git", :tag => s.version.to_s }
  s.source_files  = "*.swift"
  s.requires_arc = true
end
