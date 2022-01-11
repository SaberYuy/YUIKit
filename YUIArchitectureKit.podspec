#
# Be sure to run `pod lib lint YUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'YUIArchitectureKit'
s.version          = '0.1.4'
s.summary          = 'A short description of YUIKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage         = 'https://github.com/SaberYuy/YUIKit'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'SaberYuy' => '750874701@qq.com' }
s.source           = { :git => 'git@github.com:SaberYuy/YUIKit.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '10.0'
s.frameworks       = 'Foundation', 'UIKit'
# 组件源码文件配置路径
s.source_files = 'YUIKit/Classes/YUIArchitectureKit.h'
# 组件头文件
s.public_header_files = 'YUIKit/Classes/YUIArchitectureKit.h'

s.subspec 'YUIWeakObjectContainer' do |ss|
ss.source_files = 'YUIKit/Classes/YUIComponents/YUIWeakObjectContainer/YUIWeakObjectContainer.{h,m}'
end

s.subspec 'YUILog' do |ss|
ss.source_files = 'YUIKit/Classes/YUIComponents/YUILog/*.{h,m}'
end

s.subspec 'YUICore' do |ss|
ss.source_files =  'YUIKit/Classes/YUICore','YUIKit/Classes/YUICore/Extensions'
ss.dependency 'YUIArchitectureKit/YUIWeakObjectContainer'
ss.dependency 'YUIArchitectureKit/YUILog'
end

s.subspec 'YUIArchitecture' do |ss|

ss.source_files = 'YUIKit/Classes/YUIArchitecture/*.{h,m}',
ss.source_files = 'YUIKit/Classes/YUIArchitecture/*/*.{h,m}',
ss.source_files = 'YUIKit/Classes/YUIArchitecture/*/*/*.{h,m}',
ss.source_files = 'YUIKit/Classes/YUIArchitecture/*/*/*/*.{h,m}'
ss.dependency 'YUIArchitectureKit/YUIWeakObjectContainer'
ss.dependency 'YUIArchitectureKit/YUILog'
ss.dependency 'YUIArchitectureKit/YUICore'

end

# s.resource_bundles = {
#   'YUIKit' => ['YUIKit/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'

end
