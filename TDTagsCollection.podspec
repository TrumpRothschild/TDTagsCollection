#
# Be sure to run `pod lib lint TDTagsCollection.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TDTagsCollection'
  s.version          = '0.1.0'
  s.summary          = 'TDTagsCollection is achieve tags collection View,This is very good SDK. '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       TDTagCollection is useful for showing different size tag views in a vertical or horizontal scrollable view and support Autolayout intrinsicContentSize at the same time. And if you only want to show text tags, you can use TDTextTagCollectionView instead, which has more simple api. At the same time, It is highly customizable that many features of the text tag can be configured, like the tag font size and the background color.
                       DESC

  s.homepage         = 'https://github.com/TrumpRothschild/TDTagsCollection'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TrumpRothschild' => '184889355@qq.com' }
  s.source           = { :git => 'git@github.com:TrumpRothschild/TDTagsCollection.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'TDTagsCollection/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TDTagsCollection' => ['TDTagsCollection/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
