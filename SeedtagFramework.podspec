Pod::Spec.new do |s|
    s.name         = "SeedtagFramework"
    s.version      = "1.0.0"
    s.summary      = "Seedtag SDK for iOS."
    s.description  = <<-DESC
    Seedtag native SDK for iOS apps.
    DESC
    s.homepage     = "https://github.com/seedtag/seedtag-ios-sdk-examples"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2021
                   Permission is granted to Seedtag.
                  LICENSE
                }
    s.author             = { "Seedtag" => "cristinaarias@seedtag.com" }
    s.source       = { :git => 'https://github.com/seedtag/seedtag-ios-sdk-examples.git', :tag => s.version }
    s.vendored_frameworks = "SeedtagFramework.xcframework"
    s.platform = :ios
    s.swift_version = '5'
    s.ios.deployment_target  = '11'
    s.dependency 'OMSDK_Seedtag', '1.0.1'
end