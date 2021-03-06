Pod::Spec.new do |s|
  s.name     = 'MWPhotoBrowser'
  s.version  = '1.1.3'
  s.license  = 'MIT'
  s.summary  = 'A simple iOS photo browser.'
  s.homepage = 'https://github.com/mwaterfall/MWPhotoBrowser'
  s.author   = { 'Michael Waterfall' => 'mw@d3i.com' }
  s.source   = { :git => 'https://github.com/pilot34/MWPhotoBrowser.git' }
  s.platform = :ios, '5.0'
  
  s.subspec 'ARC' do |arc|
    arc.source_files = 'MWPhotoBrowser/Classes/*.{h,m}'
    arc.requires_arc = true
  end
  
  s.resources = "MWPhotoBrowser/MWPhotoBrowser.bundle"

  s.frameworks = 'MessageUI', 'ImageIO', 'QuartzCore', 'AssetsLibrary'

  s.dependency 'SDWebImage'
  s.dependency 'MBProgressHUD'
  s.dependency 'DACircularProgress'
end
