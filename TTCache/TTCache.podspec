Pod::Spec.new do |s|
  s.name     = 'TTCache'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS cache framework.'
  s.homepage = 'https://github.com/shutefeng/Seya'
  s.authors  = { 'TT' => '654974034@qq.com' }
  s.source   = { :git => 'git@github.com:shutefeng/Seya.git', :tag => s.version, :submodules => true }
  s.requires_arc = true
  
  
  s.ios.deployment_target = '8.0'
  
  s.subspec 'source' do |ss|

    ss.public_header_files = 'Classes/*.h'
    ss.source_files = 'Classes/*.{h,m}'
    
  end

  s.subspec 'framework' do |ss|

    ss.public_header_files = 'Libs/TTCache.framework/Headers/*.h'
    ss.ios.vendored_frameworks = 'Libs/TTCache.framework'
    
  end

end