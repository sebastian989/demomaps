Pod::Spec.new do |s|
    s.name                  = 'demomaps'
    s.version               = '0.0.2'

    s.homepage              = "git@github.com:sebastian989/demomaps.git"
    s.summary               = 'git@github.com:sebastian989/demomaps.git'

    s.author                = { 'S Gomez' => 'sebastiangomez989@gmail.com' }
    s.license               = { :type => "MIT", :file => "LICENSE" }
    s.platforms             = { :ios => '7.0' }
    s.ios.deployment_target = '7.0'

    s.source_files          = 'demomaps/*.{h,m}'
    s.module_name           = 'demomaps'
    s.source                = { :git => "git@github.com:sebastian989/demomaps.git", :tag => "0.0.2" }
    s.requires_arc          = true
    s.libraries             = "c++", "icucore", "z" # required for GoogleMaps.framework
    s.frameworks            = "AVFoundation", "CoreData", "CoreLocation", "CoreText", "Foundation", "GLKit", "ImageIO", "OpenGLES", "QuartzCore", "SystemConfiguration", "GoogleMaps"
    s.vendored_frameworks   = "Dependencies/GoogleMaps.framework" # Put the Google-provided framework in that subfolder of your Pod project
end