Pod::Spec.new do |s|
    s.name             = 'And'
    s.version          = '1.0.0'
    s.summary          = 'Syntactic sugar for Swift initializers'
    s.homepage         = 'https://github.com/donggyushin/And'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'donggyushin' => 'donggyu9410@gmail.com' }
    s.source           = { :git => 'https://github.com/donggyushin/And.git', :tag => s.version.to_s }
    s.ios.deployment_target = '12.0'
    s.swift_version = '5.5'
    s.source_files = 'Sources/And/**/*'
  end