Pod::Spec.new do |s|

  s.name             = "SKPanoramaView"
  s.version          = "0.1.1"
  s.summary          = "Create beautiful animated panorama views. Inspired by the intro view on the LinkedIn iOS app. "
  s.homepage         = "https://github.com/sachinkesiraju/SKPanoramaView"
  s.license          = { :type => 'MIT', :text => 'Copyright 2014 Sachin Kesiraju' }
  s.author           = { "Sachin Kesiraju" => "me@sachinkesiraju.com" }
  s.source           = { :git => "https://github.com/sachinkesiraju/SKPanoramaView.git", :tag => '0.1.1'}
  s.social_media_url = "https://twitter.com/sachinkesiraju"
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'SKPanoramaView'

end
