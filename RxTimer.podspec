#
# Be sure to run `pod lib lint RxTimer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxTimer'
  s.version          = '1.0'
  s.summary          = 'RxTimer adds RxSwift NSTimer bindings.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
RxTimer adds RxSwift NSTimer bindings.
                       DESC

  s.homepage         = 'https://github.com/ivanbruel/RxTimer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ivan Bruel' => 'ivan.bruel@gmail.com' }
  s.source           = { :git => 'https://github.com/ivanbruel/RxTimer.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ivanbruel'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RxTimer/Classes/**/*'

  s.dependency 'RxSwift', '~> 2.6'
end
