Pod::Spec.new do |s|
    s.name                  = 'demomaps'
    s.version               = '0.0.5'

    s.homepage              = "https://github.com/sebastian989/demomaps"
    s.summary               = 'git@github.com:sebastian989/demomaps.git'

    s.author                = { 'S Gomez' => 'sebastiangomez989@gmail.com' }
    s.license               = { :type => "MIT", :file => "LICENSE" }

    s.platforms             = { :ios => '7.0' }
    s.ios.deployment_target = '7.0'

    s.source_files          = 'demomaps/*.{h,m}'
    s.module_name           = 'demomaps'
    s.source                = { :git => "https://github.com/sebastian989/demomaps.git", :tag => "0.0.5" }
    s.requires_arc          = true
    s.libraries             = "c++", "icucore", "z" # required for GoogleMaps.framework
    s.frameworks            = "AVFoundation", "CoreData", "CoreLocation", "CoreText", "Foundation", "GLKit", "ImageIO", "OpenGLES", "QuartzCore", "SystemConfiguration", "GoogleMaps"
    s.resource_bundles      = { 'GoogleMaps' => ['Pods/GoogleMaps/Frameworks/GoogleMaps.framework/Resources/*.bundle'] }
    s.vendored_frameworks   = "Dependencies/GoogleMaps.framework"

    s.resources             = ["demomaps/MapViewViewController.xib"]
    s.xcconfig              = { 'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/demomaps/Dependencies' }
    
end