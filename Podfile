# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'OpenHeavens2017' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  platform :ios, '10.0'
  pod 'Alamofire', '~> 4.0'
  pod 'IQKeyboardManagerSwift', '4.0.6'

  # Pods for OpenHeavens2017

  target 'OpenHeavens2017Tests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'OpenHeavens2017UITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end
