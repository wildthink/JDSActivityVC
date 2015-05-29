Pod::Spec.new do |s|
  s.name         = "JDSActivityViewController"
  s.version      = "0.1"
  s.summary      = "JDSActivityViewController is a small UIActivityViewController subclass which can be configured to display a URL to be shared. This was inspired by Tweetbot and Tumblr's usage of this paradigm."
  s.homepage     = "https://github.com/Jasdev/JDSActivityViewController"
  # s.screenshots  = "www.example.com/screenshots_1.gif",
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author    = "Jasdev Singh"
  s.social_media_url   = "http://twitter.com/jasdev"

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/Jasdev/JDSActivityViewController.git", :tag => "0.1" }
  s.source_files  = "*.{swift}"
  s.requires_arc = true
end
