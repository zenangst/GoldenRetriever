Pod::Spec.new do |s|
  s.name             = "GoldenRetriever"
  s.summary          = "A short description of GoldenRetriever."
  s.version          = "0.1.1"
  s.homepage         = "https://github.com/zenangst/GoldenRetriever"
  s.license          = 'MIT'
  s.author           = { "Christoffer Winterkvist" => "chris@zenangst.com" }
  s.source           = { :git => "https://github.com/zenangst/GoldenRetriever.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/zenangst'
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'Source/**/*'
end
