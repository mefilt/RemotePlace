# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'

# Ignore all warnings from all pods
inhibit_all_warnings!

use_frameworks!(true)

# Enable the stricter search paths and module map generation for all pods
# use_modular_headers!

# Pods for RemotePlace
target 'RemotePlace' do

    inherit! :search_paths

    # UI
    pod 'YandexMapKit'
    
    # Assisstant
    pod 'RxSwift'
    pod 'RxSwiftExt'
    pod 'RxOptional'
    pod 'RxGesture'
    pod 'RxFeedback'
    pod 'RxReachability'

    # External Service

    # pod 'Fabric'
    # pod 'Crashlytics'

    # Cache
    pod 'Kingfisher'

    # DB
    pod 'RealmSwift'
    pod 'RxRealm'

    # Network    
    pod 'Moya/RxSwift'

    # Gen
    pod 'SwiftGen', '~> 5.3.0'

    # Debug
    # pod 'Reveal-SDK', :configurations => ['Debug', 'Test']
    # pod 'AppSpectorSDK', :configurations => ['Debug', 'Test']
    # pod 'Sentry', :git => 'https://github.com/getsentry/sentry-cocoa.git'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        
        target.build_configurations.each do |config|

            config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = "YES"

            swift3_2pods = []

            if swift3_2pods.include? target.name
                config.build_settings['SWIFT_VERSION'] = '3.2'
            end
        end
        
    end
end
