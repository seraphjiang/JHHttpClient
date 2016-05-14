#
# Be sure to run `pod lib lint JHHttpClient.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JHHttpClient"
  s.version          = "0.0.4"
  s.summary          = "A swift HttpClient lib."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A swift HttpClient lib. on top of Alamofire, EVReflection
                       DESC

  s.homepage         = "https://github.com/seraphjiang/JHHttpClient"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "jianghuan" => "seraphjiang@gmail.com" }
  s.source           = { :git => "https://github.com/seraphjiang/JHHttpClient.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'JHHttpClient/Classes/**/*'
  
  # s.resource_bundles = {
  #   'JHHttpClient' => ['JHHttpClient/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.dependency "Alamofire"
  s.dependency "EVReflection"
  s.dependency 'AlamofireJsonToObjects'
end
