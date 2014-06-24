#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "sybil"
  s.version          = File.read('VERSION')
  s.summary          = "Sybil is an entity-oriented multi-type Objective-C framework"
  s.description      = <<-DESC
                       An optional longer description of sybil

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "http://github.com/wildthink/sybil"
#s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'LGPL'
  s.author           = { "Jason Jobe" => "box14@jasonjobe.com" }
  s.source           = { :git => "https://github.com/wildthink/sybil.git", :tag => s.version.to_s }
#  s.social_media_url = 'https://twitter.com/EXAMPLE'

  # s.platform     = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.8'
  s.requires_arc = true

  s.source_files = 'Classes'
#  s.resources = 'Assets/*.png'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  # s.dependency 'JSONKit', '~> 1.4'
end
