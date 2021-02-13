Pod::Spec.new do |s|
 
s.platform = :ios
s.ios.deployment_target = '14.0'
s.name = "FoodDetailModule"
s.summary = "FoodDetailModule.framework for modularization chapter"
s.requires_arc = true
 
s.version = "1.0.0"
 
s.license = { :type => "MIT", :file => "LICENSE" }
 
s.author = { "Aldo Vernando" => "aldo.vernando@gmail.com" }
 
s.homepage = "https://github.com/AldoVernando/FoodDetailModuleLib"
 
s.source = { :git => "https://github.com/AldoVernando/FoodDetailModuleLib.git",
:tag => "#{s.version}" }
 
s.framework = "UIKit"
 
s.source_files = "FoodDetailModule/**/*.{swift}"
s.dependency 'Alamofire'
s.dependency 'RealmSwift'
s.dependency 'SDWebImage'
s.dependency 'RxSwift'
 
#s.resources = "Core/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
 
s.swift_version = "5.1"
 
end
