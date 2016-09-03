Pod::Spec.new do |s|
  s.name     = 'Seya'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS cache framework.'
  s.homepage = 'https://github.com/shutefeng/Seya'
  s.authors  = { 'TT' => '654974034@qq.com' }
  s.source   = { :git => 'git@github.com:shutefeng/Seya.git', :tag => s.version, :submodules => true }
  s.requires_arc = true
  
  
  s.ios.deployment_target = '8.0'
  

  s.default_subspec = 'default'

  # 默认使用的 subspec
  s.subspec 'default' do |ss|

    ss.dependency 'Seya/source'
    
  end

  # 使用 代码编译
  s.subspec 'source' do |ss|

    ss.dependency 'Seya/TTCache.source'
    
  end

  # 使用 framework 动态库
  s.subspec 'framework' do |ss|

    ss.dependency 'Seya/TTCache.framework'
    
  end

  s.subspec 'TTCache.source' do |ss|

    ss.public_header_files = 'TTCache/Classes/*.h'
    ss.source_files = 'TTCache/Classes/*.{h,m}'
    
  end

  s.subspec 'TTCache.framework' do |ss|

    ss.public_header_files = 'TTCache/Libs/TTCache.framework/Headers/*.h'
    ss.ios.vendored_frameworks = 'TTCache/Libs/TTCache.framework'
    
  end

end