require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "lottie-react-native-gai"
  s.version      = package['version']
  s.summary      = "Lottie component for React Native (iOS and Android)"

  s.authors      = { "intelligibabble" => "leland.m.richardson@gmail.com" }
  s.homepage     = "https://github.com/normanzb/lottie-react-native-gai/#readme"
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/normanzb/lottie-react-native-gai.git", :tag => "v#{s.version}" }
  s.source_files  = "src/ios/**/*.{h,m,swift}"
  s.swift_version = "5.0"
  s.dependency 'React'
  s.dependency 'lottie-ios', '~> 2.5.0'
end
